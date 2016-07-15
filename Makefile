.PHONY: test
test:
	csvlint type/organisations.csv --schema=pmhc-metadata.json
	csvlint type/practitioners.csv --schema=pmhc-metadata.json
	csvlint type/clients.csv --schema=pmhc-metadata.json
	csvlint type/episodes.csv --schema=pmhc-metadata.json
	csvlint type/service-contacts.csv --schema=pmhc-metadata.json
	csvlint type/k10p.csv --schema=pmhc-metadata.json
	csvlint type/k5.csv --schema=pmhc-metadata.json
