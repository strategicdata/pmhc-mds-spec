Definitions
-----------

Aboriginal And Torres Strait Islander Status
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether a person identifies as being of Aboriginal and/or Torres Strait Islander origin, as represented by a code.

:Field name: IndigSt

:Data type: Char[1]

:Domain:
  :1: Aboriginal but not Torres Strait Islander origin
  :2: Torres Strait Islander but not Aboriginal origin
  :3: Both Aboriginal and Torres Strait Islander origin
  :4: Neither Aboriginal or Torres Strait Islander origin
  :9: Not stated/inadequately described

:Notes:
  Code 9 is not to be available as a valid answer to the questions but is intended for use:
  
  - Primarily when importing data from other data collections that do not contain mappable data.
  - Where an answer was refused.
  - Where the question was not able to be asked prior to completion of assistance because the client was unable
    to communicate or a person who knows the client was not available.

:METeOR: `291036 <http://meteor.aihw.gov.au/content/index.phtml/itemId/291036>`__

----------

Accommodation
^^^^^^^^^^^^^

The type of physical setting in which a person usually resides, as represented by a code.

:Field name: Accom

:Data type: Char[2]

:Domain:
  :1: Private residence (e.g. private or public rental, owned, purchasing etc)
  :2: Residence within an Aboriginal/Torres Strait Islander community (e.g. rented private residence, temporary shelter)
  :3: Domestic-scale supported living facility (e.g. group homes)
  :4: Supported accommodation facility (e.g. hostels, supported residential services or facilities)
  :5: Boarding house/private hotel
  :6: Independent living unit within a retirement village
  :7: Residential aged care facility (nursing home or aged care hostel)
  :8: Psychiatric/mental health community care facility
  :9: Hospital
  :10: Short term crisis, emergency or transitional accommodation facility (e.g. night shelters, refuges, hostels for the homeless, halfway houses)
  :11: Public place/temporary shelter
  :12: Other
  :99: Not stated/inadequately described

:Notes:
  'Usual' is defined as where the person usually resides for four or more days per week on average. If it is
  difficult to determine the person's 'usual' residential setting for the reporting period, the setting the person
  resided in during the reference week is reported.
  
  1 - Private residence (e.g. private or public rental, owned, purchasing etc)
   Private residence refers to private residences which include a wide range of dwelling types,
   such as houses, flats, units, caravans, mobile homes, boats etc.
  
  2 - Residence within an Aboriginal/Torres Strait Islander community (e.g. rented private residence, temporary shelter)
    Residence within an Aboriginal/Torres Strait Islander community should be used for service users that
    live in this type of setting, regardless of whether the residence is a private residence or a
    public place/temporary shelter (codes 1 and 11).
  
  3 - Domestic-scale supported living facility (e.g. group homes)
    Domestic-scale supported living facility refers to community living settings in which service users
    reside in a facility that provides support in some way by staff or volunteers. This category includes
    group homes, cluster apartments where a support worker lives on site, community residential apartments,
    congregate care arrangements, etc. Domestic-scale supported living settings may or may not have 24 hour
    supervision and care. Independent living units in retirement villages should be coded to 6 and
    community psychiatric facilities should be coded to 8. (Service users receiving service type
    1.04 'Group homes' should be coded to 3).
  
  4 - Supported accommodation facility (e.g. hostels, supported residential services or facilities)
    Supported accommodation facility refers to settings in which service users reside in an accommodation
    facility which provides board or lodging for a number of people and which has support services provided
    on what is usually a 24 hour basis by rostered care workers. (Service users receiving DS NMDS service
    types 1.01, 1.02 or 1.03 should be coded to 4). Supported accommodation facilities include hostels for
    people with disability. This code should be used for larger supported accommodation facilities
    (usually 7 or more people) that provide 24 hour supervision or care. Smaller supported accommodation
    facilities (i.e. less than 7 people) which may or may not have 24 hour supervision or care should be
    coded to 3 'Domestic-scale supported living facility'. Aged care hostels should be coded to 7
    'residential aged care facility'.
  
  5 - Boarding house/private hotel
    Refers to residing in a boarding house or in a private hotel.
  
  6 - Independent living unit within a retirement village
    Refers to residing in an independent living unit within a retirement village.
  
  7 - Residential aged care facility(nursing home or aged care hostel)
    Residential aged care facility includes permanent residents of Residential aged care services
    (formerly nursing homes and aged care hostels) and Multi-purpose services or Multi-purpose centres,
    who are receiving low level or high level care.
  
  8 - Psychiatric/mental health community care facility
    Psychiatric/mental health community care facility refers to community care units which provide
    accommodation and non-acute care and support on a temporary basis to people with mental illness
    or psychological disabilities.
  
  9 - Hospital
    Refers to residing in a hospital.
  
  10 - Short term crisis, emergency or transitional accommodation facility (e.g. night shelters, refuges, hostels for the homeless, halfway houses)
    Refers to residing in short term crisis accommodation, in emergency accommodation, or in a
    transitional accommodation facility. This includes night shelters, refuges, hostels for the homeless,
    and halfway houses.
  
  11 - Public place/temporary shelter
    Public place/temporary shelter includes public places such as streets and parks, as well as
    temporary shelters such as bus shelters or camps and accommodation outside legal tenure arrangements,
    such as squats.
  
  12 - Other
    Other includes situations such as a child under a court/guardianship order with no usual address.

:METeOR: `621477 <http://meteor.aihw.gov.au/content/index.phtml/itemId/621477>`__

----------

Area of ususal residence, postcode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Australian postcode of the client

:Field name: CliPCode

:Data type: Char[4]

:Domain:
  A valid Australian postcode or 9999 if the postcode is unknown or the client
  has not provided sufficient information to confirm their current residential
  address
  
  The full list of Australian Postcodes can be found at `Australia Post
  <http://www.auspost.com.au/>`_.

:METeOR: `429894 <http://meteor.aihw.gov.au/content/index.phtml/itemId/429894>`__

----------

Client Key
^^^^^^^^^^

This is a number or code assigned to each individual referred to the
commissioned organisation. The client identifier is unique and stable for each
individual at the level of the PMHC top level organisation.

:Field name: CliKey

:Data type: Char[20]

:Domain:
  A unique identifier for an individual within the PMHC top level organisation. Must be stable over time.

----------

Collection Occasion Key
^^^^^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each collection occasion in the
flexible funding pool. The Collection Occasion Key is unique and stable for each collection occasion at the
level of the organisation.

:Field name: ColocKey

:Data type: Char[20]

:Domain:
  A unique identifier for a collection occasion within the PMHC. Must be unique within an organisation and
  stable over time.

----------

Copayment
^^^^^^^^^

The co-payment is the amount paid by the client per session.

:Field name: Copayment

:Data type: Char[9]

:Domain:
  Up to 6 digits before the decimal point; up to 2 digits after the decimal point

:Notes:
  The co-payment is the amount paid by the client per session, not the fee paid by the project to
  the practitioner or the fee paid by the project to the practitioner plus the client contribution. In many cases,
  there will not be a co-payment charged and therefore zero should be entered. Where a co-payment is charged
  it should be minimal and based on an individual's capacity to pay.

----------

Country Of Birth
^^^^^^^^^^^^^^^^

The country in which the client was born, as represented by a code.

:Field name: CoB

:Data type: Char[4]

:Domain:
  `Standard Australian Classification of Countries 2011 (SACC 2011) 4-digit code (ABS Catalogue No. 1269.0) 
  <http://www.abs.gov.au/ausstats/abs@.nsf/mf/1269.0>`_
  SACC 2011 is a four-digit, three-level hierarchical structure specifying major group,
  minor group and country. 9999 is used when the information is not known or the client has refused to provide
  the information.

:Notes:
  The ABS recommends the following question in order to collect this data:
  In which country was the client born?
  
  - Australia
  - England
  - New Zealand
  - India
  - Vietnam
  - Philippines
  - South Africa
  - Scotland
  - Malaysia
  - Other - please specify ......................... 

:METeOR: `459973 <http://meteor.aihw.gov.au/content/index.phtml/itemId/459973>`__

----------

Cultural training flag
^^^^^^^^^^^^^^^^^^^^^^

A flag to represent whether a practitioner has done cultural training.

:Field name: CultFlag

:Data type: Char[1]

:Domain:
  :1: Yes
  :2: No
  :9: Missing/Not recorded

----------

Date of Birth
^^^^^^^^^^^^^

The date on which an individual was born

:Field name: DoB

:Data type: Date[8]

:Domain:
  Record the client's date of birth using DDMMYYYY format.

:Notes:
  If the date of birth is unknown, the following approaches should be used:
  
  - If the age of the person is known, the age should be used to derive the year of birth
  - If the age of the person is unknown, an estimated age of the person should be used to estimate a year of birth
  - An actual or estimated year of birth should then be converted into an estimated date of birth using the
    following convention: 0101Estimated year of birth.
  - If the date of birth is totally unknown, use 09099999.
  - If you have estimated the year of birth make sure you record this in the 'Estimated date of birth flag'

:METeOR: `287007 <http://meteor.aihw.gov.au/content/index.phtml/itemId/287007>`__

----------

Duration
^^^^^^^^

The time from the start to finish of a service contact.

:Field name: Duration

:Data type: Char[1]

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

----------

Employment Participation
^^^^^^^^^^^^^^^^^^^^^^^^

Whether a person in paid employment is employed full-time or part-time, as represented by a code.

:Field name: EmpPart

:Data type: Char[1]

:Domain:
  :1: Full-time
  :2: Part-time
  :7: Not applicable - not in the labour force
  :9: Not stated/inadequately described

:Notes:
  Applies only to people whose labour force status is employed. (See metadata item Labour Force Status,
  for a definition of 'employed'). Paid employment includes persons who performed some work for wages or
  salary, in cash or in kind, and persons temporarily absent from a paid employment job but who retained a
  formal attachment to that job.
  
  1 - Full-time
    Employed persons are working full-time if they:
    (a) usually work 35 hours or more in a week (in all paid jobs) or
    (b) although usually working less than 35 hours a week, actually worked 35 hours or more during
    the reference period.
  
  2 - Part-time
    Employed persons are working part-time if they usually work less than 35 hours a week (in all paid jobs)
    and either did so during the reference period, or were not at work in the reference period.
  
  9 - Not stated / inadequately described
    Is not to be used on primary collection forms. It is primarily for use in administrative collections
    when transferring data from data sets where the item has not been collected.

:METeOR: `269950 <http://meteor.aihw.gov.au/content/index.phtml/itemId/269950>`__

----------

Episode Completion Status
^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: CompSt

:Data type: Char[1]

:Domain:
  :1: Treatment complete
  :2: Patient could not be contacted
  :3: Patient refused treatment
  :4: Patient referred elsewhere
  :5: Treatment incomplete but referral closed
  :6: Patient ineligible

----------

Episode End Date
^^^^^^^^^^^^^^^^

The date on which an episode of mental health care is formally or statistically ended.

:Field name: EpiEnd

:Data type: Date[8]

:Domain:
  For Date fields, data must be recorded in compliance with the standard format used across the National Health
  Data Dictionary; specifically, dates must be of fixed 8 column width in the format DDMMYYYY, with leading
  zeros used when necessary to pad out a value. For instance, 13th March 2008 would appear as 13032008.

:METeOR: `614094 <http://meteor.aihw.gov.au/content/index.phtml/itemId/614094>`__

----------

Episode Key
^^^^^^^^^^^

This is a number or code assigned to each episode in the.
flexible funding pool. The Episode Key is unique and stable for each episode at the level of the
organisation.

:Field name: EpiKey

:Data type: Char[20]

:Domain:
  A unique identifier for an episode within the PMHC. Must be unique within an organisation and stable over time.

----------

Episode Start Date
^^^^^^^^^^^^^^^^^^

The date on which the client formally or statistically commences an episode of mental health care,
expressed as DDMMYYYY.

:Field name: EpiStart

:Data type: Date[8]

:Domain:
  For Date fields, data must be recorded in compliance with the standard format used across the National
  Health Data Dictionary; specifically, dates must be of fixed 8 column width in the format DDMMYYYY, with
  leading zeros used when necessary to pad out a value. For instance, 13th March 2008 would appear as 13032008.

:Notes:
  This field will be derived from the first service event date.

:METeOR: `614072 <http://meteor.aihw.gov.au/content/index.phtml/itemId/614072>`__

----------

Estimated Date of Birth Flag
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The date of birth estimate flag records whether or not the client's date of birth has been estimated.

:Field name: DoBFlag

:Data type: Char[1]

:Domain:
  :1: Date of birth is accurate
  :2: Date of birth is an estimate
  :8: Date of birth is a "dummy" date (ie, 09099999)
  :9: Accuracy of stated date of birth is not known

----------

Gender
^^^^^^

The term 'gender' refers to the way in which a person identifies their masculine or feminine
characteristics. A persons gender relates to their deeply held internal and individual sense of gender and is
not always exclusively male or female. It may or may not correspond to their sex assigned at birth.

:Field name: Gender

:Data type: Char[1]

:Domain:
  :0: Not stated/Inadequately described
  :1: Male
  :2: Female
  :3: Other
:Notes:
  As defined by Australian Bureau of Statistics `1200.0.55.012 - Standard for Sex and Gender Variables, 2016
  <http://www.abs.gov.au/ausstats/abs@.nsf/Latestproducts/1200.0.55.012Main%20Features12016?opendocument&tabname=Summary&prodno=1200.0.55.012&issue=2016&num=&view=>`_

----------

Income Status - Ranges? or Low Income?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: IncomeSt

:Data type: Char[1]

:Domain:
  To be defined

----------

Labour Force Status
^^^^^^^^^^^^^^^^^^^

The self-reported status the person currently has in being either in the labour force (employed/unemployed) or not in the labour force, as represented by a code.

:Field name: LabourSt

:Data type: Char[1]

:Domain:
  :1: Employed
  :2: Unemployed
  :3: Not in the Labour Force
  :9: Not stated/inadequately described

:Notes:
  1 - Employed
    Employed persons are those aged 15 years and over who met one of the following criteria during the
    reference week:
  
    - Worked for one hour or more for pay, profit, commission or payment in kind, in a job or business or
      son a farm (employees and owner managers of incorporated or unincorporated enterprises).
    - Worked for one hour or more without pay in a family business or on a farm (contributing family workers).
    - Were employees who had a job but were not at work and were:
  
      - away from work for less than four weeks up to the end of the reference week; or
      - away from work for more than four weeks up to the end of the reference week and
      - received pay for some or all of the four week period to the end of the reference week; or
      - away from work as a standard work or shift arrangement; or
      - on strike or locked out; or
      - on workers' compensation and expected to return to their job.
    - Were owner managers who had a job, business or farm, but were not at work.
  
  2 - Unemployed
    Unemployed persons are those aged 15 years and over who were not employed during the reference week, and:
  
    - had actively looked for full time or part time work at any time in the four weeks up to the end of
      the reference week and were available for work in the reference week; or
    - were waiting to start a new job within four weeks from the end of the reference week and could have
      started in the reference week if the job had been available then.
  
    Actively looked for work includes:
  
    - written, telephoned or applied to an employer for work;
    - had an interview with an employer for work;
    - answered an advertisement for a job;
    - checked or registered with a Job Services Australia provider or any other employment agency;
    - taken steps to purchase or start your own business;
    - advertised or tendered for work; and
    - contacted friends or relatives in order to obtain work.
  
  3 - Not in the labour force
    Persons not in the labour force are those aged 15 years and over who were not in the categories
    employed or unemployed, as defined, during the reference week. They include people who undertook
    unpaid household duties or other voluntary work only, were retired, voluntarily inactive and
    those permanently unable to work.

:METeOR: `621450 <http://meteor.aihw.gov.au/content/index.phtml/itemId/621450>`__

----------

Main language other than English spoken at home
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The language reported by a client as the main language other than English spoken by that client in
his/her home (or most recent private residential setting occupied by the client) to communicate
with other residents of the home or setting and regular visitors, as represented by a code.

:Field name: MLSH

:Data type: Char[4]

:Domain:
  `Australian Standard Classification of Languages 2011 4-digit code (ABS Catalogue No. 1267.0)
  <http://www.abs.gov.au/ausstats/abs@.nsf/mf/1267.0>`_ or 9999 if
  info is not known or client refuses to supply.

:Notes:
  The ABS recommends the following question in order to collect this data:
  Which language does the client mainly speak at home? (If more that one language, indicate the one 
  that is spoken most often.) 
  
  - English
  - Mandarin
  - Italian
  - Arabic
  - Cantonese
  - Greek
  - Vietnamese
  - Spanish
  - Hindi
  - Tagalog
  - Other - please specify .........................
  

:METeOR: `460125 <http://meteor.aihw.gov.au/content/index.phtml/itemId/460125>`__

----------

Marital Status
^^^^^^^^^^^^^^

A person's current relationship status in terms of a couple relationship or, for those not in a
couple relationship, the existence of a current or previous registered marriage, as represented by a code.

:Field name: MaritalSt

:Data type: Char[1]

:Domain:
  :1: Never married
  :2: Widowed
  :3: Divorced
  :4: Separated
  :5: Married (registered and do facto)
  :9: Not stated/inadequately described

:Notes:
  Refers to the current marital status of a person.
  
  2 - Widowed
    This code usually refers to registered marriages but when self-reported may also refer to de facto marriages.
  
  4 - Separated
    This code refers to registered marriages but when self-reported may also refer to de facto marriages.
  
  5 - Married (registered and de facto)
    Includes people who have been divorced or widowed but have since re-married, and should be
    generally accepted as applicable to all de facto couples, including of the same sex.
  
  6 - Not stated/inadequately described
    This code is not for use on primary collection forms. It is primarily for use in administrative
    collections when transferring data from data sets where the item has not been collected.

:METeOR: `291045 <http://meteor.aihw.gov.au/content/index.phtml/itemId/291045>`__

----------

Measure Date
^^^^^^^^^^^^

Measure date

:Field name: MeasDate

:Data type: Date[8]

:Domain:
  For Date fields, data must be recorded in compliance with the standard format used across the
  National Health Data Dictionary; specifically, dates must be of fixed 8 column width in the format DDMMYYYY,
  with leading zeros used when necessary to pad out a value. For instance, 13th March 2008 would appear as 13032008.

----------

Measure Name
^^^^^^^^^^^^


:Field name: Measure

:Data type: Char[20]

:Domain:
  The name of the measure

----------

Medication
^^^^^^^^^^


:Field name: Medication

:Data type: Char[1]

:Domain:
  Was this the current four items plus 'Not on medication' with Yes/No/Missing for each item or an ATC Level 3 code?

----------

Mental health service contact - client participation indicator
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indicator of whether the client has participated in a service contact, as represented by a code.

:Field name: PartIndic

:Data type: Char[1]

:Domain:
  :1: Yes
  :2: No

:Notes:
  Service contacts are not restricted to in-person communication but can include telephone, video link or
  other forms of direct communication.
  
  1 - Yes
    This code is to be used for service contacts between a specialised mental health service provider
    and the patient/client in whose clinical record the service contact would normally warrant a dated
    entry, where the patient/client is participating.
  
  2 - No
    This code is to be used for service contacts between a specialised mental health service provider
    and a third party(ies) where the patient/client, in whose clinical record the service contact would
    normally warrant a dated entry, is not participating.

:METeOR: `494341 <http://meteor.aihw.gov.au/content/index.phtml/itemId/494341>`__

----------

Mental Health Service Contact Date
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The date of each mental health service contact between a health service provider and patient/client.

:Field name: SerDate

:Data type: Date[8]

:Domain:
  For Date fields, data must be recorded in compliance with the standard format used across the National
  Health Data Dictionary; specifically, dates must be of fixed 8 column width in the format DDMMYYYY, with
  leading zeros used when necessary to pad out a value. For instance, 13th March 2008 would appear as 13032008.

:METeOR: `494356 <http://meteor.aihw.gov.au/content/index.phtml/itemId/494356>`__

----------

NDIS participant
^^^^^^^^^^^^^^^^

Is the client a participant in the National Disability Insurance Scheme?

:Field name: NDIS

:Data type: Char[1]

:Domain:
  :1: Yes
  :2: No
  :9: Not stated/inadequately described

----------

No Show
^^^^^^^

Where an appointment was made for a client, but the client failed to attend the appointment.

:Field name: NoShow

:Data type: Char[1]

:Domain:
  :1: Yes
  :2: No
:Notes:
  1 - Yes means the client failed to attend the appointment.
  2 - No means the client did attend the appointment.

----------

Organisation Code
^^^^^^^^^^^^^^^^^

A sequence of characters which uniquely identifies the PMHC organisation.

:Field name: OrgCode

:Data type: Char[6]

:Domain:
  - A unique code assigned by the PHN.

----------

Organisation Name
^^^^^^^^^^^^^^^^^

The name of the organisation.

:Field name: OrgName

:Data type: Char[100]

----------

Organisation Type
^^^^^^^^^^^^^^^^^

The type of the organisation.

:Field name: OrgType

:Data type: Char[1]

:Domain:
  To be defined

----------

Other Diagnosis
^^^^^^^^^^^^^^^


:Field name: OtherDx

:Data type: Char[1]

:Domain:
  To be defined

----------

PMHC Specification Version Number
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The version number of the PMHC specification document used.

:Field name: SpecVer

:Data type: Char[5]

:Domain:
  Value = `00.01`
  

----------

Practitioner Active
^^^^^^^^^^^^^^^^^^^

A flag to represent whether a practitioner is active. This is a system field that is aimed at helping organisations manage practitioner codes.

:Field name: Active

:Data type: Char[1]

:Domain:
  :0: Inactive
  :1: Active

----------

Practitioner category
^^^^^^^^^^^^^^^^^^^^^

The type or category of the practitioner.

:Field name: Category

:Data type: Char[1]

:Domain:
  :1: Psychologist (clinical)
  :2: Psychologist (generalist/other)
  :3: Social worker
  :4: Occupational therapist
  :5: Mental health nurse
  :6: Aboriginal and Torres Strait Islander health/mental health worker
  :7: Low intensity mental health worker
  :8: Other

----------

Practitioner Key
^^^^^^^^^^^^^^^^

A sequence of characters which uniquely identifies a practitioner.

:Field name: PraKey

:Data type: Char[20]

:Domain:
  A unique identifier for a practitioner within the PMHC top level organisation.

----------

Principal Diagnosis
^^^^^^^^^^^^^^^^^^^


:Field name: PrincDx

:Data type: Char[1]

:Domain:
  To be defined

----------

Principal Focus of Treatment
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The primary reason for the episode of care

:Field name: FoE

:Data type: Char[1]

:Domain:
  :1: Psychological intervention
  :2: Clinical care coordination
  :3: Complex care package for adults
  :4: Care package for a youth with severe mental illness

----------

Proficiency in spoken English
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The self-assessed level of ability to speak English, asked of people whose first language is a
language other than English or who speak a language other than English at home.

:Field name: ProfEng

:Data type: Char[1]

:Domain:
  :0: Not applicable (persons under 5 years of age or who speak only English)
  :1: Very well
  :2: Well
  :3: Not well
  :4: Not as all
  :9: Not stated/inadequately described

:Notes:
  0 - Not applicable (persons under 5 years of age or who speak only English)
    Not applicable, is to be used for people under 5 years of age and people who speak only English.
  
  9 - Not stated/inadequately described
    Not stated/inadequately described, is not to be used on primary collection forms. It is primarily for use in
    administrative collections when transferring data from data sets where the item has not been collected.

:METeOR: `270203 <http://meteor.aihw.gov.au/content/index.phtml/itemId/270203>`__

----------

Referral Date
^^^^^^^^^^^^^

The date the referrer made the referral.

:Field name: RefDate

:Data type: Date[8]

:Domain:
  For Date fields, data must be recorded in compliance with the standard format used across the National
  Health Data Dictionary; specifically, dates must be of fixed 8 column width in the format DDMMYYYY, with
  leading zeros used when necessary to pad out a value. For instance, 13th March 2008 would appear as 13032008.

----------

Referrer Entity
^^^^^^^^^^^^^^^

The entity of the referrer.

:Field name: RefEntity

:Data type: Char[1]

:Domain:
  To be defined

----------

Referrer Type
^^^^^^^^^^^^^

The type of the referrer.

:Field name: RefType

:Data type: Char[1]

:Domain:
  To be defined

----------

Score
^^^^^


:Field name: Score

:Data type: Char[2]

:Domain:
  The value of the score at this collection occasion.

----------

Service Delivery Postcode
^^^^^^^^^^^^^^^^^^^^^^^^^

The Australian postcode where the service delivery took place

:Field name: SerPCode

:Data type: Char[4]

:Domain:
  A valid Australian postcode or 9999 if the postcode is unknown.
  The full list of Australian Postcodes can be found at `Australia Post <http://www.auspost.com.au/>`_.
  
  - If Service Modality is not 'Face to Face' enter 9999
  - If Service Modality is 'Face to Face' a valid Australian postcode must be entered

:METeOR: `429894 <http://meteor.aihw.gov.au/content/index.phtml/itemId/429894>`__

----------

Service Event Key
^^^^^^^^^^^^^^^^^

This is a number or code assigned to each service event in the
flexible funding pool. The Service Event Key is unique and stable for each service event at the level of the
organisation.

:Field name: SerKey

:Data type: Char[20]

:Domain:
  A unique identifier for a service event within the PMHC. Must be unique within an organisation and stable
  over time.

----------

Service Modality
^^^^^^^^^^^^^^^^

How the service was delivered.

:Field name: SerMod

:Data type: Char[1]

:Domain:
  :1: Face to Face
  :2: Telephone
  :3: Video
  :4: Internet-based
:Notes:
  - If 'Face to Face' is selected, a value other than 'Not applicable' must be selected for Venue
  - If 'Face to Face' is selected a valid Australian postcode must be entered for Service Delivery Postcode.

----------

Service Participants
^^^^^^^^^^^^^^^^^^^^


:Field name: SerPart

:Data type: Char[1]

:Domain:
  :1: Individual
  :2: Group
  :3: Family / Client Support Network
:Notes:
  Are any other options necessary?

----------

Service Type
^^^^^^^^^^^^


:Field name: SerType

:Data type: Char[1]

:Domain:
  :1: Structured psychological intervention
  :2: Other psychological intervention
  :3: Clinical care coordination
  :4: Child or youth specific assistance NEC
  :5: Suicide prevention specific assistance NEC
  :6: Cultural specific assistance NEC

----------

Source of Cash Income
^^^^^^^^^^^^^^^^^^^^^

The source from which a person derives the greatest proportion of his/her income, as represented by a code.

:Field name: IncomeSce

:Data type: Char[1]

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
  
  This item refers to the source by which a person derives most (equal to or greater than 50%) of his/her income.
  If the person has multiple sources of income and none are equal to or greater than 50%, the one which contributes
  the largest percentage should be counted.
  
  This item refers to a person's own main source of income, not that of a partner or of other household members.
  If it is difficult to determine a 'main source of income' over the reporting period (i.e. it may vary over time)
  please report the main source of income during the reference week.
  
  Code 7 'Not known' should only be recorded when it has not been possible for the service user or their
  carer/family/advocate to provide the information (i.e. they have been asked but do not know).

:METeOR: `386449 <http://meteor.aihw.gov.au/content/index.phtml/itemId/386449>`__

----------

State
^^^^^

The state that the organisation operates in.

:Field name: State

:Data type: Char[1]

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
  - Name is taken from Australian `Statistical Geography Standard (ASGS) July 2011 <http://www.abs.gov.au/ausstats/abs@.nsf/0/871A7FF33DF471FBCA257801000DCD5F?Opendocument>`_.
  - Code is from Meteor with the addition of code for Other Territories.

:METeOR: `613718 <http://meteor.aihw.gov.au/content/index.phtml/itemId/613718>`__

----------

Statistical Linkage Key
^^^^^^^^^^^^^^^^^^^^^^^

A key that enables two or more records belonging to the same individual to be brought together.

:Field name: SLK

:Data type: Char[40]

:Domain:
  System generated non-identifiable alphanumeric code derived from information held by the PMHC organisation.
  
  Supported formats:
    - 14 character `SLK <http://meteor.aihw.gov.au/content/index.phtml/itemId/349510>`_
    - a `Crockford encoded <http://www.crockford.com/wrmg/base32.html>`_ sha1 hash of a 14 character SLK.
      This must be 32 characters in length.
    - a hex encoded sha1 hash of a 14 character SLK. This must be 40 characters in length.

:Notes:
  SLK values are stored in sha1_hex format.

:METeOR: `349510 <http://meteor.aihw.gov.au/content/index.phtml/itemId/349510>`__

----------

Suicide Referral Flag
^^^^^^^^^^^^^^^^^^^^^

Identifies those individuals where a recent history of suicide attempt, or suicide risk, was a
factor noted in the referral that underpinned the person's needs for assistance at entry to the episode, 
or was identified at initial assessment.

:Field name: SuicideRef

:Data type: Char[1]

:Domain:
  :1: Yes
  :2: No

----------

Venue
^^^^^

Where the service was delivered.

:Field name: Venue

:Data type: Char[1]

:Domain:
  :1: Home
  :2: Practitioner's Office
  :3: School
  :4: Client's Workplace
  :5: Other
  :6: Not applicable (Service modality is not face to face)

:Notes:
  - Values other than 'Not applicable' only to be specified when Service Modality is 'Face to Face'.

----------

Year of Birth
^^^^^^^^^^^^^


:Field name: YoB

:Data type: Char[4]

:Domain:
  Record the practitioner's year of birth YYYY format.

:Notes:
  If the year of birth is unknown, the following approaches should be used:
  
  - If the age of the client is known, the age should be used to derive the year of birth
  - If the age of the client is unknown, an estimated age of the client should be used to estimate a year of birth
  - If the date of birth is totally unknown, use 9999.

----------

