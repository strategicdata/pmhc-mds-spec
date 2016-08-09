Definitions
-----------

.. _dfn-client_atsi_status:

Client - Aboriginal and Torres Strait Islander Status
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether a person identifies as being of Aboriginal and/or Torres Strait Islander origin, as represented by a code.

:Field name: client_atsi_status

:Data type: string

:Domain:
  :1: Aboriginal but not Torres Strait Islander origin
  :2: Torres Strait Islander but not Aboriginal origin
  :3: Both Aboriginal and Torres Strait Islander origin
  :4: Neither Aboriginal or Torres Strait Islander origin
  :9: Not stated/inadequately described
:Notes:
  Code 9 is not to be available as a valid answer to the questions but is
    intended for use:
  
    - Primarily when importing data from other data collections that do not
      contain mappable data.
    - Where an answer was refused.
    - Where the question was not able to be asked prior to completion of
      assistance because the client was unable to communicate or a person who
      knows the client was not available.
  

:METeOR: `291036 <http://meteor.aihw.gov.au/content/index.phtml/itemId/291036>`__

----------

.. _dfn-country_of_birth:

Client - Country of Birth
^^^^^^^^^^^^^^^^^^^^^^^^^

The country in which the client was born, as represented by a code.

:Field name: country_of_birth

:Data type: string[4]
:Notes:
  `Standard Australian Classification of Countries (SACC), 2016 4-digit
  code (ABS Catalogue No. 1269.0)
  <http://www.abs.gov.au/ausstats/abs@.nsf/mf/1269.0>`_ SACC 2016 is a
  four-digit, three-level hierarchical structure specifying major group, minor
  group and country. 9999 is used when the information is not known or the
  client has refused to provide the information.
  
  Organisations are encouraged to produce customised lists of the most common
  languages in use by their local populations from the above resource.
  

:METeOR: `459973 <http://meteor.aihw.gov.au/content/index.phtml/itemId/459973>`__

:ABS: `http://www.abs.gov.au/ausstats/abs@.nsf/mf/1269.0 <http://www.abs.gov.au/ausstats/abs@.nsf/mf/1269.0>`__

----------

.. _dfn-date_of_birth:

Client - Date of Birth
^^^^^^^^^^^^^^^^^^^^^^

The date on which an individual was born.

:Field name: date_of_birth

:Data type: date
:Notes:
  If the date of birth is unknown, the following approaches should be used:
  
    - If the age of the person is known, the age should be used to derive the
      year of birth
    - If the age of the person is unknown, an estimated age of the person should
      be used to estimate a year of birth
    - An actual or estimated year of birth should then be converted into an
      estimated date of birth using the
      following convention: 0101Estimated year of birth.
    - If the date of birth is totally unknown, use 09099999.
    - If you have estimated the year of birth make sure you record this in the
      'Estimated date of birth flag'
  

:METeOR: `287007 <http://meteor.aihw.gov.au/content/index.phtml/itemId/287007>`__

----------

.. _dfn-est_date_of_birth:

Client - Estimated Date of Birth Flag
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The date of birth estimate flag records whether or not the client's date of birth has been estimated.

:Field name: est_date_of_birth

:Data type: string

:Domain:
  :1: Date of birth is accurate
  :2: Date of birth is an estimate
  :8: Date of birth is a 'dummy' date (ie, 09099999)
  :9: Accuracy of stated date of birth is not known

----------

.. _dfn-client_gender:

Client - Gender
^^^^^^^^^^^^^^^

The term 'gender' refers to the way in which a person identifies their masculine or feminine characteristics. A persons gender relates to their deeply held internal and individual sense of gender and is not always exclusively male or female. It may or may not correspond to their sex assigned at birth.

:Field name: client_gender

:Data type: string

:Domain:
  :0: Not stated/Inadequately described
  :1: Male
  :2: Female
  :3: Other

:ABS: `http://www.abs.gov.au/ausstats/abs@.nsf/Latestproducts/1200.0.55.012Main%20Features12016?opendocument&tabname=Summary&prodno=1200.0.55.012&issue=2016&num=&view= <http://www.abs.gov.au/ausstats/abs@.nsf/Latestproducts/1200.0.55.012Main%20Features12016?opendocument&tabname=Summary&prodno=1200.0.55.012&issue=2016&num=&view=>`__

----------

.. _dfn-client_key:

Client Key
^^^^^^^^^^

This is a number or code assigned to each individual referred to the commissioned organisation. The client identifier is unique and stable for each individual witin the PHN.

:Field name: client_key

:Data type: string
:Notes:
  Client keys must be unique within each PHN independent of the treating
  organisation. It is the responsibility of PHNs and Provider Organisations to
  co-ordinate to maintain this identifier. Clients should not be assigned
  multiple keys within the same PHN.
  

----------

.. _dfn-main_lang_at_home:

Client - Main Language Spoken at Home
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The language reported by a client as the main language other than English spoken by that client in his/her home (or most recent private residential setting occupied by the client) to communicate with other residents of the home or setting and regular visitors, as represented by a code.

:Field name: main_lang_at_home

:Data type: string[4]
:Notes:
  `Australian Standard Classification of Languages (ASCL), 2016 4-digit code (ABS
  Catalogue No. 1267.0) <http://www.abs.gov.au/ausstats/abs@.nsf/mf/1267.0>`_
  or 9999 if info is not known or client refuses to supply.
  
  The ABS recommends the following question in order to collect this data:
  Which language does the client mainly speak at home? (If more than one
  language, indicate the one that is spoken most often.)
  
  Organisations are encouraged to produce customised lists of the most common
  countries based on their local populations from the above resource.
  

:METeOR: `460125 <http://meteor.aihw.gov.au/content/index.phtml/itemId/460125>`__

:ABS: `http://www.abs.gov.au/ausstats/abs@.nsf/mf/1267.0 <http://www.abs.gov.au/ausstats/abs@.nsf/mf/1267.0>`__

----------

.. _dfn-prof_english:

Client - Proficiency in Spoken English
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The self-assessed level of ability to speak English, asked of people whose first language is a language other than English or who speak a language other than English at home.

:Field name: prof_english

:Data type: string

:Domain:
  :0: Not applicable (persons under 5 years of age or who speak only English)
  :1: Very well
  :2: Well
  :3: Not well
  :4: Not at all
  :9: Not stated/inadequately described
:Notes:
  0 - Not applicable (persons under 5 years of age or who speak only English)
    Not applicable, is to be used for people under 5 years of age and people
    who speak only English.
  
  9 - Not stated/inadequately described
    Not stated/inadequately described, is not to be used on primary collection
    forms. It is primarily for use in administrative collections when
    transferring data from data sets where the item has not been collected.
  

:METeOR: `270203 <http://meteor.aihw.gov.au/content/index.phtml/itemId/270203>`__

----------

.. _dfn-slk:

Client - Statistical Linkage Key
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A key that enables two or more records belonging to the same individual to be brought together.

:Field name: slk

:Data type: string
:Notes:
  System generated non-identifiable alphanumeric code derived from information
  held by the PMHC organisation.
  
  Supported formats:
    - 14 character `SLK
      <http://meteor.aihw.gov.au/content/index.phtml/itemId/349510>`_
    - a `Crockford encoded <http://www.crockford.com/wrmg/base32.html>`_ sha1
      hash of a 14 character SLK. This must be 32 characters in length.
    - a hex encoded sha1 hash of a 14 character SLK. This must be 40 characters
      in length.
  
  SLK values are stored in sha1_hex format.
  

:METeOR: `349510 <http://meteor.aihw.gov.au/content/index.phtml/itemId/349510>`__

----------

.. _dfn-client_tags:

Client - Tags
^^^^^^^^^^^^^

List of tags for the client.

:Field name: client_tags

:Data type: string
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-measure_date:

Collection Occasion - Measure Date
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The date the measure was given.

:Field name: measure_date

:Data type: date
:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  

----------

.. _dfn-reason_for_collection:

Collection Occasion - Reason
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The reason for the collection of the outcome measures on the identified Outcome Collection Occasion.

:Field name: reason_for_collection

:Data type: string

:Domain:
  :1: Episode start
  :2: Review
  :3: Episode end
:Notes:
  1 - Episode start
    Refers to an outcome measure undertaken at the beginning of an Episode of Care. For the purposes of the PMHC MDS protocol, episodes may start at the point of first Service Contact with a new client who has not been seen previously by the organisation, or a first contact for a new Episode of Care for a client who has received services from the organisation in a previous Episode of Care that has been completed.
  
  2 - Review
    Refers to an outcome measure undertaken during the course of an Episode of
    Care that post-dates Episode Start and pre-dates Episode End. An outcome
    measure may be undertaken at Review for a number of reasons including:
  
    - in response to critical clinical events or changes in the client’s mental
      health status;
    - following a client-requested review; or
    - other situations where a review may be indicated.
  
  3 - Episode end
    Refers to the outcome measures collected at the end of an Episode of Care.
  

----------

.. _dfn-collection_occasion_key:

Collection Occasion Key
^^^^^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each collection occasion of outcome measures. The Collection Occasion Key is unique and stable for each collection occasion at the level of the organisation.

:Field name: collection_occasion_key

:Data type: string

----------

.. _dfn-additional_diagnosis:

Episode - Additional Diagnosis
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The main additional condition or complaint co-existing with the Principal Diagnosis or arising during the episode of care.

:Field name: additional_diagnosis

:Data type: string

:Domain:
  See *Episode - Principal Diagnosis*
:Notes:
  Additional Diagnosis gives information on conditions that are significant in
  terms of treatment required and resources used during the episode of care.
  Additional diagnoses should be interpreted as conditions that affect client
  management in terms of requiring any of the following:
  
  -	Commencement, alteration or adjustment of therapeutic treatment
  -	Diagnostic procedures
  -	Increased clinical care and/or monitoring
  
  Where the client one or more comorbid mental health conditions in addition to
  the condition coded as the Principal Diagnosis, record the main condition as
  the Additional Diagnosis. For further notes on the recording of diagnosis codes
  see Principal Diagnosis
  

----------

.. _dfn-client_postcode:

Episode - Area of usual residence, postcode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Australian postcode of the client.

:Field name: client_postcode

:Data type: string[4]
:Notes:
  A valid Australian postcode or 9999 if the postcode is unknown or the client
  has not provided sufficient information to confirm their current residential
  address.
  
  The full list of Australian Postcodes can be found at `Australia Post
  <http://www.auspost.com.au/>`_.
  
  When collecting the postcode of a person's usual place of residence, the ABS
  recommends that 'usual' be defined as: 'the place where the person has or
  intends to live for 6 months or more, or the place that the person regards as
  their main residence, or where the person has no other residence, the place
  they currently reside.'
  

:METeOR: `429894 <http://meteor.aihw.gov.au/content/index.phtml/itemId/429894>`__

----------

.. _dfn-client_consent:

Episode - Client Consent to De-identified Data
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication that the client has consented to their de-identified data being provided to the Department of Health for the purposes of planning and improving mental health services.

:Field name: client_consent

:Data type: string

:Domain:
  :1: Yes
  :2: No
:Notes:
  1 - Yes
    The client has consented to their de-identified data being provided to
    the Department of Health. The client's data will be excluded from reports and
    extracts accessible by the Department of Health.
  
  2 - No
    The client has not consented to their de-identified data being provided to
    the Department of Health. The client's data will be excluded from reports and
    extracts accessible by the Department of Health.
  

----------

.. _dfn-episode_completion_status:

Episode - Completion Status
^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of the completion status of an *Episode of Care*.

:Field name: episode_completion_status

:Data type: string

:Domain:
  :1: Episode closed - treatment concluded
  :2: Episode closed administratively - client could not be contacted
  :3: Episode closed administratively - client declined further contact
  :4: Episode closed administratively - client moved out of area
  :5: Episode closed administratively - client referred elsewhere
  :6: Episode closed administratively - other reason
:Notes:
  In order to use code 1 (Episode closed - treatment concluded) the client must have at least one service contact. All other codes may be applicable even when the client has no service contacts. 
  
  1 - Episode closed - treatment concluded
    No further service contacts are planned as the client no longer requires
    treatment.
  
  2 - Episode closed administratively - client could not be contacted
    Further service contacts were planned but the client could no longer be
    contacted.
  
  3 - Episode closed administratively - client declined further contact
    Further service contacts were planned but the client declined further treatment.
  
  4 - Episode closed administratively - client moved out of area
    Further service contacts were planned but the client moved out of the area
    without a referral elsewhere. Where a client was referred somewhere else
    *Episode Completion Status* should be recorded as code 5 (Episode closed
    administratively - client referred elsewhere).
  
  5 - Episode closed administratively - client referred elsewhere
    Where a client still requires treatment, but a different service has been
    deemed appropriate or a client has moved out of the area so has moved to a
    different provider.
  
  6 - Episode closed administratively - other reason
    Where a client is no longer being given treatment but the reason for
    conclusion is not covered above.
  
  *Episode Completion Status* interacts with two other data items in the PMHC MDS
  - *Service Contact - Final*, and *Episode End Date*.
  
  *Service Contact - Final*
    Collection of data for *Service Contacts* includes a *Service Contact -
    Final* item that requires the service provider to indicate whether further
    Service Contacts are planned. Where this item is recorded as 'no further
    services planned', the *Episode Completion Status* should be recorded as code
    1 (Episode closed - treatment concluded) code 3 (Episode closed
    administratively - client declined further contact), code 4 (Episode closed
    administratively - client moved out of area), or code 5 (Episode closed
    administratively - client referred elsewhere). Selection of coding option
    should be that which best describes the circumstances of the episode ending.
  
  *Episode End Date* where a Final Service Contact is recorded *Episode End Date*
  should be recorded as the date of the final Service Contact.
  

----------

.. _dfn-employment_participation:

Episode - Employment Participation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether a person in paid employment is employed full-time or part-time, as represented by a code.

:Field name: employment_participation

:Data type: string

:Domain:
  :1: Full-time
  :2: Part-time
  :3: Not applicable - not in the labour force
  :9: Not stated/inadequately described
:Notes:
  Applies only to people whose labour force status is employed. (See metadata
  item Labour Force Status, for a definition of 'employed'). Paid employment
  includes persons who performed some work for wages or salary, in cash or in
  kind, and persons temporarily absent from a paid employment job but who
  retained a formal attachment to that job.
  
  1 - Full-time
    Employed persons are working full-time if they:
    (a) usually work 35 hours or more in a week (in all paid jobs) or
    (b) although usually working less than 35 hours a week, actually worked 35
    hours or more during the reference period.
  
  2 - Part-time
    Employed persons are working part-time if they usually work less than 35
    hours a week (in all paid jobs) and either did so during the reference
    period, or were not at work in the reference period.
  
  9 - Not stated / inadequately described
    Is not to be used on primary collection forms. It is primarily for use in
    administrative collections when transferring data from data sets where the
    item has not been collected.
  

:METeOR: `269950 <http://meteor.aihw.gov.au/content/index.phtml/itemId/269950>`__

----------

.. _dfn-episode_end_date:

Episode - End Date
^^^^^^^^^^^^^^^^^^

The date on which an *Episode of Care* is formally or administratively ended

:Field name: episode_end_date

:Data type: date
:Notes:
  An *Episode of Care* may be ended in one of two ways:
  
  - clinically, consequent upon conclusion of treatment for the client and
    discharge from care; or
  
  - administratively (statistically), where contact with the client has been lost
    by the organisation prior to completion of treatment or other factors
    prevented treatment being completed.
  
  *Episode End Date* interacts with two other data items in the PMHC MDS - *Service
  Contact - Final*, and *Episode Completion Status*.
  
  *Service Contact - Final*
    Collection of data for *Service Contacts* includes a *Service Contact - Final*
    item that requires the service provider to indicate whether further *Service
    Contacts* are planned. Where this item is recorded as ‘no further services
    planned’, the date of the final *Service Contact* should be recorded as the
    *Episode End Date*.
  
  *Episode Completion Status*
    This field should be recorded as 'Episode closed treatment concluded' when a
    *Service Contact - Final* is recorded. The *Episode Completion Status* field
    can also be manually recorded to allow for administrative closure of episodes
    (e.g., contact has been lost with a client over a prolonged period - see
    *Episode Completion Status* for additional guidance). Where an episode is
    closed administratively, the *Episode End Date* should be recorded as the
    date on which the organisation made the decision to close episode.
  
  

:METeOR: `614094 <http://meteor.aihw.gov.au/content/index.phtml/itemId/614094>`__

----------

.. _dfn-mental_health_treatment_plan:

Episode - GP Mental Health Treatment Plan Flag
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of whether a client has a GP mental health treatment plan. A GP should be involved in a referral where appropriate however a mental health treatment plan is not mandatory.

:Field name: mental_health_treatment_plan

:Data type: string

:Domain:
  :1: Yes
  :2: No
  :3: Unknown
  :9: Not stated/inadequately described

----------

.. _dfn-health_care_card:

Episode - Health Care Card
^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of whether the person is a current holder of a Health Care Card that entitles them to arrange of concessions for Government funded health services.

:Field name: health_care_card

:Data type: string

:Domain:
  :1: Yes
  :2: No
  :3: Not Known
  :9: Not stated
:Notes:
  Further notes to be added...
  
  Details on the Australian Government Health Care Card are available at:
  https://www.humanservices.gov.au/customer/services/centrelink/health-care-card
  

:METeOR: `605149 <http://meteor.aihw.gov.au/content/index.phtml/itemId/605149>`__

----------

.. _dfn-homelessness:

Episode - Homelessness Flag
^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of whether the client has been homeless in the 4 weeks prior to the current service episode.

:Field name: homelessness

:Data type: string

:Domain:
  :1: Sleeping rough or in non-conventional accommodation
  :2: Short-term or emergency accommodation
  :3: Not homeless
:Notes:
  1	- Sleeping rough or in non-conventional accommodation
    Includes sleeping on the streets, in a park, in cars or railway carriages,
    under bridges or other similar ‘rough’ accommodation
  
  2	- Short-term or emergency accommodation
    Includes sleeping in short-term accommodation, emergency accommodation, due
    to a lack of other options. This may include refuges; crisis shelters; couch
    surfing; living temporarily with friends and relatives; insecure
    accommodation on a short term basis; emergency accommodation arranged in
    hotels, motels etc by a specialist homelessness agency.
  
  3	- Not homeless
    Includes sleeping in own accommodation/rental accommodation or living with
    friends or relatives on a stable, long term basis
  
  Select the code that best fits the client’s sleeping arrangements over the
  preceding 4 weeks. Where multiple options apply (e.g., client has experienced
  more than one of the sleeping arrangements over the previous 4 weeks) the
  following coding hierarchy should be followed:
  
  - If code 1 applied at any time over the 4 week period, code 1
  - If code 2 but not code 1 applied at any time over the 4 week period, code 2
  - Otherwise Code 3 applies
  

----------

.. _dfn-episode_key:

Episode Key
^^^^^^^^^^^

This is a number or code assigned to each episode. The Episode Key is unique and stable for each episode at the level of the organisation.

:Field name: episode_key

:Data type: string
:Notes:
  Episode Keys must be genrated by the organisation to be unique at the provider
  organisation level and must persist across time. Creation of episode keys in
  this way allows clients to be merged (where duplicate Client Keys have been
  identified) without having to re-allocate episode identifiers since they can
  never clash.
  
  A recommended approach for the creation of Episode Keys is to compute `random
  UUIDs <https://en.wikipedia.org/wiki/Universally_unique_identifier>`_.
  

----------

.. _dfn-labour_force_status:

Episode - Labour Force Status
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The self-reported status the person currently has in being either in the labour force (employed/unemployed) or not in the labour force, as represented by a code.

:Field name: labour_force_status

:Data type: string

:Domain:
  :1: Employed
  :2: Unemployed
  :3: Not in the Labour Force
  :9: Not stated/inadequately described
:Notes:
  1 - Employed
    Employed persons are those aged 15 years and over who met one of the following
    criteria during the reference week:
  
    - Worked for one hour or more for pay, profit, commission or payment in kind,
      in a job or business or son a farm (employees and owner managers of
      incorporated or unincorporated enterprises).
    - Worked for one hour or more without pay in a family business or on a farm
      (contributing family workers).
    - Were employees who had a job but were not at work and were:
  
      - away from work for less than four weeks up to the end of the reference
        week; or
      - away from work for more than four weeks up to the end of the reference
        week and
      - received pay for some or all of the four week period to the end of the
        reference week; or
      - away from work as a standard work or shift arrangement; or
      - on strike or locked out; or
      - on workers’ compensation and expected to return to their job.
    - Were owner managers who had a job, business or farm, but were not at work.
  
  2 - Unemployed
    Unemployed persons are those aged 15 years and over who were not employed
    during the reference week, and:
  
    - had actively looked for full time or part time work at any time in the
      four weeks up to the end of the reference week and were available for
      work in the reference week; or
    - were waiting to start a new job within four weeks from the end of the
      reference week and could have started in the reference week if the job
      had been available then.
  
  Actively looked for work includes:
  
    - written, telephoned or applied to an employer for work;
    - had an interview with an employer for work;
    - answered an advertisement for a job;
    - checked or registered with a Job Services Australia provider or any other
      employment agency;
    - taken steps to purchase or start your own business;
    - advertised or tendered for work; and
    - contacted friends or relatives in order to obtain work.
  
  3 - Not in the labour force
    Persons not in the labour force are those aged 15 years and over who were
    not in the categories employed or unemployed, as defined, during the
    reference week. They include people who undertook unpaid household duties
    or other voluntary work only, were retired, voluntarily inactive and those
    permanently unable to work.
  

:METeOR: `621450 <http://meteor.aihw.gov.au/content/index.phtml/itemId/621450>`__

----------

.. _dfn-marital_status:

Episode - Marital Status
^^^^^^^^^^^^^^^^^^^^^^^^

A person's current relationship status in terms of a couple relationship or, for those not in a couple relationship, the existence of a current or previous registered marriage, as represented by a code.

:Field name: marital_status

:Data type: string

:Domain:
  :1: Never married
  :2: Widowed
  :3: Divorced
  :4: Separated
  :5: Married (registered and de facto)
  :6: Not stated/inadequately described
:Notes:
  Refers to the current marital status of a person.
  
  2 - Widowed
    This code usually refers to registered marriages but when self-reported may
    also refer to de facto marriages.
  
  4 - Separated
    This code refers to registered marriages but when self-reported may also
    refer to de facto marriages.
  
  5 - Married (registered and de facto)
    Includes people who have been divorced or widowed but have since
    re-married, and should be generally accepted as applicable to all de facto
    couples, including of the same sex.
  
  6 - Not stated/inadequately described
    This code is not for use on primary collection forms. It is primarily for
    use in administrative collections when transferring data from data sets
    where the item has not been collected.
  

:METeOR: `291045 <http://meteor.aihw.gov.au/content/index.phtml/itemId/291045>`__

----------

.. _dfn-medication_antidepressants:

Episode - Medication - Antidepressants (N06A)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed antidepressants for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_antidepressants

:Data type: string

:Domain:
  :1: Yes
  :2: No
  :9: Unknown
:Notes:
  The N06A class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed for the depressive disorders.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N06A
  

----------

.. _dfn-medication_antipsychotics:

Episode - Medication - Antipsychotics (N05A)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed antipsychotics for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_antipsychotics

:Data type: string

:Domain:
  :1: Yes
  :2: No
  :9: Unknown
:Notes:
  The N05A class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed for the treatment of psychotic
  disorders.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N05A
  

----------

.. _dfn-medication_anxiolytics:

Episode - Medication - Anxiolytics (N05B)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed anxiolytics for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_anxiolytics

:Data type: string

:Domain:
  :1: Yes
  :2: No
  :9: Unknown
:Notes:
  The N05B class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed for the treatment of disorders
  associated with anxiety and tension.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N05B
  

----------

.. _dfn-medication_hypnotics:

Episode - Medication - Hypnotics and sedatives (N05C)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed hypnotics and sedatives for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_hypnotics

:Data type: string

:Domain:
  :1: Yes
  :2: No
  :9: Unknown
:Notes:
  The N05C class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed to have mainly sedative or hypnotic
  actions. Hypnotic drugs are used to induce sleep and treat severe insomnia.
  Sedative drugs are prescribed to reduce excitability or anxiety.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N05C
  

----------

.. _dfn-medication_psychostimulants:

Episode - Medication - Psychostimulants and nootropics (N06B)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed psychostimulants and nootropics for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_psychostimulants

:Data type: string

:Domain:
  :1: Yes
  :2: No
  :9: Unknown
:Notes:
  The N06B class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed to attention-deficit hyperactivity
  disorder (ADHD) and to improve impaired cognitive abilities.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N06B
  

----------

.. _dfn-ndis_participant:

Episode - NDIS Participant
^^^^^^^^^^^^^^^^^^^^^^^^^^

Is the client a participant in the National Disability Insurance Scheme?, as represented by a code.

:Field name: ndis_participant

:Data type: string

:Domain:
  :1: Yes
  :2: No
  :9: Not stated/inadequately described

----------

.. _dfn-principal_diagnosis:

Episode - Principal Diagnosis
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Principal Diagnosis is the diagnosis established after study to be chiefly responsible for occasioning the client's care during the current Episode of Care.

:Field name: principal_diagnosis

:Data type: string

:Domain:
  :101: Panic disorder
  :102: Agoraphobia
  :103: Social phobia
  :104: Generalised anxiety disorder
  :105: Obsessive-compulsive disorder
  :106: Post-traumatic stress disorder
  :107: Acute stress disorder
  :108: Other anxiety disorder
  :201: Major depressive disorder
  :202: Dysthymia
  :203: Depressive disorder NOS
  :204: Bipolar disorder
  :205: Cyclothymic disorder
  :206: Other affective disorder
  :301: Alcohol harmful use
  :302: Alcohol dependence
  :303: Other drug harmful use
  :304: Other drug dependence
  :305: Other substance use disorder
  :401: Schizophrenia
  :402: Schizoaffective disorder
  :403: Brief psychotic disorder
  :404: Other psychotic disorder
  :501: Separation anxiety disorder
  :502: Attention deficit hyperactivity disorder (ADHD)
  :503: Conduct disorder
  :504: Oppositional defiant disorder
  :505: Pervasive developmental disorder
  :506: Other disorder of childhood and adolescence
  :601: Adjustment disorder
  :602: Eating disorder
  :603: Somatoform disorder
  :604: Personality disorder
  :605: Other mental disorder
  :901: Anxiety symptoms
  :902: Depressive symptoms
  :903: Mixed anxiety and depressive symptoms
  :904: Stress related
  :905: Other
:Notes:
  Dignoses are grouped into 7 major categories:
  
  - 1xx - Anxiety disorders
  - 2xx - Affective (Mood) disorders
  - 3xx - Substance use disorders
  - 4xx - Psychotic disorder
  - 5xx - Disorders with onset usually occurring in childhood and adolescence not listed elsewhere 
  - 6xx - Other mental disorder
  - 9xx - No formal mental disorder but subsyndromal problem
  
  The Principal Diagnosis should be determined by the treating or supervising
  clinical practitioner who is responsible for providing, or overseeing, services
  delivered to the client during their current episode of care. Each episode of
  care must have a Principal Diagnosis recorded and may have an Additional
  Diagnoses. In some instances the client’s Principal Diagnosis may not be clear
  at initial contact and require a period of contact before a reliable diagnosis
  can be made. If a client has more than one diagnosis, the Principal Diagnosis
  should reflect the main presenting problem. Any secondary diagnosis should be
  recorded under the Additional Diagnosis field.
  
  The coding options developed for the PMHC MDS have been selected to balance
  comprehensiveness and brevity. They comprise a mix of the most prevalent mental
  disorders in the Australian adult, child and adolescent population,
  supplemented by less prevalent conditions that may be experienced by clients of
  PHN-commissioned mental health services. The diagnosis options are based on an
  abbreviated set of clinical terms and groupings specified in the Diagnostic and
  Statistical Manual of Mental Disorders Fourth Edition (DSM-IV-TR) (add link to
  reference below). These code list summarises the approximate 300 unique mental
  health disorder codes in the full DSM-IV to a set to 9 major categories, and 37
  individual codes. Diagnoses are grouped under higher level categories, based on
  the DSM-IV. Code numbers have been assigned specifically for the PMHC MDS to
  create a logical ordering but are capable of being mapped to both DSM-IV and
  ICD-10 codes.
  
  Options for recording Principal Diagnosis include the broad category ‘No formal
  mental disorder but subsyndromal problem’ (codes commencing with 9). These
  codes should be used for clients who present with problems that do not meet
  threshold criteria for a formal diagnosis - for example, people experiencing
  subsyndromal symptoms who may be at risk of progressing to a more severe
  symptom level.
  
  Reference: Diagnostic and Statistical Manual of Mental Disorders, Fourth
  Edition, Text Revision. Copyright 2000 American Psychiatric Association.

----------

.. _dfn-principal_focus:

Episode - Principal Focus of Treatment Plan
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The range of activities that best describes the overall services intended to be delivered to the client throughout the course of the episode. For most clients, this will equate to the activities that account for most time spent by the service provider.

:Field name: principal_focus

:Data type: string

:Domain:
  :1: Psychological therapy
  :2: Low intensity psychological intervention
  :3: Clinical care coordination
  :4: Complex care package for adults
  :5: Child and youth-specific mental health services
  :6: Indigenous-specific mental health services
  :7: Other
:Notes:
  Describes the main focus of the services to be delivered to the client for the
  current Episode of Care, selected from a defined list of categories.
  
  Service providers are required to report on the 'Principal Focus of Treatment
  Plan' for all accepted referrals. This requires a judgement to be made about
  the main focus of the services to be delivered to the client for the current
  Episode of Care, made following initial assessment and modifiable at a later
  stage. It is chosen from a defined list of categories, with the provider
  required to select the category that best fits the treatment plan designed for
  the client.
  
  Principal Focus of Treatment Plan is necessarily a judgement made by the
  provider at the outset of service delivery but consistent with good practice,
  should be made on the basis of a treatment plan developed in collaboration with
  the client. It should not be confused with Service Type which is collected at
  each Service Contact.
  
  1 - Psychological therapy
    The treatment plan for the client is primarily based around the delivery of
    psychological therapy by one or more mental health professionals. This
    category most closely matches the type of services delivered under the
    previous ATAPS program where up to 12 individual treatment sessions, and 18
    in exceptional circumstances, could be provided. These sessions could be
    supplemented by up to 10 group-based sessions.
  
    The concept of 'mental health professionals' has a specific meaning defined
    in the various guidance documentation prepared to support PHNs in
    implementation of reforms. It refers to service providers who meet the
    requirements for registration, credentialing or recognition as a qualified
    mental health professional and includes:
  
    - Psychiatrists
    - Registered Psychologists
    - Clinical Psychologists
    - Mental Health Nurses;
    - Occupational Therapists;
    - Social Workers
    - Aboriginal and Torres Strait Islander health workers.
  
  2 - Low intensity psychological intervention
    The treatment plan for the client is primarily based around delivery of
    time-limited, structured psychological interventions that are aimed at
    providing a less costly intervention alternative to 'standard' psychological
    therapy. The essence of low intensity interventions is that they utilise nil
    or relatively little qualified mental health professional time and are
    targeted at people with, or at risk of, mild mental illness. Low intensity
    episodes can be delivered through a range of mechanisms including:
  
    - use of individuals with appropriate competencies but who do not meet the
      requirements for registration, credentialing or recognition as a mental
      health professional;
    - delivery of services principally through group-based programs; and
    - delivery of brief or low cost forms of treatment by mental health
      professionals.
  
  3 - Clinical care coordination
    The treatment plan for the client is primarily based around delivery of a
    range of services where the overarching aim is to coordinate and better
    integrate care for the individual across multiple providers with the aim of
    improving clinical outcomes. Consultation and liaison may occur with primary
    health care providers, acute health, emergency services, rehabilitation and
    support services or other agencies that have some level of responsibility for
    the client’s clinical outcomes. These clinical care coordination and liaison
    activities are expected to account for a significant proportion of service
    contacts delivered throughout these episodes.
  
    Activities focused on working in partnership and liaison with other health
    care and service providers and other individuals to coordinate and integrate
    service delivery to the client with the aim of improving their clinical
    outcomes. Consultation and liaison may occur with primary health care
    providers, acute health, emergency services, rehabilitation and support
    services, family, friends, other support people and carers and other agencies
    that have some level of responsibility for the client’s treatment and/or
    well-being.
  
  4 - Complex care package for adults
    The treatment plan for the client is primarily based around the delivery of
    an individually tailored 'package' of services for an adult client with
    severe and complex mental illness who is being managed principally within a
    primary care setting. The overarching requirement is the episode of care aims
    to bundle a range of services that extend beyond 'standard' service delivery
    where this would not otherwise not sufficiently meet clinical needs.
    
  5 - Child and youth-specific mental health services
    The treatment plan for the client is primarily based around the delivery of a
    range of services for children (0-11 years) or youth (aged 12-24 years) who
    present with a mental illness, or are at risk of mental illness. These
    episodes are characterised by services that are designed specifically for
    children and young people, include a broader range of both clinical and
    non-clinical services and may include a significant component of clinical
    care coordination and liaison. Child and youth-specific mental health
    episodes have substantial flexibility in types of services actually delivered.
    
  6 - Indigenous-specific services
    The treatment plan for the client is primarily based around delivery of
    mental health services that are specifically designed to provide culturally
    appropriate services for Aboriginal and Torres Strait Islander peoples.
  
  7 - Other
     The treatment plan for the client is primarily based around services
     that cannot be described by other categories.
  

----------

.. _dfn-referral_date:

Episode - Referral Date
^^^^^^^^^^^^^^^^^^^^^^^

The date the referrer made the referral.

:Field name: referral_date

:Data type: date
:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  

----------

.. _dfn-referrer_organisation_type:

Episode - Referrer Organisation Type
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Type of organisation in which the referring professional is based.

:Field name: referrer_organisation_type

:Data type: string

:Domain:
  :1: General Practice
  :2: Medical Specialist Consulting Rooms
  :3: Private practice
  :4: Public mental health service
  :5: Public Hospital
  :6: Private Hospital
  :7: Emergency Department
  :8: Community Health Centre
  :9: Drug and Alcohol Service
  :10: Community Support Organisation NFP
  :11: Indigenous Health Organisation
  :12: Child and Maternal Health
  :13: Nursing Service
  :14: Telephone helpline
  :15: Digital health service
  :16: Family Support Service
  :17: School
  :18: Tertiary Education institution
  :19: Housing service
  :20: Centrelink
  :21: Other
  :98: N/A - Self referral
  :99: Not stated
:Notes:
  Medical Specialist Consulting Rooms includes private medical practitioner rooms
  in public or private hospital or other settings.
  
  Public mental health service refers to a state- or territory-funded specialised
  mental health services (i.e., specialised mental health care delivered in
  public acute and psychiatric hospital settings, community mental health care
  services, and s specialised residential mental health care services).
  
  Not applicable should only be selected in instances of Self referral.
  

----------

.. _dfn-referrer_profession:

Episode - Referrer Profession
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Profession of the provider who referred the client.

:Field name: referrer_profession

:Data type: string

:Domain:
  :1: General Practitioner
  :2: Psychiatrist
  :3: Obstetrician
  :4: Paediatrician
  :5: Other Medical Specialist
  :6: Midwife
  :7: Maternal Health Nurse
  :8: Psychologist
  :9: Mental Health Nurse
  :10: Social Worker
  :11: Occupational therapist
  :12: Aboriginal Health Worker
  :13: Educational professional
  :14: Early childhood service worker
  :15: Other
  :98: N/A - Self referral
  :99: Not stated
:Notes:
  New arrangements for some services delivered in primary mental health care
  allows clients to refer themselves for treatment. Therefore, 'Self'
  is a response option included within 'Referrer profession'.
  

----------

.. _dfn-income_source:

Episode - Source of Cash Income
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The source from which a person derives the greatest proportion of his/her income, as represented by a code.

:Field name: income_source

:Data type: string

:Domain:
  :1: Disability Support Pension
  :2: Other pension or benefit (not superannuation)
  :3: Paid employment
  :4: Compensation payments
  :5: Other (e.g. superannuation, investments etc.)
  :6: Nil income
  :7: Not known
  :9: Not stated/inadequately described
:Notes:
  This data standard is not applicable to person's aged less than 16 years.
  
  This item refers to the source by which a person derives most (equal to or
  greater than 50%) of his/her income. If the person has multiple sources of
  income and none are equal to or greater than 50%, the one which contributes
  the largest percentage should be counted.
  
  This item refers to a person's own main source of income, not that of a
  partner or of other household members. If it is difficult to determine a
  'main source of income' over the reporting period (i.e. it may vary over
  time) please report the main source of income during the reference week.
  
  Code 7 'Not known' should only be recorded when it has not been possible for
  the service user or their carer/family/advocate to provide the information
  (i.e. they have been asked but do not know).
  

:METeOR: `386449 <http://meteor.aihw.gov.au/content/index.phtml/itemId/386449>`__

----------

.. _dfn-suicide_referral_flag:

Episode - Suicide Referral Flag
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Identifies those individuals where a recent history of suicide attempt, or suicide risk, was a factor noted in the referral that underpinned the person's needs for assistance at entry to the episode, as represented by a code.

:Field name: suicide_referral_flag

:Data type: string

:Domain:
  :1: Yes
  :2: No
  :9: Unknown

----------

.. _dfn-episode_tags:

Episode - Tags
^^^^^^^^^^^^^^

List of tags for the episode.

:Field name: episode_tags

:Data type: string
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-k5_item1:

K5 - Question 1
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel nervous?

:Field name: k5_item1

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k5_item2:

K5 - Question 2
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel without hope?

:Field name: k5_item2

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k5_item3:

K5 - Question 3
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel restless or jumpy?

:Field name: k5_item3

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k5_item4:

K5 - Question 4
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel everything was an effort?

:Field name: k5_item4

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k5_item5:

K5 - Question 5
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel so sad that nothing could cheer you up?

:Field name: k5_item5

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k5_tags:

K5 - Tags
^^^^^^^^^

List of tags for the collection occasion.

:Field name: k5_tags

:Data type: string
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-k10p_item1:

K10+ - Question 1
^^^^^^^^^^^^^^^^^

In the past 4 weeks, about how often did you feel tired out for no good reason?

:Field name: k10p_item1

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k10p_item2:

K10+ - Question 2
^^^^^^^^^^^^^^^^^

In the past 4 weeks, about how often did you feel nervous?

:Field name: k10p_item2

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k10p_item3:

K10+ - Question 3
^^^^^^^^^^^^^^^^^

In the past 4 weeks, about how often did you feel so nervous that nothing could calm you down?

:Field name: k10p_item3

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k10p_item4:

K10+ - Question 4
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel hopeless?

:Field name: k10p_item4

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k10p_item5:

K10+ - Question 5
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel restless or fidgety?

:Field name: k10p_item5

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k10p_item6:

K10+ - Question 6
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel so restless you could not sit still?

:Field name: k10p_item6

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k10p_item7:

K10+ - Question 7
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel depressed?

:Field name: k10p_item7

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k10p_item8:

K10+ - Question 8
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel that everything was an effort?

:Field name: k10p_item8

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k10p_item9:

K10+ - Question 9
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel so sad that nothing could cheer you up?

:Field name: k10p_item9

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k10p_item10:

K10+ - Question 10
^^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel worthless?

:Field name: k10p_item10

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k10p_item11:

K10+ - Question 11
^^^^^^^^^^^^^^^^^^

In the past four weeks, how many days were you totally unable to work, study or manage your day to day activities because of these feelings?

:Field name: k10p_item11

:Data type: integer

----------

.. _dfn-k10p_item12:

K10+ - Question 12
^^^^^^^^^^^^^^^^^^

Aside from those days, in the past four weeks, how many days were you able to work or study or manage your day to day activities, but had to cut down on what you did because of these feelings?

:Field name: k10p_item12

:Data type: integer

----------

.. _dfn-k10p_item13:

K10+ - Question 13
^^^^^^^^^^^^^^^^^^

In the past four weeks, how many times have you seen a doctor or any other health professional about these feelings?

:Field name: k10p_item13

:Data type: integer

----------

.. _dfn-k10p_item14:

K10+ - Question 14
^^^^^^^^^^^^^^^^^^

In the past four weeks, how often have physical health problems been the main cause of these feelings?

:Field name: k10p_item14

:Data type: string

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

----------

.. _dfn-k10p_tags:

K10+ - Tags
^^^^^^^^^^^

List of tags for the collection occasion.

:Field name: k10p_tags

:Data type: string
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-organisation_path:

Organisation Path
^^^^^^^^^^^^^^^^^

A sequence of colon separated Organisation Codes that fully specifies the upload organisation.

:Field name: organisation_path

:Data type: string

----------

.. _dfn-practitioner_atsi_status:

Practitioner - Aboriginal and Torres Strait Islander Status
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether a person identifies as being of Aboriginal and/or Torres Strait Islander origin, as represented by a code.

:Field name: practitioner_atsi_status

:Data type: string

:Domain:
  :1: Aboriginal but not Torres Strait Islander origin
  :2: Torres Strait Islander but not Aboriginal origin
  :3: Both Aboriginal and Torres Strait Islander origin
  :4: Neither Aboriginal or Torres Strait Islander origin
  :9: Not stated/inadequately described
:Notes:
  Code 9 is not to be available as a valid answer to the questions but is
    intended for use:
  
    - Primarily when importing data from other data collections that do not
      contain mappable data.
    - Where an answer was refused.
    - Where the question was not able to be asked prior to completion of
      assistance because the client was unable to communicate or a person who
      knows the client was not available.
  

:METeOR: `291036 <http://meteor.aihw.gov.au/content/index.phtml/itemId/291036>`__

----------

.. _dfn-practitioner_active:

Practitioner - Active
^^^^^^^^^^^^^^^^^^^^^

A flag to represent whether a practitioner is actively delivering services. This is a system field that is aimed at helping organisations manage practitioner codes.

:Field name: practitioner_active

:Data type: string

:Domain:
  :0: Inactive
  :1: Active

----------

.. _dfn-atsi_cultural_training:

Practitioner - ATSI Cultural Training
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Indicates whether a practitioner has completed a recognised training programme in the delivery of culturally safe services to Aboriginal and Torres Strait Islander peoples.

:Field name: atsi_cultural_training

:Data type: string

:Domain:
  :1: Yes
  :2: No
  :3: Not required
  :9: Missing / Not recorded
:Notes:
  This item is reported by the practitioner and applies to service providers who are either:
  
  -	not of Aboriginal or Torres Strait Islander status; or
  -	are not employed by an Aboriginal Community Controlled Health Service.
  
  1	- Yes
    The practitioner has:
  
    - undertaken specific training in the delivery of culturally appropriate
      mental health /health services for Aboriginal and Torres Strait Islander
      peoples. As a guide, recognised training programs include those endorsed by
      the Australian Indigenous Psychologists’ Association (AIPA) or similar
      organisation; or
    - undertaken local cultural awareness training in the community in which they
      are practising, as delivered or endorsed by the elders of that community or
      the local Aboriginal Community Controlled Health Service.
  
  2 - No
    The practitioner has not met the requirements stated above.
  
  3 - Not required
    This option is reserved only for practitioners who are of Aboriginal and
    Torres Strait Islander descent, or employed by an Aboriginal Community
    Controlled Health Service.
  
  4 - Missing/Not recorded
    This is a system code for missing data and not a valid response option for
    practitioners.
  

----------

.. _dfn-practitioner_category:

Practitioner - Category
^^^^^^^^^^^^^^^^^^^^^^^

The type or category of the practitioner, as represented by a code.

:Field name: practitioner_category

:Data type: string

:Domain:
  :1: Clinical Psychologist
  :2: General Psychologist
  :3: Social Worker
  :4: Occupational Therapist
  :5: Mental Health Nurse
  :6: Aboriginal and Torres Strait Islander Health/Mental Health Worker
  :7: Low Intensity Mental Health Worker
  :8: General Practitioner
  :9: Psychiatrist
  :10: Other Medical
  :11: Other
  :99: Not stated
:Notes:
  

----------

.. _dfn-practitioner_gender:

Practitioner - Gender
^^^^^^^^^^^^^^^^^^^^^

The term 'gender' refers to the way in which a person identifies their masculine or feminine characteristics. A persons gender relates to their deeply held internal and individual sense of gender and is not always exclusively male or female. It may or may not correspond to their sex assigned at birth.

:Field name: practitioner_gender

:Data type: string

:Domain:
  :0: Not stated/Inadequately described
  :1: Male
  :2: Female
  :3: Other

:ABS: `http://www.abs.gov.au/ausstats/abs@.nsf/Latestproducts/1200.0.55.012Main%20Features12016?opendocument&tabname=Summary&prodno=1200.0.55.012&issue=2016&num=&view= <http://www.abs.gov.au/ausstats/abs@.nsf/Latestproducts/1200.0.55.012Main%20Features12016?opendocument&tabname=Summary&prodno=1200.0.55.012&issue=2016&num=&view=>`__

----------

.. _dfn-practitioner_key:

Practitioner Key
^^^^^^^^^^^^^^^^

A unique identifier for a practitioner within the responsible organisation. Assigned by the organisation.

:Field name: practitioner_key

:Data type: string

----------

.. _dfn-practitioner_tags:

Practitioner - Tags
^^^^^^^^^^^^^^^^^^^

List of tags for the practitioner.

:Field name: practitioner_tags

:Data type: string
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-practitioner_year_of_birth:

Practitioner - Year of Birth
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The year the practitioner was born.

:Field name: practitioner_year_of_birth

:Data type: gYear

:Domain:
  gYear
:Notes:
  If the year of birth is unknown, the following approaches should be used:
  
  - If the age of the practitioner is known, the age should be used to derive the
    year of birth
  - If the age of the practitioner is unknown, an estimated age of the practitioner should
    be used to estimate a year of birth
  - If the date of birth is totally unknown, use 9999.
  

----------

.. _dfn-organisation_abn:

Provider Organisation - ABN
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Australian Business Number of the provider organisation.

:Field name: organisation_abn

:Data type: string

----------

.. _dfn-organisation_name:

Provider Organisation - Name
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The name of the provider organisation.

:Field name: organisation_name

:Data type: string

----------

.. _dfn-organisation_state:

Provider Organisation - State
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The state that the provider organisation operates in.

:Field name: organisation_state

:Data type: string

:Domain:
  :1: New South Wales
  :2: Victoria
  :3: Queensland
  :4: South Australia
  :5: Western Australia
  :6: Tasmania
  :7: Northern Territory
  :8: Australian Capital Territory
  :9: Other Territories
:Notes:
  - Name is taken from Australian `Statistical Geography Standard (ASGS) July
    2011
    <http://www.abs.gov.au/ausstats/abs@.nsf/0/871A7FF33DF471FBCA257801000DCD5
    F?Opendocument>`_.
  - Code is from Meteor with the addition of code for Other Territories.
  

:METeOR: `613718 <http://meteor.aihw.gov.au/content/index.phtml/itemId/613718>`__

----------

.. _dfn-organisation_tags:

Provider Organisation - Tags
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

List of tags for the provider organisation.

:Field name: organisation_tags

:Data type: string
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-organisation_type:

Provider Organisation - Type
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The type of the provider organisation.

:Field name: organisation_type

:Data type: string

:Domain:
  :1: Primary Heath Network
  :2: Private Primary Health Care Organisation - for profit
  :3: Private Primary Health Care Organisation - not for profit
  :4: Medicare Local
  :5: Division of General Practice
  :6: Aboriginal Health/Medical Service
  :7: General Practice
  :8: Private Psychiatry service
  :9: Drug and/or Alcohol Service
  :10: Community-managed Community Support Organisation
  :11: State/Territory Health Services
  :12: Headspace Centre
  :13: Solo Practitioner
  :14: Other
:Notes:
  Coding options will be finalised following feedback from PHNs.
  

----------

.. _dfn-organisation_key:

Provider Organisation Key
^^^^^^^^^^^^^^^^^^^^^^^^^

A sequence of characters which uniquely identifies the provider organisation. Assigned by the Primary Health Network.

:Field name: organisation_key

:Data type: string

----------

.. _dfn-sdq_version:

SDQ Collection Occasion - Version
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The version of the SDQ collected.

:Field name: sdq_version

:Data type: string

:Domain:
  :PC101: Parent Report Measure 4-10 yrs, Baseline version, Australian Version 1
  :PC201: Parent Report Measure 4-10 yrs, Follow Up version, Australian Version 1
  :PY101: Parent Report Measure 11-17 yrs, Baseline version, Australian Version 1
  :PY201: Parent Report Measure 11-17 yrs, Follow Up version, Australian Version 1
  :YR101: Self report Version, 11-17 years, Baseline version, Australian Version 1
  :YR201: Self report Version, 11-17 years, Follow Up version, Australian Version 1
:Notes:
  Domain values align with those collected in the NOCC dataset as defined at
  https://webval.validator.com.au/spec/NOCC/current/SDQ/SDQVer
  

----------

.. _dfn-sdq_item1:

SDQ - Question 1
^^^^^^^^^^^^^^^^

Parent Report: Considerate of other people's feelings.

Youth Self Report: I try to be nice to other people. I care about their feelings.

:Field name: sdq_item1

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item2:

SDQ - Question 2
^^^^^^^^^^^^^^^^

Parent Report: Restless, overactive, cannot stay still for long.

Youth Self Report: I am restless, I cannot stay still for long.

:Field name: sdq_item2

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item3:

SDQ - Question 3
^^^^^^^^^^^^^^^^

Parent Report: Often complains of headaches, stomach-aches or sickness.

Youth Self Report: I get a lot of headaches, stomach-aches or sickness.

:Field name: sdq_item3

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item4:

SDQ - Question 4
^^^^^^^^^^^^^^^^

Parent Report: Shares readily with other children {for example toys, treats, pencils} / young people {for example CDs, games, food}.

Youth Self Report: I usually share with others, for examples CDs, games, food.

:Field name: sdq_item4

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item5:

SDQ - Question 5
^^^^^^^^^^^^^^^^

Parent Report: Often loses temper.

Youth Self Report: I get very angry and often lose my temper.

:Field name: sdq_item5

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item6:

SDQ - Question 6
^^^^^^^^^^^^^^^^

Parent Report: {Rather solitary, prefers to play alone} / {would rather be alone than with other young people}.

Youth Self Report: I would rather be alone than with people of my age.

:Field name: sdq_item6

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item7:

SDQ - Question 7
^^^^^^^^^^^^^^^^

Parent Report: {Generally well behaved} / {Usually does what adults requests}.

Youth Self Report: I usually do as I am told.

:Field name: sdq_item7

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item8:

SDQ - Question 8
^^^^^^^^^^^^^^^^

Parent Report: Many worries or often seems worried.

Youth Self Report: I worry a lot.

:Field name: sdq_item8

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item9:

SDQ - Question 9
^^^^^^^^^^^^^^^^

Parent Report: Helpful if someone is hurt, upset or feeling ill.

Youth Self Report: I am helpful if someone is hurt, upset or feeling ill.

:Field name: sdq_item9

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item10:

SDQ - Question 10
^^^^^^^^^^^^^^^^^

Parent Report: Constantly fidgeting or squirming.

Youth Self Report: I am constantly fidgeting or squirming.

:Field name: sdq_item10

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item11:

SDQ - Question 11
^^^^^^^^^^^^^^^^^

Parent Report: Has at least one good friend.

Youth Self Report: I have one good friend or more.

:Field name: sdq_item11

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item12:

SDQ - Question 12
^^^^^^^^^^^^^^^^^

Parent Report: Often fights with other {children} or bullies them / {young people}.

Youth Self Report: I fight a lot. I can make other people do what I want.

:Field name: sdq_item12

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item13:

SDQ - Question 13
^^^^^^^^^^^^^^^^^

Parent Report: Often unhappy, depressed or tearful.

Youth Self Report: I am often unhappy, depressed or tearful.

:Field name: sdq_item13

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item14:

SDQ - Question 14
^^^^^^^^^^^^^^^^^

Parent Report: Generally liked by other {children} / {young people}

Youth Self Report: Other people my age generally like me.

:Field name: sdq_item14

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item15:

SDQ - Question 15
^^^^^^^^^^^^^^^^^

Parent Report: Easily distracted, concentration wanders.

Youth Self Report: I am easily distracted, I find it difficult to concentrate.

:Field name: sdq_item15

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item16:

SDQ - Question 16
^^^^^^^^^^^^^^^^^

Parent Report: Nervous or {clingy} in new situations, easily loses confidence {omit clingy in PY}.

Youth Self Report: I am nervous in new situations. I easily lose confidence.

:Field name: sdq_item16

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item17:

SDQ - Question 17
^^^^^^^^^^^^^^^^^

Parent Report: Kind to younger children.

Youth Self Report: I am kind to younger people.

:Field name: sdq_item17

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item18:

SDQ - Question 18
^^^^^^^^^^^^^^^^^

Parent Report: Often lies or cheats.

Youth Self Report: I am often accused of lying or cheating.

:Field name: sdq_item18

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item19:

SDQ - Question 19
^^^^^^^^^^^^^^^^^

Parent Report: Picked on or bullied by {children} / {youth}.

Youth Self Report: Other children or young people pick on me or bully me.

:Field name: sdq_item19

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item20:

SDQ - Question 20
^^^^^^^^^^^^^^^^^

Parent Report: Often volunteers to help others (parents, teachers, {other} children) / Omit 'other' in PY.

Youth Self Report: I often volunteer to help others (parents, teachers, children).

:Field name: sdq_item20

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item21:

SDQ - Question 21
^^^^^^^^^^^^^^^^^

Parent Report: Thinks things out before acting.

Youth Self Report: I think before I do things.

:Field name: sdq_item21

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item22:

SDQ - Question 22
^^^^^^^^^^^^^^^^^

Parent Report: Steals from home, school or elsewhere.

Youth Self Report: I take things that are not mine from home, school or elsewhere.

:Field name: sdq_item22

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item23:

SDQ - Question 23
^^^^^^^^^^^^^^^^^

Parent Report: Gets along better with adults than with other {children} / {youth}.

Youth Self Report: I get along better with adults than with people my own age.

:Field name: sdq_item23

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item24:

SDQ - Question 24
^^^^^^^^^^^^^^^^^

Parent Report: Many fears, easily scared.

Youth Self Report: I have many fears, I am easily scared.

:Field name: sdq_item24

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item25:

SDQ - Question 25
^^^^^^^^^^^^^^^^^

Parent Report: Good attention span sees chores or homework through to the end.

Youth Self Report: I finish the work I'm doing. My attention is good.

:Field name: sdq_item25

:Data type: string

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item26:

SDQ - Question 26
^^^^^^^^^^^^^^^^^

Parent Report: Overall, do you think that your child has difficulties in any of the following areas: emotions, concentration, behaviour or being able to get along with other people?

Youth Self Report: Overall, do you think that you have difficulties in any of the following areas: emotions, concentration, behaviour or being able to get along with other people?

:Field name: sdq_item26

:Data type: string

:Domain:
  :0: No
  :1: Yes - minor difficulties
  :2: Yes - definite difficulties
  :3: Yes - severe difficulties
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item27:

SDQ - Question 27
^^^^^^^^^^^^^^^^^

Parent Report: How long have these difficulties been present?

Youth Self Report: How long have these difficulties been present?

:Field name: sdq_item27

:Data type: string

:Domain:
  :0: Less than a month
  :1: 1-5 months
  :2: 6-12 months
  :3: Over a year
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  - PC101
  - PY101
  - YR101
  

----------

.. _dfn-sdq_item28:

SDQ - Question 28
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties upset or distress your child?

Youth Self Report: Do the difficulties upset or distress you?

:Field name: sdq_item28

:Data type: string

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item29:

SDQ - Question 29
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? HOME LIFE.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? HOME LIFE.

:Field name: sdq_item29

:Data type: string

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item30:

SDQ - Question 30
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? FRIENDSHIPS.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? FRIENDSHIPS.

:Field name: sdq_item30

:Data type: string

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item31:

SDQ - Question 31
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? CLASSROOM LEARNING.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? CLASSROOM LEARNING

:Field name: sdq_item31

:Data type: string

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item32:

SDQ - Question 32
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? LEISURE ACTIVITIES.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? LEISURE ACTIVITIES.

:Field name: sdq_item32

:Data type: string

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item33:

SDQ - Question 33
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties put a burden on you or the family as a whole?

Youth Self Report: Do the difficulties make it harder for those around you (family, friends, teachers, etc)?

:Field name: sdq_item33

:Data type: string

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions: All
  

----------

.. _dfn-sdq_item34:

SDQ - Question 34
^^^^^^^^^^^^^^^^^

Parent Report: Since coming to the services, are your child's problems:

Youth Self Report: 'Since coming to the service, are your problems:

:Field name: sdq_item34

:Data type: string

:Domain:
  :0: Much worse
  :1: A bit worse
  :2: About the same
  :3: A bit better
  :4: Much better
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  - PC201
  - PY201
  - YR201
  

----------

.. _dfn-sdq_item35:

SDQ - Question 35
^^^^^^^^^^^^^^^^^

Has coming to the service been helpful in other ways eg. providing information or making the problems bearable?

:Field name: sdq_item35

:Data type: string

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  - PC201
  - PY201
  - YR201
  

----------

.. _dfn-sdq_item36:

SDQ - Question 36
^^^^^^^^^^^^^^^^^

Over the last 6 months have your child's teachers complained of fidgetiness, restlessness or overactivity?

:Field name: sdq_item36

:Data type: string

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  - PC101
  - PY101
  

----------

.. _dfn-sdq_item37:

SDQ - Question 37
^^^^^^^^^^^^^^^^^

Over the last 6 months have your child's teachers complained of poor concentration or being easily distracted?

:Field name: sdq_item37

:Data type: string

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  - PC101
  - PY101
  

----------

.. _dfn-sdq_item38:

SDQ - Question 38
^^^^^^^^^^^^^^^^^

Over the last 6 months have your child's teachers complained of acting without thinking, frequently butting in, or not waiting for his or her turn?

:Field name: sdq_item38

:Data type: string

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  - PC101
  - PY101
  

----------

.. _dfn-sdq_item39:

SDQ - Question 39
^^^^^^^^^^^^^^^^^

Does your family complain about you having problems with overactivity or poor concentration?

:Field name: sdq_item39

:Data type: string

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  - YR101
  

----------

.. _dfn-sdq_item40:

SDQ - Question 40
^^^^^^^^^^^^^^^^^

Do your teachers complain about you having problems with overactivity or poor concentration?

:Field name: sdq_item40

:Data type: string

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  - YR101
  

----------

.. _dfn-sdq_item41:

SDQ - Question 41
^^^^^^^^^^^^^^^^^

Does your family complain about you being awkward or troublesome?

:Field name: sdq_item41

:Data type: string

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  - YR101
  

----------

.. _dfn-sdq_item42:

SDQ - Question 42
^^^^^^^^^^^^^^^^^

Do your teachers complain about you being awkward or troublesome?

:Field name: sdq_item42

:Data type: string

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing
:Notes:
  Required Versions:
  - YR101
  

----------

.. _dfn-sdq_tags:

SDQ - Tags
^^^^^^^^^^

List of tags for the collection occasion.

:Field name: sdq_tags

:Data type: string
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-service_contact_participation_indicator:

Service Contact - Client Participation Indicator
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indicator of whether the client participated in the service contact, as represented by a code.

:Field name: service_contact_participation_indicator

:Data type: string

:Domain:
  :1: Yes
  :2: No
:Notes:
  Service contacts are not restricted to in-person communication but can include
  telephone, video link or other forms of direct communication.
  
  1 - Yes
    This code is to be used for service contacts between a mental health service
    provider and the patient/client in whose clinical record the service contact
    would normally warrant a dated entry, where the patient/client is
    participating.
  
  2 - No
    This code is to be used for service contacts between a mental health service
    provider and a third party(ies) where the patient/client, in whose clinical
    record the service contact would normally warrant a dated entry, is not
    participating.
  

:METeOR: `494341 <http://meteor.aihw.gov.au/content/index.phtml/itemId/494341>`__

----------

.. _dfn-service_contact_copayment:

Service Contact - Copayment
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The co-payment is the amount paid by the client per session.

:Field name: service_contact_copayment

:Data type: number
:Notes:
  Up to 6 digits before the decimal point; up to 2 digits after the decimal
  point.
  
  The co-payment is the amount paid by the client per service contact, not the
  fee paid by the project to the practitioner or the fee paid by the project to the
  practitioner plus the client contribution. In many cases, there will not be a
  co-payment charged and therefore zero should be entered. Where a co-payment
  is charged it should be minimal and based on an individual's capacity to pay.
  

----------

.. _dfn-service_contact_date:

Service Contact - Date
^^^^^^^^^^^^^^^^^^^^^^

The date of each mental health service contact between a health service provider and patient/client.

:Field name: service_contact_date

:Data type: date
:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  

:METeOR: `494356 <http://meteor.aihw.gov.au/content/index.phtml/itemId/494356>`__

----------

.. _dfn-service_contact_duration:

Service Contact - Duration
^^^^^^^^^^^^^^^^^^^^^^^^^^

The time from the start to finish of a service contact.

:Field name: service_contact_duration

:Data type: string

:Domain:
  :1: 0-15 mins
  :2: 16-30 mins
  :3: 31-45 mins
  :4: 46-60 mins
  :5: 61-75 mins
  :6: 76-90 mins
  :7: 91-105 mins
  :8: 106-120 mins
  :9: over 120 mins
:Notes:
  For group sessions the time for client spent in the session is recorded for
  each client, regardless of the number of clients or third parties participating
  or the number of service providers providing the service. Writing up details of
  service contacts is not to be reported as part of the duration, except if
  during or contiguous with the period of client or third party participation.
  Travel to or from the location at which the service is provided, for example to
  or from outreach facilities or private homes, is not to be reported as part of
  the duration of the service contact.

----------

.. _dfn-service_contact_final:

Service Contact - Final
^^^^^^^^^^^^^^^^^^^^^^^

An indication of whether the Service Contact is the final for the current Episode of Care

:Field name: service_contact_final

:Data type: string

:Domain:
  :1: No further services are planned for the client in the current episode
  :2: Further services are planned for the client in the current episode
  :3: Not known at this stage
:Notes:
  Service providers should report this item on the basis of future planned or
  scheduled contacts with the client. Where this item is recorded as 1 (No
  further services planned), the episode should be recorded as completed by:
  
  - the date of the final Service Contact should be recorded as the Episode End
    Date
  - the Episode Completion Status field should be recorded as ‘Treatment
    concluded.
  
  Note that no further Service Contacts can be recorded against an
  episode once it is marked as completed. Where an episode has been marked as
  completed prematurely, the Episode End Date can be manually corrected to allow
  additional activity to be recorded.
  

----------

.. _dfn-service_contact_interpreter:

Service Contact - Interpreter Used
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether an interpreter service was used during the Service Contact

:Field name: service_contact_interpreter

:Data type: string

:Domain:
  :1: Yes
  :2: No
  :9: Not stated
:Notes:
  Interpreter services includes verbal language, non-verbal language and
  languages other than English.
  
  1 - Yes
    Use this code where interpreter services were used during the Service
    Contact. Use of interpreter services for any form of sign language or other
    forms of non-verbal communication should be coded as Yes.
  
  2 - No
    Use this code where interpreter services were not used during the Service
    Contact.
  
  9 - Not stated
    Indicates that the item was not collected. This item should not appear as an
    option for clinicians, it is for administrative use only.
  

----------

.. _dfn-service_contact_modality:

Service Contact - Modality
^^^^^^^^^^^^^^^^^^^^^^^^^^

How the service contact was delivered, as represented by a code.

:Field name: service_contact_modality

:Data type: string

:Domain:
  :1: Face to Face
  :2: Telephone
  :3: Video
  :4: Internet-based
:Notes:
  - If 'Face to Face' is selected, a value other than 'Not applicable' must
    be selected for Service Contact Venue
  - If 'Face to Face' is selected a valid Australian
    postcode must be entered for Service Contact Postcode.
  

----------

.. _dfn-service_contact_no_show:

Service Contact - No Show
^^^^^^^^^^^^^^^^^^^^^^^^^

Where an appointment was made for a client, but the client failed to attend the appointment, as represented by a code.

:Field name: service_contact_no_show

:Data type: string

:Domain:
  :1: Yes
  :2: No
:Notes:
  1 - Yes
    The client failed to attend the appointment.
  2 - No
    The client attended the appointment.
  

----------

.. _dfn-service_contact_participants:

Service Contact - Participants
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of whether a Service Contact is provided to one or more clients and participants in the Service Contact.

:Field name: service_contact_participants

:Data type: string

:Domain:
  :1: Individual client
  :2: Client group
  :3: Family / Client Support Network
  :4: Other
  :9: Not stated
:Notes:
  ***Coding categories for this item are under review and to be finalised pending PHN feedback***
  
  1	Individual
    Code applies for Service Contacts delivered individually to a single client
    without third party participants.
  
  2	Client group
    Code applies for Service Contacts delivered on a group basis to two or more
    clients.
  
  3	Family / Client Support Network
    Code applies to Service Contacts delivered to the family/social support
    persons of the client, with or without the participation of the client.
  
  4	Other
    Code applies to Service Contacts delivered to other third parties, with or
    without the participation of the client.
  
  This item interacts with Service Contact - Client Participation Indicator which
  is used to denote whether the individual client was a participant in the
  Service Contact.
  

----------

.. _dfn-service_contact_postcode:

Service Contact - Postcode
^^^^^^^^^^^^^^^^^^^^^^^^^^

The Australian postcode where the service contact took place.

:Field name: service_contact_postcode

:Data type: string[4]
:Notes:
  A valid Australian postcode or 9999 if the postcode is unknown. The full list
  of Australian Postcodes can be found at `Australia Post
  <http://www.auspost.com.au/>`_.
  
  - If Service Contact Modality is not 'Face to Face' enter 9999
  - If Service Contact Modality is 'Face to Face' a valid Australian postcode must be
    entered
  

:METeOR: `429894 <http://meteor.aihw.gov.au/content/index.phtml/itemId/429894>`__

----------

.. _dfn-service_contact_tags:

Service Contact - Tags
^^^^^^^^^^^^^^^^^^^^^^

List of tags for the service contact.

:Field name: service_contact_tags

:Data type: string
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-service_contact_type:

Service Contact - Type
^^^^^^^^^^^^^^^^^^^^^^

The main type of service provided in the service contact, as represented by the service type that accounted for most provider time.

:Field name: service_contact_type

:Data type: string

:Domain:
  :1: Assessment
  :2: Structured psychological intervention
  :3: Other psychological intervention
  :4: Clinical care coordination/liaison
  :5: Clinical nursing services
  :6: Child or youth specific assistance NEC
  :7: Suicide prevention specific assistance NEC
  :8: Cultural specific assistance NEC
:Notes:
  Describes the main type of service delivered in the contact, selected from a
  defined list of categories.  Where more than service type was provided select
  that which accounted for most provider time. Service providers are required
  to report on Service Type for all Service Contacts.
  
  1 - Assessment
    Determination of a person's mental health status and need for mental
    health services, made by a suitably trained mental health professional,
    based on the collection and evaluation of data obtained through interview
    and observation, of a person's history and presenting problem(s).
    Assessment may include consultation with the person's family and concludes
    with formation of problems/issues, documentation of a preliminary
    diagnosis, and a treatment plan.
  
  2 - Structured psychological intervention
    Those interventions which include a structured interaction between a
    client and a service provider using a recognised, psychological method,
    for example, cognitive behavioural techniques, family therapy or psycho
    education counselling. These are recognised, structured or published
    techniques for the treatment of mental ill-health. Structured psychological
    interventions are designed to alleviate psychological distress or
    emotional disturbance, change maladaptive behaviour and foster mental
    health. Structured psychological therapies can be delivered on either an
    individual or group basis, typically in an office or community setting.
    They may be delivered by trained mental health professionals or other
    individuals with appropriate competencies but who do not meet the
    requirements for registration, credentialing or recognition as a mental
    health professional. Structured Psychological Therapies include but are
    not limited to:
  
    - Psycho-education (including motivational interviewing)
    - Cognitive-behavioural therapies
    - Relaxation strategies
    - Skills training
    - Interpersonal therapy
  
  3 - Other psychological intervention
     Psychological interventions that do meet criteria for structured
     psychological intervention.
  
  4 - Clinical care coordination/liaison
     Activities focused on working in partnership and liaison with other
     health care and service providers and other individuals to coordinate
     and integrate service delivery to the client with the aim of improving
     their clinical outcomes. Consultation and liaison may occur with primary
     health care providers, acute health, emergency services, rehabilitation
     and support services, family, friends, other support people and carers
     and other agencies that have some level of responsibility for the
     client's treatment and/or well being.
  
  5 - Clinical nursing services
    Services delivered by mental health nurses that cannot be described
    elsewhere.  Typically, these aim to provide clinical support to clients
    to effectively manage their symptoms and avoid unnecessary hospitalisation.
    Clinical nursing services include:
  
    - monitoring a client's mental state;
    - liaising closely with family and carers as appropriate;
    - administering and monitoring compliance with medication;
    - providing information on physical health care, as required and,
      where appropriate, assist in addressing the physical health inequities
      of people with mental illness; and
    - improving links to other health professionals/clinical service providers.
  
  6 - Child or youth-specific assistance NEC
    Services delivered to, or on behalf, of a child or young person that cannot
    be described elsewhere. These can include, for example, working with a
    child’s teacher to provide advice on assisting the child in their educational
    environment; working with a young person's employer to assist the young
    person to their work environment.
  
    *Note: This code should only be used for
    Service Contacts that cannot be described by any other Service Type. It is
    expected that the majority of Service Contacts delivered to children and
    young people can be assigned to other categories*
  
  7 - Suicide prevention specific assistance NEC
    Services delivered to, or on behalf, of a client who presents with risk of
    suicide that cannot be described elsewhere. These can include, for example,
    working with the person's employers to advise on changes in the workplace;
    working with a young person's teacher to assist the child in their school
    environment; or working with relevant community-based groups to assist the
    client to participate in their activities.
  
    *Note: This code should only be used for Service Contacts that cannot be
    described by any other Service Type. It is expected that the majority of
    Service Contacts delivered to client’s who have a risk of suicide can be
    assigned to other categories.*
  
  8 - Cultural specific assistance NEC
    Culturally appropriate services delivered to, or on behalf, of an Aboriginal
    or Torres Strait Islander client that cannot be described elsewhere.  These
    can include, for example, working with the client’s community support network
    including family and carers, men’s and women’s groups, traditional healers,
    interpreters and social and emotional wellbeing counsellors.
  
    *Note: This code should only be used for Service Contacts that cannot be
    described by any other Service Type. It is expected that the majority of
    Service Contacts (see domains below) delivered to Aboriginal or Torres Strait
    Islander clients can be assigned to other categories.*
  

----------

.. _dfn-service_contact_venue:

Service Contact - Venue
^^^^^^^^^^^^^^^^^^^^^^^

Where the service contact was delivered, as represented by a code.

:Field name: service_contact_venue

:Data type: string

:Domain:
  :1: Client's Home
  :2: Service provider's office
  :3: GP Practice
  :4: Other medical practice
  :5: Headspace Centre
  :6: Other primary care setting
  :7: Public or private hospital
  :8: Aged care centre
  :9: School or other educational centre
  :10: Client's Workplace
  :11: Other
  :98: Not applicable (Service Contact Modality is not face to face)
:Notes:
  Values other than ‘Not applicable’ only to be specified when Service Contact
  Modality is ‘Face to Face’.
  
  Note that 'Other primary care setting' is suitable for primary care settings
  such as community health centres.
  

----------

.. _dfn-service_contact_key:

Service Contact Key
^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each service contact. The Service Contact Key is unique and stable for each service contact at the level of the organisation.

:Field name: service_contact_key

:Data type: string

----------

