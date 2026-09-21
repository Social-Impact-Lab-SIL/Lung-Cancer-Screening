# Lung Cancer Screening After the 2021 USPSTF Eligibility Expansion: Evidence From Commercial Claims and National Surveys

**Status:** Under Review  
**Maintainer:** Brad Davis, Postdoctoral Fellow  
**Last Updated:** September 2026
## Overview

This paper examines changes in low-dose computed tomography (LDCT) lung cancer screening following the 2021 expansion of U.S. Preventive Services Task Force eligibility criteria. The analysis uses commercial claims data from the Health Care Cost Institute (HCCI) and nationally representative survey data from the 2022 Behavioral Risk Factor Surveillance System (BRFSS) and 2024 National Health Interview Survey (NHIS).

## Repository Structure
├── data/           # Raw and processed data (not committed — see .gitignore)
├── code/           # Analysis scripts
└── README.md

## Requirements

Stata 17

## How to Run

1. Obtain the required data described below.
2. Place the required data files in the repository's `data/` folder.
3. For the HCCI analysis, run:
   - `HCCI Analytic File Construction.do`
   - `HCCI_Analysis.do`
4. Run `BRFSS_Analysis.do` for the 2022 BRFSS analysis.
5. Run `NHIS_Analysis.do` for the 2024 NHIS analysis.

## Data Sources
- **Health Care Cost Institute (HCCI), 2016–2022:** Commercial health insurance claims data. These data are proprietary and cannot be redistributed through this repository.
- **Behavioral Risk Factor Surveillance System (BRFSS), 2022:** Public-use survey data from the Centers for Disease Control and Prevention.
- **National Health Interview Survey (NHIS), 2024:** Survey data accessed through IPUMS NHIS. Users should obtain the data directly from IPUMS.

## Contact

Brad Davis — badhhh@missouri.edu — Social Impact Lab, University of Missouri
