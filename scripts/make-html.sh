cp -rf PMHC* ../DDict/lib/DDict

pushd .

cd ../DDict/

make install

./scripts/ddict2rst.pl -C PMHC -V 00.01

for f in *.csv; do
  echo "Processing $f"
  csvcut -C Start $f > $f.t
  mv $f.t $f
done

for f in *.csv; do
  echo "Processing $f"
  csvgrep -c "Data Element (Field Name)" -i -m "(RecType)" $f > $f.t
  mv $f.t $f
done

mv *.{csv,rst} ../spec/doc/records/

popd

pushd .

cd doc

docker run -ti -v `pwd`:/mnt/workdir sphinx make html latexpdf

cd build

cp latex/PMHC.pdf html

tar -zcvf html.tgz html

popd
