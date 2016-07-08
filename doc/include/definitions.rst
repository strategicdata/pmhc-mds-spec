Definitions
-----------

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

Client - Country of Birth
^^^^^^^^^^^^^^^^^^^^^^^^^

The country in which the client was born, as represented by a code.

:Field name: country_of_birth

:Data type: string[4]
:Notes:
  `Standard Australian Classification of Countries 2011 (SACC 2011) 4-digit
  code (ABS Catalogue No. 1269.0)
  <http://www.abs.gov.au/ausstats/abs@.nsf/mf/1269.0>`_ SACC 2011 is a
  four-digit, three-level hierarchical structure specifying major group, minor
  group and country. 9999 is used when the information is not known or the
  client has refused to provide the information.
  
  Organisations are encouraged to produce customised lists of the most common
  languages in use by their local populations from the above resource.
  

:METeOR: `459973 <http://meteor.aihw.gov.au/content/index.phtml/itemId/459973>`__

----------

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

Client - Gender
^^^^^^^^^^^^^^^

The term 'gender' refers to the way in which a person identifies their masculine or feminine characteristics. A persons gender relates to their deeply held internal and individual sense of gender and is not always exclusively male or female. It may or may not correspond to their sex assigned at birth.

:Field name: gender

:Data type: string

----------

Client - Main Language Spoken at Home
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The language reported by a client as the main language other than English spoken by that client in his/her home (or most recent private residential setting occupied by the client) to communicate with other residents of the home or setting and regular visitors, as represented by a code.

:Field name: main_lang_at_home

:Data type: string[4]
:Notes:
  `Australian Standard Classification of Languages 2011 4-digit code (ABS
  Catalogue No. 1267.0) <http://www.abs.gov.au/ausstats/abs@.nsf/mf/1267.0>`_
  or 9999 if info is not known or client refuses to supply.
  
  The ABS recommends the following question in order to collect this data:
  Which language does the client mainly speak at home? (If more that one
  language, indicate the one that is spoken most often.)
  
  Organisations are encouraged to produce customised lists of the most common
  countries based on their local populations from the above resource.
  

:METeOR: `460125 <http://meteor.aihw.gov.au/content/index.phtml/itemId/460125>`__

----------

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

Client Key
^^^^^^^^^^

This is a number or code assigned to each individual referred to the commissioned organisation. The client identifier is unique and stable for each individual at the level of the PMHC top level organisation.

:Field name: client_key

:Data type: string
:Notes:
  Client keys must be unique across the entire PHN network independent of the
  treating organisation. It is the responsibility of PHNs and Provider
  Organisations to co-ordinate to maintain this identifier. Clients should not be
  assigned multiple keys within the same PHN.
  

----------

Collection Occasion - Date
^^^^^^^^^^^^^^^^^^^^^^^^^^

The date of the collection occasion.

:Field name: measure_date

:Data type: date
:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  

----------

Collection Occasion - Measure
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The name of the measure.

:Field name: measure

:Data type: string
:Notes:
  To be defined.
  

----------

Collection Occasion - Score
^^^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: score

:Data type: integer
:Notes:
  The value of the score at this collection occasion.
  

----------

Collection Occasion Key
^^^^^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each collection occasion of outcome measures. The Collection Occasion Key is unique and stable for each collection occasion at the level of the organisation.

:Field name: collection_occasion_key

:Data type: string

----------

Collection Occastion - Reason
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The reason for the collection of the outcome measures on the identified Outcome Collection Occasion.

:Field name: reason_for_collection

:Data type: string
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

Episode - Completion Status
^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of the completion status of an *Episode of Care*.

:Field name: episode_completion_status

:Data type: string

:Domain:
  :1: Episode closed - treatment concluded
  :2: Episode closed administratively - client could not be contacted
  :3: Episode closed administratively - client declined further contact
  :4: Episode closed administratively - Client moved out of area
  :5: Episode closed administratively - other reason
:Notes:
  *Episode Completion Status* interacts with two other data items in the PMHC MDS -
  *Service Contact - Final*, and *Episode End Date*.
  
  *Service Contact - Final*
    Collection of data for *Service Contacts* includes a *Service Contact - Final*
    item that requires the service provider to indicate whether further Service
    Contacts are planned. Where this item is recorded as 'no further services
    planned', the *Episode Completion Status* should be recorded as code 1 (Episode
    closed - treatment concluded)
  
  *Episode End Date*
    where a Final Service Contact is recorded and the *Episode Completion Status*
    field is recorded as code 1 (Episode closed - treatment concluded), *Episode
    End Date* should be recorded as the date of the final Service Contact.

----------

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
    Collection of data for *Service Contacts* includes a 'Final Service Contact'
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

Episode - PBS eligibility card type
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The type of eligibility card held by the patient or Pharmaceutical Benefits Scheme (PBS) consumer for whom the claim for a PBS benefit is made, as represented by a code.

:Field name: pbs_eligibility_type

:Data type: string

:Domain:
  :BC: Department of Veteranss' Affairs (Repatriation Pharmaceutical Benefits Scheme or 'Orange card')
  :CN: Pharmaceutical Benefits Scheme concessional entitlement (Department of Human Services - DHS)
  :DT: Dependant treatment entitlement (Department of Veterans' Affairs - DVA)
  :EI: Pensioner treatment entitlement (DVA)
  :ET: Pensioner treatment entitlement (DVA)
  :HB: Centresink (Health Benefits)
  :HC: Centrelink (Health Care Card)
  :JI: Pensioner treatment entitlement (DVA)
  :JT: Pensioner treatment entitlement (DVA)
  :KI: Pensioner treatment entitlement (DVA)
  :MC: Medicare (general entitlement) (DHS)
  :OC: Ostomy membership (colostomy/ileostomy)
  :PC: Pensioner concession (Department of Social Services - DSS, DVA)
  :PM: Pensioner treatment entitlement (DVA)
  :PS: Combined Pensioner concession/Senior Health Care (DVA)
  :PT: DVA (Pensioner treatment entitlement card (PTEC) or 'Gold card')
  :PW: Dependant treatment entitlement (DVA)
  :SB: Pensioner health benefits (DSS)/Centrelink (Seniors' benefit)
  :SC: Pharmaceutical benefits concession (DSS)
  :SH: Centrelink (Senior Health Card) or DVA (Senior Health Card)
  :SN: Pharmaceutical Benefit Safety Net (DHS)
  :SP: Service pension benefit (DVA)
  :ST: DVA (Specific treatment entitlement card (STEC) or 'White card')
  :VB: Pensioner health benefits (DVA)
:Notes:
  Most government-based assistance or benefits schemes typically require the
  presentation of an eligibility card of some sort at the time of the service
  being provided, to establish the eligibility of the cardholder in relation to
  receipt of the service or any associated benefit or subsidy.
  
  For example, a Medicare card must be presented either by on or the behalf of a
  patient visiting a general practitioner in order for a claim to be made for
  benefits available under the Medicare Benefits Schedule (MBS).
  
  Similarly, benefits available through the Pharmaceutical Benefits Scheme (PBS)
  can only be claimed upon presentation of a valid Medicare card and/or another
  applicable concession card.
  

:METeOR: `605149 <http://meteor.aihw.gov.au/content/index.phtml/itemId/605149>`__

----------

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
  :201a: PND
  :202: Dysthymia
  :203: Depressive disorder NOS
  :204: Bipolar disorder
  :205: Cyclothymic disorder
  :206: Other affective disorder
  :301: Alcohol harmful use
  :302: Alcohol dependence
  :303: Drug harmful use/abuse
  :304: Drug dependence
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
    integrate care for the individual across multiple providers. Clinical care
    coordination and liaison activities account for a significant proportion of
    service contacts delivered throughout these episodes.
  
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

Episode - Referrer Organisation Type
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The type of organisation making the referral.

:Field name: referrer_organisation_type

:Data type: string

:Domain:
  :1: General Practice
  :2: Medical Specialist
  :3: Hospital Ward
  :4: Emergency Department
  :5: Community Health - Government
  :6: Community Health - NFP
  :7: Non Government Organisation
  :8: School - Primary
  :9: School - Secondary
  :10: School - Pre/Kindergarten
  :11: School - Special
  :12: School - Other
  :13: University
  :14: TAFE
  :15: Child and Maternal Health
  :16: Nursing Service
  :17: Family Support Service
  :18: Mental Health Services
  :19: Housing Services
  :20: Help Lines and Referral Services
  :21: ATSI Health Organisation/Aboriginal Controlled Community Health Service
  :22: Acute Mental Health Team
  :23: Centrelink
  :24: Drug and Alcohol Service
  :25: Other?

----------

Episode - Referrer Profession
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The profession of the individual making the referral.

:Field name: referrer_profession

:Data type: string

:Domain:
  :1: General Practitioner
  :2: Psychiatrist
  :3: Case Manager
  :4: Midwife
  :5: Obstetrician
  :6: Maternal Health Nurse
  :7: Self
  :8: Social Worker
  :9: Clinical Psychologist
  :10: Generalist/Other Psychologist
  :11: Paediatrician
  :12: School psychologist / counsellor
  :13: Deputy principal or Principal
  :14: Director of Early Childhood Services or Equivalent
  :15: Aboriginal Health Worker
  :16: Outreach Worker
  :17: Mental Health Nurse
  :18: Other?

----------

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

Episode - Start Date
^^^^^^^^^^^^^^^^^^^^

The date on which the client formally commences an *Episode of Care*.

:Field name: episode_start_date

:Data type: date
:Notes:
  An Episode of Care should be recorded as commencing on the date the first
  Service Contact with the client is made.
  
  This field will be derived from the first service event date.
  

:METeOR: `614072 <http://meteor.aihw.gov.au/content/index.phtml/itemId/614072>`__

----------

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

Medication - Antidepressants (N06A)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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

Medication - Antipsychotics (N05A)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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

Medication - Anxiolytics (N05B)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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

Medication - Hypnotics and sedatives (N05C)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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

Medication - Psychostimulants and nootropics (N06B)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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

Organisation Path
^^^^^^^^^^^^^^^^^

A sequence of colon separated Organisation Codes that fully specifies the upload organisation.

:Field name: organisation_path

:Data type: string

----------

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

Practitioner - Active
^^^^^^^^^^^^^^^^^^^^^

A flag to represent whether a practitioner is actively delivering services. This is a system field that is aimed at helping organisations manage practitioner codes.

:Field name: practitioner_active

:Data type: string

:Domain:
  :0: Inactive
  :1: Active

----------

Practitioner - Category
^^^^^^^^^^^^^^^^^^^^^^^

The type or category of the practitioner, as represented by a code.

:Field name: practitioner_category

:Data type: string

:Domain:
  :1: Clincal Psychologist
  :2: Generalist/Other Psychologist
  :3: Social Worker
  :4: Occupational Therapist
  :5: Mental Health Nurse
  :6: Aboriginal and Torres Strait Islander Health/Mental Health Worker
  :7: Low Intensity Mental Health Worker
  :8: General Practitioner
  :9: Psychiatrist
  :10: Other Medical
  :11: Other
:Notes:
  Domain and definitions to be finalised following PHN advice.
  

----------

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

----------

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

Practitioner Key
^^^^^^^^^^^^^^^^

A unique identifier for a practitioner within the responsible organisation. Assigned by the organisation.

:Field name: practitioner_key

:Data type: string

----------

Provider Organisation - ABN
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Australian Business Number of the provider organisation.

:Field name: organisation_abn

:Data type: string

----------

Provider Organisation - Name
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The name of the provider organisation.

:Field name: organisation_name

:Data type: string

----------

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

Provider Organisation - Type
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The type of the provider organisation.

:Field name: organisation_type

:Data type: string

:Domain:
  :0: Primary Heath Network
  :1: Private Primary Health Care Organisation - for profit
  :2: Private Primary Health Care Organisation - not for profit
  :3: Medicare Local
  :4: Division of General Practice
  :5: Aboriginal Health/Medical Service
  :6: General Practice
  :7: Private Psychiatry service
  :8: Drug and/or Alcohol Service
  :9: Community-managed Community Support Organisation
  :10: State/Territory Health Services
  :11: Headspace Centre
  :12: Solo Practitioner
  :13: Other
:Notes:
  Coding options will be finalised following feedback from PHNs.
  

----------

Provider Organisation Key
^^^^^^^^^^^^^^^^^^^^^^^^^

A sequence of characters which uniquely identifies the provider organisation. Assigned by the Primary Health Network.

:Field name: organisation_key

:Data type: string

----------

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

Service Contact - Duration
^^^^^^^^^^^^^^^^^^^^^^^^^^

The time from the start to finish of a service contact.

:Field name: service_contact_duration

:Data type: string
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

Service Contact - Participants
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: service_contact_participants

:Data type: string
:Notes:
  Coding options will be finalised following feedback from PHNs.
  

----------

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
    Services delivered to, or on behalf, of an Aboriginal or Torres Strait
    Islander client that cannot be described elsewhere. These can include, for
    example, working with the client’s community network ... **(more to be
    added)**
  
    *Note: This code should only be used for Service Contacts that cannot be
    described by any other Service Type. It is expected that the majority of
    Service Contacts delivered to Aboriginal or Torres Strait Islander client’s
    can be assigned to other categories.*
  

----------

Service Contact - Venue
^^^^^^^^^^^^^^^^^^^^^^^

Where the service contact was delivered, as represented by a code.

:Field name: service_contact_venue

:Data type: string

:Domain:
  :1: Client's Home
  :2: Service provider's office Office
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

Service Contact Key
^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each service contact. The Service Contact Key is unique and stable for each service contact at the level of the organisation.

:Field name: service_contact_key

:Data type: string

----------

