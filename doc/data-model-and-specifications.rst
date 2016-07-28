Data model and specifications
=============================

Data model
----------

.. _pmhc_data_model:

.. figure:: figures/data-model.svg
   :alt: PMHC data model

   PMHC data model

**Note: See :ref:`pmhc-collection-occasion-data-model` for more details about 
Collection Occasion records.**

.. _pmhc-collection-occasion-data-model:

.. figure:: figures/collection-occasion-data-model.svg
   :alt: PMHC Collection Occasion data model

   PMHC Collection Occasion data model

* **Note: See :ref:`pmhc-data-model` for more details about how
  Collection Occasion records fit into the overall structure.**

.. _record-formats:

Record formats
--------------

Provider Organisation
^^^^^^^^^^^^^^^^^^^^^

Provider Organisation data is for administrative use within the PMHC MDS
system. It is managed by the PHN's via the PMHC MDS administrative interface,
it cannot be uploaded.

.. csv-table:: Provider Organisation record layout
  :file: record/organisation.csv
  :header-rows: 1

----------

.. _practitioner-data-elements:

Practitioner
^^^^^^^^^^^^

Practitioner data is intended to provide workforce planning data for use by the
Department. It is managed by the provider organisations via either the PMHC MDS
administrative interface or upload.

.. csv-table:: Practitioner record layout
  :file: record/practitioner.csv
  :header-rows: 1

----------

.. _client-data-elements:

Client
^^^^^^

Clients are managed by the provider organisations via upload.

.. csv-table:: Client record layout
   :file: record/client.csv
   :header-rows: 1

----------

.. _episode-data-elements:

Episode
^^^^^^^

For the purposes of the PMHC MDS, an *Episode of Care* is defined as a more or
less continuous period of contact between a client and a PHN-commissioned
provider organisation/clinician that starts at the point of first contact, and
concludes at discharge. Episodes comprise a series of one or more Service
Contacts. This structure allows for a logical data collection protocol that
specifies what data are collected when, and by whom. Different sets of PMHC MDS
items are collected at various points in the client’s engagement with the
provider organisation. Some items are only collected once at the episode level,
while others are collected at each *Service Contact*.

Three business rules apply to how the *Episode of Care* concept is implemented
across PHN-commissioned services:

- **One episode at a time for each client, defined at the level of the provider
  organisation**

  While an individual may have multiple *Episodes of Care* over the course of
  their illness, they may be considered as being in only one episode at any
  given point of time for **any particular PHN-commissioned provider
  organisation**. The implication is that the care provided by the
  organisation to an individual client at any point in time is subject to only
  one set of reporting requirements.

- **Episodes commence at the point of first contact**

- **Discharge from care concludes the episode**

  Discharge may occur clinically or administratively in instances where contact
  has been lost with the client. A new episode is deemed to commence if the
  person re-presents to the organisation.

  Episodes are managed by the provider organisations via upload.

.. csv-table:: Episode record layout
   :file: record/episode.csv
   :header-rows: 1

----------

.. _service-contact-data-elements:

Service Contact
^^^^^^^^^^^^^^^

- Service contacts are defined as the provision of a service by a PHN
  commissioned mental health service provider for a client where the nature of
  the service would normally warrant a dated entry in the clinical record of
  the client.
- A service contact must involve at least two persons, one of whom must be a
  mental health service provider.
- Service contacts can be either with the client or with a third party, such as
  a carer or family member, and/or other professional or mental health worker,
  or other service provider.
- Service contacts are not restricted to face‑to‑face communication but can
  include telephone, internet, video link or other forms of direct
  communication.
- Service provision is only regarded as a service contact if it is relevant to
  the clinical condition of the client. This means that it does not include
  services of an administrative nature (e.g. telephone contact to schedule an
  appointment).

  Definition based on METeOR: `493304
  <http://meteor.aihw.gov.au/content/index.phtml/itemId/493304>`_ with
  modification.

  Service contacts are managed by the provider organisations via upload.

.. csv-table:: Service contact record layout
   :file: record/service-contact.csv
   :header-rows: 1


----------

Outcome Collection Occasion
^^^^^^^^^^^^^^^^^^^^^^^^^^^

A Collection Occasion is defined as an occasion during an Episode of Care when
the required outcome measure is to be collected. At a minimum, collection of
outcome data is required at both Episode Start and Episode End, but may be more
frequent if clinically indicated and agreed by the client.

Measures will be the Kessler Psychological Distress Scale K10+ (in the case of
Aboriginal and Torres Strait Islander clients, the K5) as well as the Strengths
& Difficulties Questionnaires.

Individual item scores will be required.

Outcome collection occasions are managed by the provider organisations via upload.

.. _k10p-data-elements:

K10+
^^^^

.. csv-table:: K10+ record layout
   :file: record/k10p-collection-occasion.csv
   :header-rows: 1

.. _k5-data-elements:

K5
^^

.. csv-table:: K5 record layout
   :file: record/k5-collection-occasion.csv
   :header-rows: 1

.. _sdq-data-elements:

SDQ
^^^

Extensive support materials are available on the SDQ developers' website,
including copies of the various versions of the instrument, background
information and scoring instructions. See http://www.sdqinfo.com. There are
six versions (parent-report and youth-self report) currently specified format
PMHC MDS reporting.

The "1" versions are administered on admission and are rated on the basis of
the proceeding 6 months. The "2" follow up versions are administered on review
and discharge and are rated on the basis of the previous 1 month period.

The versions specified for PMHC MDS reporting are:

- PC1 - Parent Report Measure for Children aged 4-10, Baseline version;
- PC2 - Parent Report Measure for Children and Adolescents aged 4-10, Follow up version;
- PY1 - Parent Report Measure for Youth aged 11-17, Baseline version;
- PY2 - Parent Report Measure for Youth aged 11-17, Follow up version;
- YR1 - Youth self report measure (11-17), Baseline version; and
- YR2 - Youth self report measure (11-17), Follow up version.

Please note that the item numbering in the SDQ versions is deliberately non
sequential because it covers all items in all versions, both to indicate item
equivalence across versions and to assist data entry, especially of
translated versions. The table below indicates the items that are included in
each version, the rating periods used and the broad content covered by each
item.

+-------+-----------------------------+--------------------------------+--------------------------------+
|       | Informant                   | Parent                         | Young Person                   |
+       +-----------------------------+---------------------+----------+----------+---------------------+
|       | Age range                   | 4-10                | 11-17               | 11 - 17             |
+       +-----------------------------+----------+----------+----------+----------+----------+----------+
|       | Application                 | Baseline | Followup | Baseline | Followup | Baseline | Followup |
+       +-----------------------------+----------+----------+----------+----------+----------+----------+
|       | Rating period               | 6 months | 1 month  | 6 months | 1 month  | 6 months | 1 month  |
+-------+-----------------------------+----------+----------+----------+----------+----------+----------+
| Items | Item Content                |                           Version                               |
|       |                             +----------+----------+----------+----------+----------+----------+
|       |                             |    PC1   | PC2      | PY1      | PY2      | YR1      | YR2      |
+=======+=============================+==========+==========+==========+==========+==========+==========+
| 1-25  | Symptoms                    |     ✓    | ✓        | ✓        | ✓        | ✓        | ✓        |
+-------+-----------------------------+----------+----------+----------+----------+----------+----------+
| 26    | Overall                     | ✓        | ✓        | ✓        | ✓        | ✓        | ✓        |
+-------+-----------------------------+----------+----------+----------+----------+----------+----------+
| 27    | Duration                    | ✓        | X        | ✓        | X        | ✓        |          |
+-------+-----------------------------+----------+----------+----------+----------+----------+----------+
| 28-33 | Impact                      | ✓        | ✓        | ✓        | ✓        | ✓        | ✓        |
+-------+-----------------------------+----------+----------+----------+----------+----------+----------+
| 34-35 | Follow up progress          | X        | ✓        | X        | ✓        | X        | ✓        |
+-------+-----------------------------+----------+----------+----------+----------+----------+----------+
| 36-38 | Cross-Informant information | ✓        | X        | ✓        | X        | X        | X        |
+-------+-----------------------------+----------+----------+----------+----------+----------+----------+
| 39-42 | Cross-Informant information | X        | X        | X        | X        | ✓        | X        |
+-------+-----------------------------+----------+----------+----------+----------+----------+----------+

.. csv-table:: SDQ record layout
   :file: record/sdq-collection-occasion.csv
   :header-rows: 1

-----

.. include:: include/definitions.rst
