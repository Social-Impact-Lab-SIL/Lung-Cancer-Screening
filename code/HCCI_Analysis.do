clear

********************************************************************************
/*Frequencies needed for narrative and Table 1 sample characteristics*/
********************************************************************************
**********************
/*Overall sample*/
**********************
use "$data/den_cost_mbr_combined_all_lung.dta", clear

*******Patient-years in Overall Sample********
count
ta newlytx, missing
ta sex, missing
ta insurance, missing
ta rel_cd, missing

tab tobdx if newlytx == 1 & yr == 2022, missing
tab tobdx if newlytx == 0 & yr == 2022, missing

/*Crosstabs*/
ta sex newlytx, missing
ta insurance newlytx, missing
ta rel_cd newlytx, missing

*Mean # months enrolled across whole study period while in age range, by unique patient
preserve
duplicates drop z_patid, force
******Patients in Overall Sample********
count
tabstat totmonths, statistics(n mean sd)
tab totmonths, missing
restore


**********************
/*TOBACCO ONLY sample*/
**********************

*******Patient-years in Tobacco Only Sample********
count if tobdx == 1
ta newlytx if tobdx==1, missing
ta sex if tobdx==1, missing
ta insurance if tobdx==1, missing
ta rel_cd if tobdx==1, missing

/*Crosstabs*/
ta sex newlytx if tobdx==1, missing chi2 row col
ta insurance newlytx if tobdx==1, missing chi2 row col
ta rel_cd newlytx if tobdx==1, missing chi2 row col

*Mean # months enrolled across whole study period while in age range, by unique patient, compared by always/newly treated
preserve
duplicates drop z_patid, force
******Patients in Tobacco Sample********
tabstat totmonths if tobdx==1, statistics(n mean sd)
tabstat totmonths if tobdx==1, statistics(n mean sd) by(newlytx)
ttest totmonths if tobdx==1, by(newlytx)
restore


***********************************************
*Figure 1 - Full Sample
***********************************************
use "summary_total.dta", clear

twoway  (line total_percent yr if newlytx == 1, color(blue) lpattern(solid)) ///
        (line total_percent yr if newlytx == 0, color(orange) lpattern(dash)), ///
        ytitle("% Patient-years with LDCT claims", size(small)) ///
        legend(ring(0) order(1 "51-54 years" 2 "56-64 years") size(medsmall) cols(1) position(11)) ///
        xtitle("Year") xscale(titlegap(*10)) graphregion(color(white)) ///
        xlabel(2016(1)2022) xline(2020.5)

*Export raw #s to Excel for 2016-2019 vs 2022 comparison
export excel yr newlytx total_num total_denom total_percent using "${output}/full_sample.xlsx", firstrow(variables) replace



***********************************************
*Figure 2 - Tobacco Sample
***********************************************
use "summary.dta", clear

preserve

/*COUNTS OF CLAIMS*/
/*ALL 4 LINES*/
twoway (line tot_5154_tot_per yr, ytitle("% Patient-years with LDCT claims", size(small)) ///
        xtitle("Year") xscale(titlegap(*10)) graphregion(color(white)) color(blue) lpattern(solid) ///
        xline(2020.5) xlabel(2016(1)2022) ///
        ylabel(0(1)7)) ///
    || line tot_5664_tot_per yr, color(orange) lpattern(dash) ///
    , legend(ring(0) order(1 "51-54 years" 2 "56-64 years") size(medsmall) cols(1) position(11))

restore


***********************************************
*Exporting Raw #s
***********************************************
*Export raw #s to Excel for graph
format tot_5154_tot_per %9.3f
format tot_5664_tot_per %9.3f

export excel yr tot_5154_tot_denom tot_5664_tot_denom tot_5154_tot_num tot_5664_tot_num ///
    tot_5154_tot_per tot_5664_tot_per using "${output}/LDCTGraph.xlsx", firstrow(variables) replace

*Export raw #s to Excel for 2016-2019 vs 2022 comparison
export excel yr ///
    tot_5154_tot_denom tot_5664_tot_denom ///
    tot_5154_f_denom tot_5664_f_denom ///
    tot_5154_m_denom tot_5664_m_denom ///
    tot_5154_hmo_epo_pos_denom tot_5664_hmo_epo_pos_denom ///
    tot_5154_ppo_ind_denom tot_5664_ppo_ind_denom ///
    using "${output}/LDCTYcompDenom.xlsx", firstrow(variables) replace

export excel yr ///
    tot_5154_tot_num tot_5664_tot_num ///
    tot_5154_f_num tot_5664_f_num ///
    tot_5154_m_num tot_5664_m_num ///
    tot_5154_hmo_epo_pos_num tot_5664_hmo_epo_pos_num ///
    tot_5154_ppo_ind_num tot_5664_ppo_ind_num ///
    using "${output}/LDCTYcompNum.xlsx", firstrow(variables) replace

export excel yr ///
    tot_5154_tot_per tot_5664_tot_per ///
    tot_5154_f_per tot_5664_f_per ///
    tot_5154_m_per tot_5664_m_per ///
    tot_5154_hmo_epo_pos_per tot_5664_hmo_epo_pos_per ///
    tot_5154_ppo_ind_per tot_5664_ppo_ind_per ///
    using "${output}/LDCTYcompPer.xlsx", firstrow(variables) replace



*********************
*Test of proportions
*********************
*Full Sample 51-54
prtesti 1711727 8028 8649923 1039 , count
scalar diff_full_treat = r(P_diff)
scalar se_full_treat   = r(se_diff)

*Full Sample 56-64
prtesti 3749787 54236 18921796 108167, count
scalar diff_full_control = r(P_diff)
scalar se_full_control   = r(se_diff)

*Did Estimate 
scalar did_full = 100 * (diff_full_treat-diff_full_control)
scalar se_full = 100*(sqrt(se_full_treat^2 + se_full_control^2))
scalar p_full = 2*(1-normal(abs(did_full/se_full)))

display did_full se_full
display p_full


*Tobacco Sample 51-54
prtesti 312511 7924 1962213 963, count
scalar diff_tobacco_treat = r(P_diff)
scalar se_tobacco_treat = r(se_diff)

*Tobacco Sample 56-64
prtesti 835783 53757 4952063 107403 , count
scalar diff_tobacco_control = r(P_diff)
scalar se_tobacco_control = r(se_diff)

scalar did_tobacco = 100*(diff_tobacco_treat - diff_tobacco_control)
scalar se_tobacco = 100*(sqrt(se_tobacco_treat^2 + se_tobacco_control^2))
scalar p_tobacco = 2*(1-normal(abs(did_tobacco/se_tobacco)))
display did_tobacco se_tobacco
display p_tobacco

*FEMALE 56-64
prtesti 402558 26187 2368832 50446, count
scalar diff_female_control = r(P_diff)
scalar se_female_control = r(se_diff)
display diff_female_control se_female_control

*female 51-54
prtesti 149052 3751 979855 460, count
scalar diff_female_treat = r(P_diff)
scalar se_female_treat = r(se_diff)

display diff_female_treat diff_female_control

scalar did_female = 100*(diff_female_treat - diff_female_control)
scalar se_female = 100*(sqrt(se_female_treat^2 + se_female_control^2))
scalar p_female = 2*(1-normal(abs(did_female/se_female)))
display did_female se_female
display p_female

*MALE 56-64
prtesti 433225 27570 2583231 56957, count
scalar diff_male_control = r(P_diff)
scalar se_male_control = r(se_diff)

*male 51-54
prtesti 163459 4173 982358 503 , count
scalar diff_male_treat = r(P_diff)
scalar se_male_treat = r(se_diff)

display diff_male_treat diff_male_control

scalar did_male = 100*(diff_male_treat - diff_male_control)
scalar se_male = 100*(sqrt(se_male_treat^2 + se_male_control^2))
scalar p_male = 2*(1-normal(abs(did_male/se_male)))
display did_male se_male
display p_male

*HMO/EPO/POS 56-64
prtesti 261210 16177 1728892 38796, count
scalar diff_hmo_control = r(P_diff)
scalar se_hmo_control = r(se_diff)

*HMO/EPO/POS 51-54
prtesti 95605 2313 666332 272 , count
scalar diff_hmo_treat = r(P_diff)
scalar se_hmo_treat = r(se_diff)

display diff_hmo_treat diff_hmo_control

scalar did_hmo = 100*(diff_hmo_treat - diff_hmo_control)
scalar se_hmo = 100*(sqrt(se_hmo_treat^2 + se_hmo_control^2))
scalar p_hmo = 2*(1-normal(abs(did_hmo/se_hmo)))
display did_hmo se_hmo
display p_hmo

*PPO/IND 56-64
prtesti 574495 37580 3221913 68574 , count
scalar diff_ppo_control = r(P_diff)
scalar se_ppo_control = r(se_diff)

*PPO/IND 51-54
prtesti 216896 5611 1295393 691 , count
scalar diff_ppo_treat = r(P_diff)
scalar se_ppo_treat = r(se_diff)

display diff_ppo_treat diff_ppo_control

scalar did_ppo = 100*(diff_ppo_treat - diff_ppo_control)
scalar se_ppo = 100*(sqrt(se_ppo_treat^2 + se_ppo_control^2))
scalar p_ppo = 2*(1-normal(abs(did_ppo/se_ppo)))
display did_ppo se_ppo
display p_ppo

