# mkdir data
# from SQL server, create CSV files in the following format:
#  id,timestamp,longitude,latitude
#  LC0802,2008-12-06 00:01:00,-153.7778,60.9401
#  ...
# for each project (if there is new data).
# Then use R to convert the CSV files to compressed Rdata (.rda)
 
ARCNVSID022 <- as.telemetry('data/ARCNVSID022.csv')
save(ARCNVSID022,file='data/ARCNVSID022.rda',compress='xz')

DENA_Bears <- as.telemetry('data/DENA_Bears.csv')
save(DENA_Bears,file='data/DENA_Bears.rda',compress='xz')

DENA_Coyote <- as.telemetry('data/DENA_Coyote.csv')
save(DENA_Coyote,file='data/DENA_Coyote.rda',compress='xz')

DENA_Wolves <- as.telemetry('data/DENA_Wolves.csv')
save(DENA_Wolves,file='data/DENA_Wolves.rda',compress='xz')

GAAR_Bears <- as.telemetry('data/GAAR_Bears.csv')
save(GAAR_Bears,file='data/GAAR_Bears.rda',compress='xz')

GAAR_Moose <- as.telemetry('data/GAAR_Moose.csv')
save(GAAR_Moose,file='data/GAAR_Moose.rda',compress='xz')

KATM_BrownBear <- as.telemetry('data/KATM_BrownBear.csv')
save(KATM_BrownBear,file='data/KATM_BrownBear.rda',compress='xz')

LACL_BrownBear <- as.telemetry('data/LACL_BrownBear.csv')
save(LACL_BrownBear,file='data/LACL_BrownBear.rda',compress='xz')

LACL_Sheep <- as.telemetry('data/LACL_Sheep.csv')
save(LACL_Sheep,file='data/LACL_Sheep.rda',compress='xz')

LACL_Wolf <- as.telemetry('data/LACL_Wolf.csv')
save(LACL_Wolf,file='data/LACL_Wolf.rda',compress='xz')

WACH <- as.telemetry('data/WACH.csv')
save(WACH,file='data/WACH.rda',compress='xz')

WRST_Caribou <- as.telemetry('data/WRST_Caribou.csv')
save(WRST_Caribou,file='data/WRST_Caribou.rda',compress='xz')

Yuch_Wolf <- as.telemetry('data/Yuch_Wolf.csv')
save(Yuch_Wolf,file='data/Yuch_Wolf.rda',compress='xz')
