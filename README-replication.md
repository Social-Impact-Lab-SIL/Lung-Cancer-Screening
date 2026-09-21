# Replication Package: Lung Cancer Screening After the 2021 USPSTF Eligibility Expansion: Evidence From Commercial Claims and National Surveys

This folder contains the code and instructions to replicate the findings of "Lung Cancer Screening After the 2021 USPSTF Eligibility Expansion: Evidence From Commercial Claims and National Surveys".

## Data Availability Statement

Raw data are not included in this repository.

### Health Care Cost Institute (HCCI)

The primary analysis uses 2016–2022 commercial claims data from the Health Care Cost Institute (HCCI). These data are proprietary and cannot be redistributed.

### Behavioral Risk Factor Surveillance System (BRFSS)

The 2022 Behavioral Risk Factor Surveillance System (BRFSS) public-use data are freely available from the Centers for Disease Control and Prevention:

https://www.cdc.gov/brfss/annual_data/annual_2022.html

Download the 2022 BRFSS SAS Transport data file (`LLCP2022.XPT`) before running `BRFSS_Analysis.do`.

### National Health Interview Survey (NHIS)

The 2024 National Health Interview Survey (NHIS) data used in this study were obtained through IPUMS NHIS: https://nhis.ipums.org/nhis/



- **Raw Data:** [Specify if data is public, proprietary, or provided in this repo].
- **Data Access:** [Provide link to Zenodo/OSF/OneDrive or instructions for requesting access].
- **Note:** If using restricted data, the scripts provided here assume you have placed the raw files in the `/data` folder.

## Software Requirements
- **Primary Software:** Stata 17


## Instructions

1. **Obtain Data:** Obtain the required data described in the Data Availability Statement. Place public-use data files in the repository's `data/` folder.

2. **Run Analysis:** Execute the scripts as follows:
   - `HCCI Analytic File Construction.do`
   - `HCCI_Analysis.do`
   - `BRFSS_Analysis.do`
   - `NHIS_Analysis.do`

## Contact
For questions regarding this replication package, contact Brad Davis at badhhh@missouri.edu.
