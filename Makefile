.PHONY: test
test: 
	prove t/*.t

clean:
	rm data/*.csv

org:
	prove t/001_organisations.t

prac:
	prove t/002_practitioners.t

client:
	prove t/003_clients.t

episode:
	prove t/004_episode.t

contact:
	prove t/005_service_contacts.t

k10p:
	prove t/006_k10p.t

k5:
	prove t/007_k5.t

sdq:
	prove t/008_sdq.t
