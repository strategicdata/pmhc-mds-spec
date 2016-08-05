.PHONY: test
test: org prac client episode contact k10p k5 sdq

clean:
	rm data/*.csv

org:
	tail -n +2 data/_orig/organisations.csv > data/organisations.csv; csvlint data/organisations.csv --schema=pmhc-metadata.json

prac:
	tail -n +2 data/_orig/practitioners.csv > data/practitioners.csv; csvlint data/practitioners.csv --schema=pmhc-metadata.json

client:
	tail -n +2 data/_orig/clients.csv > data/clients.csv; csvlint data/clients.csv --schema=pmhc-metadata.json

episode:
	tail -n +2 data/_orig/episodes.csv > data/episodes.csv; csvlint data/episodes.csv --schema=pmhc-metadata.json

contact:
	tail -n +2 data/_orig/service-contacts.csv > data/service-contacts.csv; csvlint data/service-contacts.csv --schema=pmhc-metadata.json

k10p:
	tail -n +2 data/_orig/k10p.csv > data/k10p.csv; csvlint data/k10p.csv --schema=pmhc-metadata.json

k5:
	tail -n +2 data/_orig/k5.csv > data/k5.csv; csvlint data/k5.csv --schema=pmhc-metadata.json

sdq:
	tail -n +2 data/_orig/sdq.csv > data/sdq.csv; csvlint data/sdq.csv --schema=pmhc-metadata.json
