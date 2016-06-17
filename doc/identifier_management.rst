Identifier Management
=====================

Managing Provider Organisation Codes
------------------------------------
Provider Organisations will be created and managed by Primary Health Networks(PHNs)
through a user interface. Each PHN must create their own Provider Organisations
before any data can be uploaded. Each Provider Organisation will need to be
assigned a unique code. It is the responsibility of the PHN to assign and manage
these codes.

Managing Practitioner and Client Keys
-------------------------------------
Practitioners and Clients will be created and managed by Provider Organisations
via the upload interface. Each Practitioner and Client needs to be assigned a
unique key in order to facilitate adding/updating/deleting each item when
uploading data. Once assigned, this key cannot change. These keys will be
managed by the Provider Organisation, however, they need to be unique across
the PHN in order to ensure that there is a single identifier for a patient or
provider within the PHN. During Stage 2 of the PMHC MDS implementation a master
patient index will be created to allow Provider Organisations to manage the
client and provider identifiers across PHNs. Until the master patient index is
implemented PHNs will need to play a role in coordinating assignment and
management of these identifiers.


Managing Episode, Service Contact and Outcome Collection Occasion Keys
----------------------------------------------------------------------
Episodes, Service Contacts and Outcome Collection Keys will be created and
managed by Provider Organisations via the upload interface. Each Episode,
Service Contact or Outcome Collection Occasion needs to be assigned a unique
key in order to facilitate adding/updating/deleting each item when uploading
data. These keys will be managed by the Provider Organisation. Where data is
being exported from client systems, these keys can be auto generated, providing
that a key does not change once it is assigned to an item.
