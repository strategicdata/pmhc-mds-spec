.. _data_spec_changelog:

Data Specification Change log
=============================

18/5/2017 - Version 1.0.6
-------------------------

* Data model and specifications

  * Record formats

    * Practitioner

      * Updated :ref:`dfn-organisation_path` to specify the Provider Organisation providing a service to the client.

    * Client

      * Updated :ref:`dfn-organisation_path` to specify the Provider Organisation providing a service to the client.

    * Episode

      * Updated :ref:`dfn-organisation_path` to specify the Provider Organisation providing a service to the client.

    * Collection Occasion

      * Updated :ref:`dfn-organisation_path` to specify the Provider Organisation providing a service to the client.

    * Service Contact

      * Updated :ref:`dfn-organisation_path` to specify the Provider Organisation providing a service to the client.

* Upload specification

  * File types

    * Updated :ref:`upload_specification` to specify practitioners.csv filename in zipped CSV uploads.

1/5/2017 - Version 1.0.5
------------------------

* Data model and specifications

  * Record formats

    * Episode

      * Added more description to :ref:`dfn-client_consent`

    * Service Contact

      * Changed wording of :ref:`dfn-service_contact_no_show` to specify 'intended participant(s)' instead of 'client'

    * Outcome Collection Occasion

      * :ref:`k10p-data-elements` updated reference to Q11-14 'missing' replacing 'not applicable'.

8/2/2017 - Version 1.0.4
------------------------

* Data model and specifications

  * :ref:`data-model` - Updated the data model diagram to explicitly show Primary
    Health Organisations and Provider Organisations.

  * Record formats

    * Client

      * Added more description to :ref:`dfn-organisation_path`

    * Episode

      * Added more description to :ref:`dfn-organisation_path`

      * :ref:`dfn-homelessness` updated to include missing/not stated value of 9

    * Service Contact

      * Added more description to :ref:`dfn-organisation_path`

    * Collection Occasion

      * Added more description to :ref:`dfn-organisation_path`

    * Practitioner

      * Added more description to :ref:`dfn-organisation_path`

21/10/2016 - Version 1.0.3
--------------------------

* Data model and specifications

  * Record formats

    * Outcome Collection Occasion

      * :ref:`dfn-measure_date` updated to include missing value of 09099999

14/10/2016 - Version 1.0.2
--------------------------

* Data model and specifications

  * Record formats

    * Outcome Collection Occasion

      * Updated :ref:`sdq-data-elements` by adding :ref:`scoring-the-sdq` subsection

6/10/2016 - Version 1.0.1
-------------------------

* Data model and specifications

  * Record formats

    * :ref:`dfn-principal_focus` - Updated response 4 from 'Complex care package for adults' to 'Complex care package'
    * :ref:`dfn-income_source` - Added 0 as a valid response for when the client is aged less than 16 years

  * Definitions

    * Added required field to all definitions

18/9/2016 - Updates between final draft version and Version 1
-------------------------------------------------------------

* Reporting arrangements

  * :ref:`uploading_data` section expanded
  * 'Upload frequency' section renamed :ref:`reporting_timeliness` and expanded

* Data model and specifications

  * Updated :ref:`data-model` diagrams including addition of collection occasion
    total and sub scores
  * Added :ref:`key-concepts` section
  * Record formats

    * Added lengths to all string types
    * Added minimum and maximum values to number types
    * Added links to Australian Bureau of Statistics (ABS) definitions
    * :ref:`dfn-organisation_type` updated domain
    * :ref:`dfn-country_of_birth` - Fully specified domain
    * :ref:`dfn-main_lang_at_home` - Fully specified domain
    * Episode - Client Consent to De-identified Data renamed :ref:`dfn-client_consent`
    * :ref:`dfn-episode_completion_status` - Added blank as a valid response to mean that
      the episode is still open
    * :ref:`dfn-principal_focus` - 4 = 'Complex care package
      for adults' renamed 'Complex Care Package' and notes updated.
    * :ref:`dfn-principal_diagnosis` - 999 = 'Missing' response option added
    * :ref:`dfn-service_contact_participants` - 4 = 'Other health professional or
      service provider' response option added
    * :ref:`dfn-service_contact_participants` - 5 = 'Other' response option added
    * :ref:`dfn-service_contact_venue` - 99 = 'Not stated' response option added
    * Outcome Collection Occasion

      * Total scores and sub scores will be accepted in the short term
        Individual item scores will eventually be required
      * :ref:`dfn-k10p_score` added
      * :ref:`dfn-k5_score` added
      * :ref:`dfn-sdq_emotional_symptoms` added
      * :ref:`dfn-sdq_conduct_problem` added
      * :ref:`dfn-sdq_hyperactivity` added
      * :ref:`dfn-sdq_peer_problem` added
      * :ref:`dfn-sdq_prosocial` added
      * :ref:`dfn-sdq_total` added
      * :ref:`dfn-sdq_impact` added

* :ref:`upload_specification`

  * CSV files must be compressed into a single zip file before uploading
  * Example organisation structure added
  * All files/worksheet must be internally consistent

* Added :ref:`form_creation`

9/8/2016 - Updates since last release
-------------------------------------

* Updated :ref:`data-model` diagrams including addition of collection occasions
* Renumbered :ref:`dfn-organisation_type` response options
* Updated description of :ref:`practitioner-data-elements` record type
* Removal of Episode - Start Date from the :ref:`episode-data-elements` record layout as it is derived from the first service contact
* Added :ref:`dfn-client_consent` field
* :ref:`dfn-episode_completion_status`:

  * Added option Episode closed administratively - client referred elsewhere
  * Recoded Episode closed administratively - other reason
  * Updated explanations of response options.

* Added :ref:`dfn-mental_health_treatment_plan`
* :ref:`dfn-service_contact_duration` added response options
* :ref:`outcome-collection-occasion-data-elements`

  * Updated definition
  * Added explicit record types for :ref:`k10p-data-elements`, :ref:`k5-data-elements`, and :ref:`sdq-data-elements`

* :ref:`dfn-country_of_birth` now refers to recently released ABS 2016 release
* :ref:`dfn-client_key` - Updated definition
* :ref:`dfn-main_lang_at_home` now refers to recently released ABS 2016 release
* :ref:`dfn-episode_key` - Updated definition
* :ref:`dfn-organisation_path` - Added definition
* :ref:`dfn-atsi_cultural_training` - updated definition
* :ref:`dfn-service_contact_type` - 8 = 'Cultural specific assistance NEC' response option updated definition
* Added "tags" field to all record types. e.g. :ref:`dfn-client_tags`.
