********************************************************************************
*****Make numerator file: append phys, inp, & OP claims, collapse to single pt-months
********************************************************************************
/*Let's look at claims with more than 1 obs across the 3 files. Append everything*/

use phys_lung_det.dta, clear
gen file="phys"
save "$temp/tempPHYS.dta", replace

use inp_lung_det.dta, clear
gen file="inp"
save "$temp/tempINP.dta", replace

use op_lung_det.dta, clear
gen file="op"
append using "$temp/tempINP.dta"
append using "$temp/tempPHYS.dta"
save "physopappended.dta", replace


/*What do total costs look like for people with 1 vs 2 claims in a month? */
use "physopappended.dta", clear
gen obs=1
gen op=0
replace op=1 if file=="op"
gen phys=0
replace phys=1 if file=="phys"
gen inp=0
replace inp=1 if file=="inp"

* drop year 2014 and 2015
drop if yr== "2014" | yr == "2015"
ta yr, missing
tab file, missing
destring yr, replace
rename eligibility_month eligibility_month

*Add in/out network variable. On collapse, we want to have it take the value of out of network if there's any out of network for the month.
destring ntwrk_ind, replace
ta ntwrk_ind, missing

collapse (count) obs (sum) amt_net_paid coins copay deduct calc_allwd tot_mem_cs ///
    (max) hasop=op hasphys=phys hasinp=inp outntwrk=ntwrk_ind, by(z_patid yr mnth)
ta obs 

foreach x in amt_net_paid coins copay deduct calc_allwd tot_mem_cs {
    rename `x' `x'_LDCT
}

/*THIS FILE IS MY NUMERATOR at the YEAR MONTH level (for graphs etc) BEFORE eligibility exclusions (i.e. by age, insurance etc)*/
save "physop_ym.dta", replace


/*THIS FILE IS MY NUMERATOR at the YEAR level (for counts)*/
collapse (sum) obs amt_net_paid_LDCT coins_LDCT copay_LDCT deduct_LDCT calc_allwd_LDCT tot_mem_cs_LDCT ///
    (max) hasop hasphys outntwrk, by(z_patid yr)

save "physop_y.dta", replace




****************************************************************************************
********************************Set up flags for full denominator sample**********************************
 * This should be everyone age 50-64 in the member file at the patient/year level
 *Var list:  z_patid yr sum_deduct_pay total_allowed total_net_paid total_member_paid member_deduct allowed_alldeduct allowed_member_cost total_claims_any_net_paid total_claims_any_member_paid sex ybirth eligbility_month rel_cd mbr_cbsa mbr_state prod fi_flg hdhp hdhp_yes age male female factor total_allowed_adj


use "$data/den_cost_mbr_combined_all.dta", clear
count
destring yr, replace
drop if yr<2016
ta yr, missing
count 

 **Drop people at age cutoff**
drop if age == 50 | age == 55
count
preserve 
*Number of beneficaries in initial sample 
duplicates drop z_patid, force 
count 
restore

**Remove people where sex is not reported**
drop if sex == ""
preserve 
*Number of beneficaries in new sample after droping unknown sex - 940 individuals dropped
duplicates drop z_patid, force 
count 
restore
 
**Keep only if we observe full year**
keep if eligbility_month == 12
count 
preserve 
*Number of beneficaries after droping partially observed years
duplicates drop z_patid, force 
count 
restore

*Make flags for always and newly treated ages
gen newlytx=.
replace newlytx=0 if age>55& age<65
replace newlytx = 1 if age<55 & age>50
ta age newlytx, missing


*Insurance type
ta prod, missing
*Group the smallest categories
gen insurance=prod

*Member type
ta rel_cd, missing

*Average # enrollment months 
bysort z_patid: egen totmonths=total(eligbility_month)
tab totmonths
count

*Merge on tobacco status
merge m:1 z_patid using "$data/first_tob.dta", keepusing(tob_diag_yr)
drop if _merge==2
drop _merge

*Merge on lung CA dx status
merge m:1 z_patid using "$data/first_lungdx.dta", keepusing(lung_diag_yr)
drop if _merge==2
drop _merge

destring tob_diag_yr, replace 

gen tobdx=1 if !missing(tob_diag_yr) 
gen lungdx=1 if !missing(lung_diag_yr)

ta tobdx
ta tob_diag_yr tobdx, missing
ta lung_diag_yr lungdx, missing

*fix typo
rename eligbility_month eligibility_month


*Denom vars - label to keep them straight - these are all based on variables from Ben's "appended_spending" which I think are all positive claims of any type across phys, OP, INP collapsed at patient/year
label var sum_deduct_pay "Deductible, total for all claims (pt/yr)" 
label var total_allowed  "Plan payment + member cost-share, total for all claims (pt/yr)"
label var total_allowed_adj "Plan payment + member cost-share, total for all claims (inflation adjusted) (pt/yr)"
note: label truncated to 80 characters
label var total_net_paid "$ paid to provider, total for all claims (pt/yr)"
label var total_member_paid "Member OOP, total for all claims (pt/yr)"
label var member_deduct "# all claims with pos deductible (pt/yr)"  
label var allowed_alldeduct "# all claims where plan payment + member costshare = deductible ?? (pt/yr)"
label var allowed_member_cost "# all claims where plan payment + member costshare = OOP ?? (pt/yr)"
label var total_claims_any_net_paid "# all claims with pos amt paid to provider (pt/yr)"
label var total_claims_any_member_paid "# all claims with with any OOP (pt/yr)"
label var insurance "Insurance type (4 cats)"


save "$data/den_cost_mbr_combined_all_lung.dta", replace


********************************************************************************
***Get all numerator counts: YEAR LEVEL
********************************************************************************

use "physop_y.dta", clear 
destring yr, replace

merge m:1 z_patid using "$data/first_tob.dta"
drop if _merge==2
destring tob_diag_yr, replace
gen tobdx=1 if _merge==3
drop _merge

merge m:1 z_patid using "$data/first_lungdx.dta", keepusing(lung_diag_yr)
drop if _merge==2
gen lungdx=1 if _merge==3
label var lungdx "Any lung CA dx?"
drop _merge

destring yr, replace
merge m:1 z_patid yr using "$data/den_cost_mbr_combined_all_lung.dta", keep(match)
drop _merge


*Label variables to keep all the $ variables esp straight
*Num vars
label var obs "# LDCT claims in year"
label var amt_net_paid_LDCT "$ paid to provider for LDCT (tot all claims in year)"
label var coins_LDCT "Coinsurance for LDCT (tot all claims in year)"
label var copay_LDCT "Copay for LDCT (tot all claims in year)"
label var deduct_LDCT "$ applied to deductible for LDCT (tot all claims in year)"
label var calc_allwd_LDCT "Plan payment + member costshare for LDCT (AMT_NET_PAID + COINS + COPAY + DEDUCT) (tot all claims in year)"
label var tot_mem_cs_LDCT "Member OOP for LDCT (COINS + COPAY + DEDUCT) (tot all claims in year)"

recode outntwrk (1=0) (2=1)
ta outntwrk, missing
label define outntwrk 0 "In network" 1 "Out of network"
label values outntwrk outntwrk
label var outntwrk "Out of network services"

save "physop_y_analytic.dta", replace


********************************************************************************
********Visualize basic utilization trends - Numerator only - YEAR LEVEL - collapse by group
********************************************************************************

use "physop_y_analytic.dta", clear

*Get summary count of patient-years with a LDCT claim for each group of interest.

gen num=1

preserve
*Create numerator for total sample (tobacco and non-tobacco)
collapse (sum) total_num = num, by(newlytx yr)
save total_num.dta, replace
restore

drop female
gen female = 0 if sex=="M"
replace female = 1 if sex=="F"

gen ins_num=.
replace ins_num=1 if insurance=="PPO" | insurance == "IND"
replace ins_num=2 if insurance =="HMO" | insurance == "EPO" | insurance == "POS"
ta insurance ins_num, missing

foreach tx in 5154 5664 {
    if "`tx'"=="5154" {
        local txcomm "newlytx==1"
    }
    else {
        local txcomm "newlytx==0"
    }

    display "`tx'"
    ta yr female if `txcomm', missing
    ta yr insurance if `txcomm', missing
}


foreach group in tot f m ppo_ind hmo_epo_pos {
    if "`group'"=="tot" {
        local groupcomm ""
    }
    else if "`group'"=="f" {
        local groupcomm "& female==1"
    }
    else if "`group'"=="m" {
        local groupcomm "& female==0"
    }
    else if "`group'"=="ppo_ind" {
        local groupcomm "& ins_num==1"
    }
    else if "`group'"=="hmo_epo_pos" {
        local groupcomm "& ins_num==2"
    }

    foreach tx in 5154 5664 {
        if "`tx'"=="5154" {
            local txcomm "newlytx==1"
        }
        else {
            local txcomm "newlytx==0"
        }

        preserve
        collapse (sum) tot_`tx'_`group'=num if `txcomm' `groupcomm' & tobdx==1, by(yr)
        save "`group'_`tx'_num.dta", replace
        restore
    }
}

*Merge everything
use "tot_5154_num.dta", clear
merge 1:1 yr using "tot_5664_num.dta"
drop _merge

merge 1:1 yr using "f_5154_num.dta"
drop _merge
merge 1:1 yr using "f_5664_num.dta"
drop _merge

merge 1:1 yr using "m_5154_num.dta"
drop _merge
merge 1:1 yr using "m_5664_num.dta"
drop _merge

merge 1:1 yr using "ppo_ind_5154_num.dta"
drop _merge
merge 1:1 yr using "ppo_ind_5664_num.dta"
drop _merge

merge 1:1 yr using "hmo_epo_pos_5154_num.dta"
drop _merge
merge 1:1 yr using "hmo_epo_pos_5664_num.dta"
drop _merge

rename * * _num
rename yr_num yr

save "LDCTnum_y.dta", replace

********************************************************************************
*Denominator - collapse by group - for year-level utilization
********************************************************************************

use "$data/den_cost_mbr_combined_all_lung.dta", clear

gen num=1

preserve
*Create denominator for total sample (tobacco and non-tobacco)
collapse (sum) total_denom = num, by(newlytx yr)
save total_denom.dta, replace
restore

drop female
gen female = 0 if sex=="M"
replace female = 1 if sex=="F"

gen ins_num=.
replace ins_num=1 if insurance=="PPO" | insurance == "IND"
replace ins_num=2 if insurance=="HMO" | insurance=="EPO" | insurance=="POS"
ta insurance ins_num, missing

foreach tx in 5154 5664 {
    if "`tx'"=="5154" {
        local txcomm "newlytx==1"
    }
    else {
        local txcomm "newlytx==0"
    }

    display "`tx'"
    ta yr female if `txcomm', missing
    ta yr insurance if `txcomm', missing
}

foreach group in tot f m ppo_ind hmo_epo_pos {
    if "`group'"=="tot" {
        local groupcomm ""
    }
    else if "`group'"=="f" {
        local groupcomm "& female==1"
    }
    else if "`group'"=="m" {
        local groupcomm "& female==0"
    }
    else if "`group'"=="ppo_ind" {
        local groupcomm "& ins_num==1"
    }
    else if "`group'"=="hmo_epo_pos" {
        local groupcomm "& ins_num==2"
    }

    foreach tx in 5154 5664 {
        if "`tx'"=="5154" {
            local txcomm "newlytx==1"
        }
        else {
            local txcomm "newlytx==0"
        }

        preserve
        collapse (sum) tot_`tx'_`group' = num if `txcomm' `groupcomm' & tobdx==1, by(yr)
        save "`group'_`tx'_denom.dta", replace
        restore
    }
}

*Merge everything
use "tot_5154_denom.dta", clear
merge 1:1 yr using "tot_5664_denom.dta"
drop _merge
merge 1:1 yr using "f_5154_denom.dta"
drop _merge
merge 1:1 yr using "f_5664_denom.dta"
drop _merge
merge 1:1 yr using "m_5154_denom.dta"
drop _merge
merge 1:1 yr using "m_5664_denom.dta"
drop _merge
merge 1:1 yr using "ppo_ind_5154_denom.dta"
drop _merge
merge 1:1 yr using "ppo_ind_5664_denom.dta"
drop _merge
merge 1:1 yr using "hmo_epo_pos_5154_denom.dta"
drop _merge
merge 1:1 yr using "hmo_epo_pos_5664_denom.dta"
drop _merge

rename * *_denom
rename yr_denom yr

save "LDCTdenom_y.dta", replace

merge 1:1 yr using "LDCTnum_y.dta"
drop _merge

foreach x in tot_5154_tot tot_5664_tot tot_5154_f tot_5664_f  tot_5154_m tot_5664_m  tot_5154_ppo_ind tot_5664_ppo_ind tot_5154_hmo_epo_pos tot_5664_hmo_epo_pos {

    gen `x'_per = `x'_num / `x'_denom
}

*Probably easier to multiply percentages by 100
foreach x in tot_5154_tot_per tot_5664_tot_per tot_5154_f_per tot_5664_f_per tot_5154_m_per tot_5664_m_per tot_5154_ppo_ind_per tot_5664_ppo_ind_per tot_5154_hmo_epo_pos_per tot_5664_hmo_epo_pos_per {

    replace `x' = `x' * 100
}

replace tot_5154_tot_per = . if yr == 2016

save "summary.dta", replace


use total_num.dta, clear
merge 1:1 newlytx yr using total_denom.dta
gen total_percent = total_num / total_denom * 100

save "summary_total.dta", replace
