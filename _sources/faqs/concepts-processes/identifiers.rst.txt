.. _identifier-and-key-FAQs:

Questions about Unique Identifiers and 'Keys'
=============================================

PHNs raised a number of queries about the assignment of unique keys. Client Keys must be
unique and persistent for an individual across the entire PHN.  It is the responsibility of the
PHN to derive a format for these fields to be used across their commissioned organisations.
Practitioner, Episode, Service Contact and Outcome Collection Occasion Keys will be
managed by provider organisations and will be unique at the level of the provider
organisation.

An important requirement to note is that Keys (or identifiers) are strings that can have a
minimum length of 2 characters and a maximum length of 50 characters. Once assigned
keys cannot be changed.
The purpose of keys on each of the records is to provide a unique and persistent identifier in
order to allow addition, update and deletion of each individual record.
Responses to specific questions are provided below.

Client keys
^^^^^^^^^^^

Does the Department have any recommendations for assignment of the Client Key? Can the Department provide any further information regarding the process for allocation of region wide unique client identifiers?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Client Keys must be unique and persistent for an individual across the entire PHN.
It is the responsibility of the PHN to derive a format for these fields to be used
across their commissioned organisations.

Some PHNs have or are already implementing centralised client identifier (‘key’)
allocation in order to facilitate services between their contracted provider organisations.
For those PHNs without this capability a master client index will be created during
:ref:`Stage-Two` of the PMHC MDS implementation. The master client index will facilitate
management of the client keys within the PHN independent of the provider organisation.

In the interim it is recommended that at the very least PHNs ensure that Client Keys
issued by provider organisations do not overlap.

Episode keys
^^^^^^^^^^^^

Could the Department provide further information about the purpose and creation of episode Keys?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The purpose of keys on each of the records is to provide a unique and persistent
identifier in order to allow addition, update and deletion of each individual
record without reference to items on that record which might need to change.
e.g. correcting a patient key or date. This also applies to the other record types
such as client and service contact.

Manual data entry via MDS interface
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Do we need to create ‘keys’ if we intend to enter data directly into the MDS?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Stage One of the PMHC MDS will only allow upload, not direct data entry. Upload
files will either be produced automatically from client systems or by hand via
Excel spreadsheet.  Therefore, all organisations uploading data to the PMHC MDS
will need to provide keys for each record. Where data is being exported from
client systems, these keys can be auto generated, provided that a key does not
change once it is assigned to an item.

Practitioner identifiers
^^^^^^^^^^^^^^^^^^^^^^^^

There is currently a jumble of systems for coding service providers, making it difficult to report against the ‘delivered by whom’ part of the complex multi-part question posed.  How will this be improved?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The new MDS specifications include separate unique keys for Provider Organisation
and Practitioner which are intended to resolve this problem
