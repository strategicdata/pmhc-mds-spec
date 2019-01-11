
Questions about Specific Data Items and Definitions
---------------------------------------------------

Provider Organisation
^^^^^^^^^^^^^^^^^^^^^

Provider organisation – solo practitioners: If the organisation is a sole trader private practitioner, does the organisation name become the providers name?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The sole practitioner should use the trading name against which they have registered
their ABN.

Provider Organisation ABN: Why is this needed?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Understanding the characteristics and number of Provider Organisations is important
for both regional and national planning purposes, and requires an approach that
uniquely identifies organisations.  While Provider Organisation identifiers are
set up by PHNs, these are only unique at the regional level.  They therefore do
not allow a national picture of the number and type of organisations engaged in
the delivery of primary mental health care.

The ABN provides a simple and nationally unique organisation identifier.
Organisation ABNs are also public domain information, being available via the
Australian Business Register website.

...

Practitioner
^^^^^^^^^^^^

Practitioner category: Should there be separate categories for accredited mental health social workers and occupational therapists in mental health?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The coding options allows for separate identification of social workers and
occupational therapists. PHNs are free to add additional details to their local
collection on the proviso that any additions are capable of being mapped to the
national MDS categories.

Principal Focus of Treatment Plan – Psychological Therapy: Is the Department going to provide a firm definition of a mental health professional under the new specifications – noting the intent of increased flexibility to provide a workforce of mixed and flexible professional background?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The concept of ‘mental health professionals’ has a specific meaning defined in
the various guidance documentation prepared to support PHNs in implementation of
reforms. It refers to service providers who meet the requirements for registration,
credentialing or recognition as a qualified mental health professional and includes:

* Psychiatrists
* Registered Psychologists
* Clinical Psychologists
* Mental Health Nurses
* Occupational Therapists
* Social Workers
* Aboriginal and Torres Strait Islander health workers.

...

Client
^^^^^^

Gender: Should there be consistency in how Practitioner and Client gender are collected?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Yes.  The data coding options are the same for both items and based on the new
standards recently released by Australian Government Guidelines on the Recognition
of Sex and Gender.


Statistical Linkage Keys (SLK) - will these be generated in a similar manner to the ATAPS MDS?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Yes.

Details on how the SLKs are created, are currently available on the `PMHC MDS Specifications - SLK <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#client-statistical-linkage-key>`_.
An SLK Generator has been developed on the `PMHC MDS - SLK tab <https://pmhc-mds.net/#/slk>`_.

See :ref:`slk-generator` for details how to use this feature.

...

Episode
^^^^^^^

Diagnosis: Is this required across all service delivery areas, including low intensity services?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Yes.  While low intensity workers will not be qualified to assign a clinical diagnosis,
it is expected that they will be working under the supervision of a clinically qualified
mental health professional.

Diagnosis - DSM-IV: Why isn’t DSM-V used as the standard given that that is the most current classification system?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The DSM-IV is the diagnostic classification currently used by the majority of
Australian mental health clinicians. Any move to DSM-V would require confidence
that most clinicians providing services through PHN commissioning arrangements
have had training in, and moved across to, the new system.  The Department does
not believe that this is the case. Pending uptake of DSM-V, there is scope to
change to the new classification in future versions of the PMHC MDS.

Additionally, as the diagnostic codes included in the PMHC MDS represent an
abbreviated ‘pick list’, the decision to use either DSM-IV or DSM-V will not
have material impact given the substantial common ground between the two classifications.

Episode - Completion Status: If the client is referred elsewhere (i.e. not suitable for this service) would this be recorded as "Episode closed administratively-other reason" or should there be an additional code to capture this information?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Under the new PMHC MDS, an episode does not formally commence until the client
receives their first Service Contact.  For referrals that do not lead to a Service
Contact, and where the person is referred elsewhere, there is no need to open an
Episode. However, based on previous experience with the ATAPS system, the Department
understands that many PHNs are likely to want to do this as a means to track referrals
that do not lead to Service Contacts, or to begin entering data prior to the first
Service Contact.  Therefore, there will be scope in the system to set up an Episode
even it does not lead to a Service Contact. Standard reports to be developed will
build in capacity to monitor these and ensure that they are not counted in service
delivery indicators. Where a referral is followed by an initial Service Contact,
and the person is referred elsewhere due to being assessed as not suitable, or
requires an alternative service, a new code for Episode- Completion Status has
been added (‘Episode closed administratively - client referred elsewhere’).

GP mental health treatment plan: Can we include an item to capture whether the client has GP mental health treatment plan? Would be very useful from a planning and commissioning perspective.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Department agrees that this is a useful item for both PHN and national purposes.
It has been added to the final Version 1 specifications and is to be reported at the
level of Episodes of Care.


Source of Cash Income, Income range: What is the rationale for these items?  They are not relevant to PHNs and providers may not be comfortable in asking the questions.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Both items were intended to address key indicators of socioeconomic disadvantage
of the consumers using PHN-commissioned services. The intent is to replace the
previous ‘low income’ data item of the previous ATAPS/MHSRRA dataset which was
poorly defined and of doubtful reliability.

Based on discussions we believe the intent of these data items is understood by
most PHNs.

‘Source of cash income’ is a standard Meteor item that importantly, identifies
whether the consumer is receiving government income support through a Disability
Support Pension or other means.  It is used in a number of data collections
covering Australia Government funded human services.

Income range was intended as a supplementary measure to identify low income consumers.
The Department has considered the feedback and agrees this data item is not the appropriate
approach.  It has been replaced by an alternative item – ‘Health Care Card holder’.

The Department considers it essential for the data collection to have a reliable
approach to identifying consumers who are economically challenged.


.. _episode-one-at-a-time:

One episode of care at a time: We have clients who are receiving treatment at multiple programs and require multiple episodes with different 'Principal Focus of Treatment Plan'. The PMHC MDS only allows one episode at a time for each client, defined at the level of the provider organisation. What do we do?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The 'one episode at a time per organisation' rule is fundamental to the concepts
underpinning the MDS. This rule has important implications, and is based on the
long standing principle that, in bringing together all the various services used
by an individual during their healthcare for a particular illness, the episode
of care should be bundled to the highest level possible. This allows for a more
accurate approach to understanding costs and outcomes at the patient level. A
single episode of care may entail multiple service types, and service events
which in some systems are bundled together under the concept of ‘service
episodes’. This situation is common in mental health care; for example where a
consumer is simultaneously under the care of a community mental health team and
a separate day program. Typically, the patient is registered at both centres and
contacts are separately recorded by each service or team. But it’s important to
not confuse such ‘service episodes’, which are based on service characteristics,
with the episode of care concept, which is patient based.

So the short response to the query is that no, the 'one episode of care at a
time per organisation rule' should not be breached. The fact that the person is
receiving multiple service types during the course of their episode is not a
reason to break their care down into multiple episodes. Doing so would have
consequences of subjecting the person to two sets of data collection and outcome
measures (noting outcomes are needed for each episode).

It is essential the following aspects of the way episode types (as denoted by
the Principal Focus of Treatment Plan) are conceptualised:

1. A single episode may include heterogenous services, as outlined above.
2. The mix of services provided during a single episode is captured by the
   Service Type data item - collected at each Service Contact.
3. Classifying the episode type by Principal Focus of Treatment Plan requires
   a judgement to be made about the main focus of the services to be delivered
   to the client for the current episode of care following initial assessment.
   It is important to note that can be modified at a later stage if the initial
   judgement made proved to be incorrect.
4. Episodes are not defined by the source of funding.

Further detail on the concepts underpinning the PMHC MDS are outlined in the
Overview paper at https://www.pmhc-mds.com/doc/pmhc-mds-overview.pdf

Several PHN organisations have also queried whether a new and separate episode
can be opened when a client is shifted to a significantly different type of care
from that originally envisaged. The PMHC does not require this, but also the
PMHC does not prevent it. It’s a clinical decision that can be made - i.e. a
new episode can be opened (after the previous one is closed) when there is a
significant shift in the type of care provided e.g., the client begins with a
Low Intensity episode, because it was envisaged that the episode would be
relatively brief/inexpensive, but in the course of treatment it became clear
that the client had complex mental health issues that would warrant higher
intensity services and over a more prolonged period. In such instances, the
original episode can be closed, and a new one opened. However, the department
does not believe this to be the best alternative as it artificially segments a
continuous course of treatment into multiple episodes.

One innovation suggested by some PHNs is to establish a mechanism in the MDS
collection to identify where an episode is closed to allow the person to be
stepped up, or down, to a lower level or care. Specifically, the suggestion
has been made that a new coding option should be added to the Episode
Completion Status field to identify episodes that end due to a change in the
type of care. The department will consider this as part of any changes made
to the MDS in the future.

...

Service Contact
^^^^^^^^^^^^^^^

Service contact - Definition: Does the definition extend to the writing of reports to assist the client in accessing appropriate services etc (although this may not involve 2 people)?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

No. See response to :ref:`Exclusion-of-non-clinical-time`.

As stated in the `Overview paper <https://www.pmhc-mds.com/doc/pmhc-mds-overview-20160916.pdf>`_, Service contacts are defined as “the provision
of a service by a PHN commissioned mental health service provider for a client
where the nature of the service would normally warrant a dated entry in the
clinical record of the client and:

* must involve at least two persons, one of whom must be a mental health service provider, and
* can be either with the client or with a third party, such as a carer or family member, and/or other professional or mental health worker, or another service provider.

Service Contact - Duration: It is unclear if the expectation is to calculate all occasions of contact for an individual consumer over an entire 24-hour day or every individual contact recorded separately. A 24-hour or full work day summation of time would be useful.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In general, it is expected that each Service Contact is reported separately.
However, PHNs have discretion on how to handle multiple contacts on a single day.
The approach taken will depend on how PHNs commission and remunerate service providers.
We have assumed that most services will be paid on a service contacts-as-delivered basis,
and thus PHNS will want to track these. But where PHNs opt to remunerate at whole-of-episode
of care basis, aggregating Service Contact-Duration to whole days may be a more efficient approach.

Service Contact – No Show: When item “Service Contact - No Show” is selected as “Yes”, it would be useful to capture how that time of appointment was used.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The creation of the ‘No Show’ item represents a carry-over from the previous
ATAPS collection, and was created at the request of the former Medicare Locals
to monitor the extent to which this was impacting.  As it does not represent a
service contact as such, the Department does not believe it to be reasonable to
require practitioners to report on how they used the ‘no show’ time.

Service Contact – Type: This item includes limited options of the actual service function delivered e.g., more detailed information - CBT, ACT, DBT, mindfulness etc. These are all grouped under the category of structured psychological
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The approach taken in the PMHC MDS is to use a higher level grouping of interventions
provided at each contact, designed to provide a simpler set of options for the
practitioner to select from.  More detailed lists of intervention types, where
the provider is required to select from a long list of options, creates ‘selection burden’
on the provider and has proved of doubtful reliability.  The former ATAPS system
used a more detailed reporting on interventions, with practitioners reporting on
the types of psychological interventions used, but this has not proved to be useful
for regional or national purposes.

Service Contact – Type: Is it possible to obtain further examples of "structured psychological interventions" and "other psychological interventions”?  e.g., where would narrative therapy fit?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The rationale for this item is explained in the `Overview paper <https://www.pmhc-mds.com/doc/pmhc-mds-overview-20160916.pdf>`_, along with definitions
of the following major categories:

* Assessment
* Structured psychological intervention
* Other psychological intervention
* Clinical care coordination/liaison
* Clinical nursing services
* Child or youth specific assistance NEC
* Suicide prevention specific assistance NEC
* Cultural specific assistance NEC

Exhaustive inclusion lists are not provided, but structured psychological interventions
are indicated to include, but not be limited to:

* Psycho-education (including motivational interviewing)
* Cognitive-behavioural therapies
* Relaxation strategies
* Skills training
* Interpersonal therapy

Narrative therapy would best fit in the category ‘Other Psychological interventions’,
defined as those psychological interventions that do meet criteria for
structured psychological intervention.


...
