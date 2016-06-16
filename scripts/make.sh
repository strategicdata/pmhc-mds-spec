#!/bin/bash

# Exit if anything errors
set -e

cp -rf PMHC* ../DDict/lib/DDict

pushd .

cd ../DDict/ 

rm -f _doc/record/*.csv

make install

./scripts/ddict2rst.pl -C PMHC -V 00.01 --defs

for f in _doc/record/*.csv; do
  echo "Processing $f"
  csvcut -C Start $f > $f.t
  mv $f.t $f
done

for f in _doc/record/*.csv; do
  echo "Processing $f"
  csvgrep -c "Data Element (Field Name)" -i -m "(RecType)" $f > $f.t
  mv $f.t $f
done

rm ../spec/doc/records/*
rm ../spec/doc/includes/definitions.rst
mv _doc/record/*.{csv,rst} ../spec/doc/records/
mv _doc/definitions.rst ../spec/doc/includes/
mv _doc/summary-table.csv ../spec/doc/summary-table.csv

popd

pushd .

cd doc

curl -s -L http://www.gliffy.com/go/publish/image/10751755/L.png > figures/data-model.png

if [ -f ~/Downloads/data-model.svg ]; then
  mv ~/Downloads/data-model.svg figures/data-model.svg
fi

if [ -z $1 ]; then
  ARG1=html
else
  ARG1=$1
fi

docker run -ti -v `pwd`:/mnt/workdir stratdat/sphinx:production make $ARG1

popd
