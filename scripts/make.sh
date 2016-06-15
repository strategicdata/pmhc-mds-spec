#!/bin/bash

# Exit if anything errors
set -e

cp -rf PMHC* ../DDict/lib/DDict

pushd .

cd ../DDict/ 

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

popd

pushd .

cd doc

curl -s http://www.gliffy.com/go/publish/image/10751755/L.png > figures/data-model.png

docker run -ti -v `pwd`:/mnt/workdir stratdat/sphinx:production make $1

popd
