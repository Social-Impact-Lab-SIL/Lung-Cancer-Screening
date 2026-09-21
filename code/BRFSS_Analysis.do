clear all

* Load 2022 BRFSS public-use data
import sasxport5 "../data/LLCP2022.XPT", clear

tab _age80, missing
drop if _age80 < 51 | _age80 > 64
drop if _age80 == 55

*Restrict to Employer/Union Sponsered Privately Insured
tab priminsr, missing
keep if priminsr == 1

*Restrict to those that who've visited doctor in previous year
tab checkup1, missing
keep if checkup1 == 1

//*Restrict to those who responded to whether or not they recieved a CT scan. 
//tab dispcode if lcsctsc1 == ., missing
tab lcsctsc1, missing
//keep if lcsctsc1 == 1 | lcsctsc1 == 2

tab smoke100, missing
* Restrict to respondents with known smoking status
keep if smoke100 == 1 | smoke100 == 2

tab _packyrs, missing
tab _packyrs if smoke100 == 1, missing

gen pack_year_20 = 0
replace pack_year_20 = 1 if _packyrs>=20 & _packyrs !=. 

gen pack_year_missing = 0 
replace pack_year_missing = 1 if smoke100 == 1 & _packyrs == . 

svyset _psu [pweight=_llcpwt], strata(_ststr)

//Smoking history for total population
svy: tab smoke100 if _age80<55, missing //32.02%
svy: tab smoke100 if _age80>55, missing //36.64%

//Percent of population with pack year missing
svy: tab pack_year_missing if _age80<55, missing //3.94%
svy: tab pack_year_missing if _age80>55, missing //3.95%

//Percent of smokers with pack year missing
svy: tab pack_year_missing if smoke100==1, missing //11.23%


svy: tab _smokgrp if _age80 < 55, missing 
svy: tab _smokgrp if _age80 > 55, missing 


* Full smoking-history eligibility
gen lcs_eligible = .

replace lcs_eligible = 1 if _smokgrp == 1 | _smokgrp == 2  //Known eligible

replace lcs_eligible = 0 if smoke100 == 2 //Never smokers = ineligible

replace lcs_eligible = 0 if inlist(_smoker3,1,2) & _packyrs < 20 //Current smokers with <20 pack-years = definitely ineligible

replace lcs_eligible = 0 if _smoker3 == 3 & _packyrs < 20 //Former smokers with <20 pack-years = definitely ineligible

replace lcs_eligible = 0 if _smoker3 == 3 & _yrsquit >= 15 & _yrsquit < . //Former smokers who quit 15+ years ago = definitely ineligible

gen elig_missing = 0
replace elig_missing = 1 if smoke100 == 1 & lcs_eligible == .

svy: tab elig_missing if _age80 < 55, missing //Percent of population with eligiblity missing - 3.21%
svy: tab elig_missing if _age80 > 55, missing //Percent of population with eligiblity missing - 2.97%

svy: tab elig_missing if smoke100 == 1, missing //Percent of ever smokers with eligiblity missing - 8.70%

tab smoke100 _smoker3 if lcs_eligible == ., missing

svy: tab lcs_eligible if _age80 < 55 & smoke100 == 1 & lcs_eligible != ., missing //Percent of current/former smokers that are eligible - 25.07%
svy: tab lcs_eligible if _age80 > 55 & smoke100 == 1 & lcs_eligible != ., missing //Percent of current/former smokers that are eligible - 30.79%

* Now look at eligible / ineligible / unknown

svy: tab lcs_eligible if _age80 < 55, missing //7.22% + 3.21*0.2507 = 8.02% n = 12,118
svy: tab lcs_eligible if _age80 > 55, missing //10.37% + 2.97*0.3079 = 11.28% n = 28,006


*------------------------------------------------------------
* Screening rates among those meeting smoking eligibility
*------------------------------------------------------------
keep if lcsctsc1 == 1 | lcsctsc1 == 2

* Screening rate among eligible population only

* Ages 51-54
svy: tab lcsctwhn if _age80 < 55 & lcs_eligible == 1, missing //6.76% n = 926

* Ages 56-64
svy: tab lcsctwhn if _age80 > 55 & lcs_eligible == 1, missing //18.85% n = 2,692






































