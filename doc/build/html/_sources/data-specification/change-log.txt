.. _data_spec_changelog:

Data Specification Change log
=============================

30/5/2018
---------

* :ref:`data-specifications-download`

  * Added a zip download of PMHC MDS Specification files for developers to access.

13/3/2018
---------

* :ref:`upload_specification`

  * Updated :ref:`file-format` to specify that '... you should include ALL
    service contacts and measures for that episode' and removing the text
    'Any service contacts and measures that are not included will be removed
    from the PMHC MDS'

* :ref:`validation-rules`

  * Updated :ref:`client-current-validations` to remove the age based
    validations for :ref:`dfn-prof_english`. These validations will be replaced
    with data quality reports.


19/1/2018 - Version 1.0.12
--------------------------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * :ref:`client-data-elements`

      * Updated :ref:`dfn-date_of_birth` to specify that
        the date of birth must not be before 1 January 1900.

    * :ref:`episode-data-elements`

      * Updated :ref:`dfn-episode_end_date` to specify that
        the episode end date must not be before 1 January 2016.

      * Updated :ref:`dfn-referral_date` to specify that
        the episode referral date must not be before 1 January 2014.

    * :ref:`service-contact-data-elements`

      * Updated :ref:`dfn-service_contact_date` to specify that
        the service contact date must not be before 1 January 2014.

    * :ref:`outcome-collection-occasion-data-elements`

      * Updated :ref:`dfn-measure_date` to specify that
        the measure date must not be before 1 January 2016.

* :ref:`validation-rules`

  * Updated :ref:`client-current-validations` to add specify that the date of
    birth must not be before 1 January 1900.

  * Updated :ref:`episode-current-validations` to add specify that the episode
    end date must not be before 1 January 2016.

  * Updated :ref:`episode-current-validations` to add specify that the episode
    referral date must not be before 1 January 2014.

  * Updated :ref:`service-contact-current-validations` to add specify that the
    service contact date must not be before 1 January 2014.

  * Updated :ref:`k10p-current-validations` to add specify that the
    measure date must not be before 1 January 2016.

  * Updated :ref:`k5-current-validations` to add specify that the
    measure date must not be before 1 January 2016.

  * Updated :ref:`sdq-current-validations` to add specify that the
    measure date must not be before 1 January 2016.

29/11/2017
----------

* :ref:`validation-rules`

  * Fixed spelling error in :ref:`practitioner-current-validations` point 1.

28/11/2017
----------

* :ref:`validation-rules`

  * Rewrote the validation rules to follow the guidelines in RFC 2119.

  * Changed bullet lists to enumerated lists to make rules easier to identify.

  * Updated :ref:`episode-current-validations` to clarify how
    :ref:`dfn-episode_completion_status` and :ref:`dfn-episode_end_date`
    interact (Point 4.)

25/10/2017
----------

* :ref:`upload_specification`

  * Updated :ref:`deleting-records`

16/10/2017
----------

* :ref:`validation-rules`

  * Updated :ref:`episode-current-validations` to clarify which episode closed
    responses are allowed to be recorded when :ref:`dfn-service_contact_final`
    is recorded as
    '1: No further services are planned for the client in the current episode'

  * Updated :ref:`client-current-validations` to make the final point clearer.

11/10/2017
----------

* :ref:`identifier_management`

  * Updated :ref:`unique_keys`

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * :ref:`service-contact-data-elements`

      * Added notes for :ref:`dfn-service_contact_modality` response code
        4: 'Internet-based'

03/10/2017
----------

* Added :ref:`test-data-sets`

* :ref:`validation-rules`

  * Updated :ref:`episode-current-validations` to specify when the ``!ATAPS``
    flag can be used in :ref:`dfn-episode_tags`
  * Updated :ref:`service-contact-current-validations` to remove the
    validation 'Where an :ref:`dfn-episode_end_date` has been recorded,
    there must be a service contact with :ref:`dfn-service_contact_final`
    set to ‘1: No further services are planned for the client in the current episode’'
  * Updated :ref:`service-contact-current-validations` to specify when the
    ``!ATAPS`` flag can be used in :ref:`dfn-service_contact_tags`
  * Updated :ref:`k10p-current-validations` to specify that
    :ref:`dfn-measure_date` must not be after :ref:`dfn-episode_end_date`
  * Updated :ref:`k5-current-validations` to specify that
    :ref:`dfn-measure_date` must not be after :ref:`dfn-episode_end_date`
  * Updated :ref:`sdq-current-validations` to specify that
    :ref:`dfn-measure_date` must not be after :ref:`dfn-episode_end_date`

25/9/2017 - Version 1.0.11
--------------------------

* :ref:`upload_specification`

  * Added :ref:`deleting-records`

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * :ref:`episode-data-elements`

      * Updated :ref:`dfn-episode_completion_status` to allow either 0 or blank
        to represent 'Episode open'

    * :ref:`service-contact-data-elements`

      * Clarified that the upper bound for :ref:`dfn-service_contact_copayment` is
        999999.99
      * Updated :ref:`dfn-service_contact_participants` and
        :ref:`dfn-service_contact_participation_indicator` to clarify how
        :ref:`dfn-service_contact_participants` and
        :ref:`dfn-service_contact_participation_indicator` interact

* :ref:`validation-rules`

  * Updated :ref:`validation-rules` to clarify how
    :ref:`dfn-service_contact_participants` and
    :ref:`dfn-service_contact_participation_indicator` interact

29/8/2017
---------

* :ref:`identifier_management`

  * Updated :ref:`client_keys` reference to clarify future development
  * Updated :ref:`unique_keys` and specification links

25/8/2017
---------

* :ref:`upload_specification`

  * Updated :ref:`upload_specification` to include provider organisations.

23/8/2017
---------

* Added :ref:`validation-rules`

* Data model and specifications

  * Record formats

    * Practitioner

      * Updated :ref:`dfn-practitioner_year_of_birth` to clarify which years are valid.

    * Client

      * Updated :ref:`dfn-date_of_birth` to clarify that future dates are not valid.

    * Episode

      * Updated :ref:`dfn-episode_end_date` to clarify that future dates are not valid.
      * Updated :ref:`dfn-client_postcode` to clarify which postcodes are valid.
      * Updated :ref:`dfn-referral_date` to clarify that future dates are not valid.

    * Service Contact

      * Updated :ref:`dfn-service_contact_date` to clarify that future dates are not
        valid.
      * Updated :ref:`dfn-service_contact_postcode` to clarify the ranges of postcodes
        that are valid.

    * Outcome Collection Occasion

      * Updated :ref:`dfn-measure_date` to clarify that future dates are not valid.


28/7/2017
---------

* :ref:`ataps-to-pmhc-mapping`

  * Updated to show the mapping of ATAPS MDS diagnosis fields to PMHC
    Principal Diagnosis and Additional Diagnsis where two ATAPS diagnosis
    fields have been specified

24/7/2017
---------

* Data model and specifications

  * Upload specification

    * Example file updated so that practitioners file/worksheet validates correctly

6/7/2017 - Version 1.0.10
-------------------------

* Data model and specifications

  * Data model

    * Updated data model diagram following Department of Health communication on 21 June, 2017
      regarding the Master Client Index

30/6/2017 - Version 1.0.9
-------------------------

* Data model and specifications

  * Record formats

    * Provider Organisation

      * Updated :ref:`provider-organisation-data-elements` to add the following field:

        * :ref:`dfn-organisation_status`


26/6/2017 - Version 1.0.8
-------------------------

* Data model and specifications

  * Record formats

    * Episode

      * Updated :ref:`dfn-additional_diagnosis` to add the following response codes:

        * 000: No additional diagnosis
        * 100: Anxiety disorders (ATAPS)
        * 200: Affective (Mood) disorders (ATAPS)
        * 300: Substance use disorders (ATAPS)
        * 400: Psychotic disorders (ATAPS)

      * Updated :ref:`dfn-principal_diagnosis` to add the following response codes:

        * 100: Anxiety disorders (ATAPS)
        * 200: Affective (Mood) disorders (ATAPS)
        * 300: Substance use disorders (ATAPS)
        * 400: Psychotic disorders (ATAPS)

    * Service Contact

      * Updated :ref:`dfn-service_contact_type` to add the following response code:

        * 98: ATAPS

  * Added :ref:`ataps-to-pmhc-mapping`

14/6/2017 - Version 1.0.7
-------------------------

* Data model and specifications

  * Record formats

    * Service Contact

      * Updated :ref:`dfn-service_contact_duration` to add response 0: 'No contact took place'.
      * Updated :ref:`dfn-service_contact_duration` response 1 from '0-15 mins' to '1-15 mins'.
      * Updated :ref:`dfn-service_contact_type` to add response 0: 'No contact took place'.
      * Updated :ref:`dfn-service_contact_modality` to add response 0: 'No contact took place'.

18/5/2017 - Version 1.0.6
-------------------------

* Data model and specifications

  * Record formats

    * Practitioner

      * Updated :ref:`dfn-organisation_path` to specify the Provider Organisation providing a service to the client.
      * Updated :ref:`dfn-organisation_key` to specify the key uniquely identifies the Provider Organisation to the Primary Health Network.

    * Client

      * Updated :ref:`dfn-organisation_path` to specify the Provider Organisation providing a service to the client.
      * Updated :ref:`dfn-organisation_key` to specify the key uniquely identifies the Provider Organisation to the Primary Health Network.

    * Episode

      * Updated :ref:`dfn-organisation_path` to specify the Provider Organisation providing a service to the client.
      * Updated :ref:`dfn-organisation_key` to specify the key uniquely identifies the Provider Organisation to the Primary Health Network.

    * Collection Occasion

      * Updated :ref:`dfn-organisation_path` to specify the Provider Organisation providing a service to the client.
      * Updated :ref:`dfn-organisation_key` to specify the key uniquely identifies the Provider Organisation to the Primary Health Network.

    * Service Contact

      * Updated :ref:`dfn-organisation_path` to specify the Provider Organisation providing a service to the client.
      * Updated :ref:`dfn-organisation_key` to specify the key uniquely identifies the Provider Organisation to the Primary Health Network.

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
