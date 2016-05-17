csvcut -C Start records/coloc.csv > coloc.csv
mv coloc.csv records/coloc.csv
csvcut -C Start records/epi.csv   > epi.csv
mv epi.csv records/epi.csv
csvcut -C Start records/per.csv   > per.csv
mv per.csv records/per.csv
csvcut -C Start records/pro.csv   > pro.csv
mv pro.csv records/pro.csv
csvcut -C Start records/ref.csv   > ref.csv
mv ref.csv records/ref.csv
csvcut -C Start records/ser.csv   > ser.csv
mv ser.csv records/ser.csv
