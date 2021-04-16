# Run with
# > "C:\Program Files\R\R-3.6.1\bin\R.exe" --vanilla < data\_make_data_all.R
# after updating CSV files with `CSV_Creaton_Queries.sql`

library(ctmm)

DENA_Bears <- as.telemetry('data/DENA_Bears.csv')
save(DENA_Bears,file='data/DENA_Bears.rda',compress='xz')

DENA_Wolves <- as.telemetry('data/DENA_Wolves.csv')
save(DENA_Wolves,file='data/DENA_Wolves.rda',compress='xz')

KATM_BrownBear <- as.telemetry('data/KATM_BrownBear.csv')
save(KATM_BrownBear,file='data/KATM_BrownBear.rda',compress='xz')

WACH <- as.telemetry('data/WACH.csv')
save(WACH,file='data/WACH.rda',compress='xz')

Yuch_Wolf <- as.telemetry('data/Yuch_Wolf.csv')
save(Yuch_Wolf,file='data/Yuch_Wolf.rda',compress='xz')
