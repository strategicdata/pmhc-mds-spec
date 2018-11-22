.. _reports:

Reports
=======

You will only be able to see the Reports tab if you have been assigned
the 'Reporting' :ref:`roles`, when logged into the PMHC MDS on https://pmhc-mds.net.

If you don’t have access to the Reports tab and you believe you should, please
contact someone in your provider organisation or provider organisation's PHN
who has the 'User Management' role. If you are unsure who has the 'User Management'
role please email the PMHC Helpdesk at support@pmhc-mds.com

After navigating to the Reports tab, you will be able to view and export various
:ref:`system-report-types`.

.. figure:: screen-shots/reports.png
   :alt: Reports tab View

.. _produce-system-report:

How to produce a report
^^^^^^^^^^^^^^^^^^^^^^^

You can produce a system report by completing the fields in the Reports tab by
following these steps:

1. Navigate to the 'Reports' tab.

.. figure:: screen-shots/reports-system.png
   :alt: Reports tab View

2. Select the type of report you would like to produce.
3. If you are allowed to produce reports for more than one organisation you
   will be asked to select an organisation name.
4. Select the name of the organisation from the drop down list.
5. Click the first calendar icon to select the start date and then the second
   calendar icon to select the end date.
6. If you click the 'Include only records with Client Consent' tickbox, the data for client's that have not consented to their anonymised data being provided to the Department of Health will be excluded from your report. (See :ref:`dfn-client_consent` )
7. Click the blue ‘Request’ button.
8. Your report will be displayed on screen and can be downloaded as a CSV.

Note: If you are not sure what data is displayed in a report, please click on the 'Counting Rules Explained' link.

.. figure:: screen-shots/reports-sample-system.png
   :alt: Reports tab View

.. _system-report-types:

Types of System Reports
^^^^^^^^^^^^^^^^^^^^^^^

The reports are grouped into five categories, each designed to serve different
purposes:

* :ref:`category-a`
* :ref:`category-b`
* :ref:`category-c`
* Category D: Key Performance Indicators
* :ref:`category-e`

**Note:** Category D reports are still to be implemented.

.. _category-a:

Category A: Monitoring progress of MDS implementation
-----------------------------------------------------

These reports are designed to assist monitoring MDS uptake and compliance with
key business rules.

The reports provide summary data on:

* Volumes ('active clients'/'active episodes'/contacts)
* Data quality in terms of compliance with key business rules

Available A category reports are:

* :ref:`category-a1`
* :ref:`category-a2`
* :ref:`category-a3`
* :ref:`category-a4`
* :ref:`category-a5`
* :ref:`category-a6`
* :ref:`category-a7`
* :ref:`category-a8`
* :ref:`category-a9`

**Note:** A subset of these reports is included in :ref:`category-e` without
any filtering for active clients or episodes to enable organisational data
managers to monitor 'raw' upload and data supply to the MDS.

.. _category-a1:

A1 - High level summary of overall volumes by entity
++++++++++++++++++++++++++++++++++++++++++++++++++++

This report is designed to provide a 'one page' view, with data aggregated for
the specified reporting period, covering counts of clients, episodes and
service contacts.

Key specifications:

* To be counted, a client must have had one or more Service Contacts in the
  reporting period, defined for this report's purposes as 'Active Clients'.
  Clients are counted uniquely regardless of number of episodes.
* Episodes to be counted if one or more Service Contacts were recorded in the
  period - defined for this report purpose as 'Active Episodes'.
* All Service Contacts in the period are reported except those that are flagged
  as 'No Show'.
* All dates refer to date of service not date of data upload or data entry.

.. _category-a2:

A2 - Monthly volume trends
++++++++++++++++++++++++++

This report is designed to show volume trends in clients, episodes and service
contacts. Each data point in the table and the chart shows monthly data.

Key specifications:

* To be counted, a client must have had one or more Service Contacts in the
  reporting period, defined for this report purposes as ‘Active Clients’.
  Clients are counted uniquely regardless of number of episodes.
* Episodes to be counted if one or more Service Contacts was recorded in the
  period – defined for this report purpose as ‘Active Episodes’.
* All Service Contacts in the period are reported except those that are flagged
  as ‘No Show’.
* All dates refer to date of service not date of upload or data entry.

.. _category-a3:

A3 - Data quality report - Missing and invalid client data
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

The A3 reports are designed to identify Client data elements with significant
amounts of missing or invalid data.

Two formats of this report are offered to users:

* :ref:`category-a3-1`
* :ref:`category-a3-2`

Key specifications:

* Clients to be counted uniquely regardless of number of episodes. To be
  counted, a client must have had one or more Service Contacts in the
  reporting period i.e. ‘Active Clients’.
* Service Contacts flagged as ‘No Show’ are not included for this purpose.
* Missing/invalid data defined as: Data elements with null or invalid values, or
  where ‘system generated’ codes have been reported to denote ‘not stated’,
  ‘inadequately defined’ or ‘missing’.

.. _category-a3-1:

A3-1 - Data quality report - Missing and invalid client data - Summary
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Summary format provides a simple listing of missing/invalid data rates for
relevant Client data elements, aggregated across the organisation, region or
nationally.

.. _category-a3-2:

A3-2 - Data quality report - Missing and invalid client data - Detail
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Detailed format presents missing/invalid data rates at the entity level (PHN
and Provider Organisation). For this version, the user selects the specific
Client data element to be targeted for the report from a list of possible options.

Missing/invalid client data elements that can be selected for the A3-2
report are:

* Date of Birth
* Date of Birth Flag
* Gender
* ATSI status
* Country of Birth
* Main Language Spoken at Home
* Proficiency in Spoken English

Note: For a user with the Reporting role at a single Provider Organisation,
this report is redundant as it would only ever have a single row, which is
already present in the output of the A3-1 report. Therefore this report is
not made available to these users.

.. _category-a4:

A4- Data quality report - Missing and invalid episode data
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

The A4 reports are designed to identify data Episode elements with significant
amounts of missing or invalid data.

Two formats of this report are offered to users:

* :ref:`category-a4-1`
* :ref:`category-a4-2`

Some Episode data elements are not included in the options list as they are
allowed to have a blank value (eg. Episode End Date) or there
is no missing value provided in the specification and the system doesn't allow
blank values to be submitted (eg. Principal Focus of Treatment Plan):

* Client Consent to Anonymised Data
* Episode End Date
* Episode Completion Status
* Episode Start Date
* Medication - Antipsychotics (N05A)
* Medication - Anxiolytics (N05B)
* Medication - Hypnotics and sedatives (N05C)
* Medication - Antidepressants (N06A)
* Medication - Psychostimulants and nootropics (N06B)
* Principal Focus of Treatment Plan

Key specifications:

* Report counts only ‘active episodes’. An Episode is defined as ‘active’ if it
  has one or more Service Contacts recorded in the period.
* Service Contacts flagged as ‘No Show’ are not included for this purpose.
* Missing/invalid data defined as: Episode data elements with null or invalid
  values, or where ‘system generated’ codes have been reported to denote
  ‘not stated’, ‘inadequately defined’ or ‘missing’.

.. _category-a4-1:

A4-1 - Data quality report - Missing and invalid episode data - Summary
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Summary format provides a simple listing of missing/invalid data rates
for relevant Episode data elements, aggregated across the organisation,
region or nationally.

.. _category-a4-2:

A4-2 - Data quality report - Missing and invalid episode data - Detail
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Detailed format presents missing/invalid Episode data rates at the
entity level (PHN and Provider Organisation). For this version, the user selects
the specific Episode data element to be targeted for the missing/invalid data
report from a list of possible options.

Missing/invalid episode data elements that can be selected for the A4-2 report
are:

* Episode Referral Date
* Referrer Profession
* Referrer Organisation Type
* Suicide Referral Flag
* GP Mental Health Treatment Plan Flag
* Homelessness flag
* Area of Usual Residence, Postcode
* Labour Force Status
* Employment Participation
* Source of Cash Income
* Health Care Card
* NDIS Participant
* Marital Status
* Principal Diagnosis
* Additional Diagnosis

Note: For a user with the Reporting role at a single Provider Organisation,
this report is redundant as it would only ever have a single row, which is
already present in the output of the A4-1 report. Therefore this report is
not made available to these users.

.. _category-a5:

A5 - Data quality report - Missing and invalid service contact data
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

The A5 reports are designed to identify Service Contact data elements with
significant amounts of missing or invalid data.

Two formats of this report are offered to users:

* :ref:`category-a5-1`
* :ref:`category-a5-2`

Service Contacts flagged as ‘No Show’ are not included in this report.

Some service contact data elements are not included in the options list as there
is no missing value provided in the specification and the system doesn't allow
blank values to be submitted:

* Service Contact Date
* Service Contact Final
* Service Contact Type
* Service Contact Modality
* Service Contact Duration
* Service Contact Copayment
* Service Contact Client Participation Indicator
* Service Contact No Show

.. _category-a5-1:

A5-1 - Data quality report - Missing and invalid service contact data - Summary
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Summary format provides a simple listing of missing/invalid data rates
for relevant Service Contact data elements, aggregated across the
organisation, region or nationally.

.. _category-a5-2:

A5-2 - Data quality report - Missing and invalid service contact data - Detail
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Detailed format presents missing/invalid Service Contact data rates at
the entity level (PHN and Provider Organisation). For this version, the user
selects the Service Contact data to be targeted for the missing/invalid data
report from a list of possible options.

Missing/invalid episode data elements that can be selected for the A5-2 report
are:

* Service Contact Interpreter Used
* Service Contact Postcode
* Service Contact Participants
* Service Contact Venue

Note: For a user with the Reporting role at a single Provider Organisation,
this report is redundant as it would only ever have a single row, which is
already present in the output of the A5-1 report. Therefore this report is
not made available to these users.

.. _category-a6:

A6 - Data quality report - Missing and invalid practitioner data
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

The A6 reports are designed to identify Practitioner data elements with
significant amounts of missing data.

Two formats of this report are offered to users:

* :ref:`category-a6-1`
* :ref:`category-a6-2`

Key specifications:

* Report is confined only to ‘active practitioners’. A Practitioner is defined as
  ‘active’ if it they have recorded one or more Service Contacts in the period.
* Service Contacts flagged as ‘No Show’ are not included for this purpose.

.. _category-a6-1:

A6-1 - Data quality report - Missing and invalid practitioner data - Summary
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Summary format provides a simple listing of missing/invalid data rates
for relevant data elements, aggregated across the organisation, region or
nationally.

.. _category-a6-2:

A6-2 - Data quality report - Missing and invalid practitioner data - Detail
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Detailed format presents missing/invalid data rates at the entity level
(PHN and Provider Organisation). For this version, the user selects the
Practitioner data to be targeted for the missing/invalid data report from a list
of options.

Missing/invalid episode data elements that can be selected for the A6-2
report are:

* Practitioner Category
* ATSI Cultural Training Flag
* Practitioner Year of Birth
* Gender
* Aboriginal and Torres Strait Islander Status

Note: For a user with the Reporting role at a single Provider Organisation,
this report is redundant as it would only ever have a single row, which is
already present in the output of the A6-1 report. Therefore this report is
not made available to these users.

.. _category-a7:

A7 - Open episodes with no service contact activity for 90+ days
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

The A7 report is designed to allow monitoring of adherence to the requirement
to close episodes where there are no further services scheduled for the client.

Setting of the 90 day threshold does not imply a strict business rule to close
episodes where no contact has occurred for this period, but rather to identify
episodes that may warrant review.

Key specifications:

* Open Episodes defined as those without an End Date or an End Date after the
  end date of the report.
* Service Contacts flagged as ‘No Show’ are not included for this purpose.

Note that if the period between start and end date specified in this report is
less than 90 days the number of episodes with no service contact activity for
90+ days will always be zero.

.. _category-a8:

A8 - Data quality report - Recording of outcome measures for open episodes
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

The A8 report is designed to show the percentage of open (not yet completed)
episodes that have an outcome measure recorded at the Episode Start collection
occasion. Its purpose is to allow monitoring of adherence to the minimum
requirements for outcome recording - i.e. measures to be recorded at Episode
Start and Episode End.

Report A9 examines a related aspect - the extent to which Completed Episodes
have both Episode Start and Episode End measures.

Key specifications:

* Open Episodes are defined as those without an End Date or an End Date after the
  end date of the report.
  less than or equal to the report end date.
* For this report, Episodes must also have an Episode Start Date equal to or greater than
  the report start date.
* Only Episodes with one or more Service Contacts in the reporting period are
  included in the analysis (referred to as 'active episodes').
* Service Contacts flagged as ‘No Show’ are not included for this purpose.
* Measures that have a total score of ‘99’ are invalid and counted as 'no measure'.

.. _category-a9:

A9 - Data quality report - Recording of outcome measures for completed episodes
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

The A9 report is designed to show the percentage of completed episodes that have
outcome measures recorded. Its purpose is to allow monitoring of adherence to
the minimum requirements for outcome recording - i.e. measures to be recorded
at Episode Start and Episode End.

Key specifications:

* Completed Episodes are defined as those Episodes with an Episode End Date
  less than or equal to the report end date.
* For this report, Episodes must also have an Episode Start Date equal to or greater than
  the report start date.
* Only Episodes with one or more Service Contacts in the reporting period are
  included in the analysis (referred to as 'active episodes').
* Service Contacts flagged as ‘No Show’ are not included for this purpose.
* Measures that have a total score of ‘99’ are invalid and counted as 'no measure'.

.. _category-b:

Category B: Monitoring overall service delivery
-----------------------------------------------

These reports are designed to present a range of data in the form of summary
tables. Their purpose is to allow the user to monitor overall service delivery
based on counts of clients, episodes, and service contacts, stratified in
various ways that depend on the data being sourced.

There are five reports in this series, each covering a specific data category
(Clients, Episode, Service Contacts, Provider Organisations, and Practitioners).

Available B category reports are:

* :ref:`category-b1`
* :ref:`category-b2`
* :ref:`category-b3`
* :ref:`category-b4`
* :ref:`category-b5`

.. _category-b1:

B1 - Activity report - Client characteristics
+++++++++++++++++++++++++++++++++++++++++++++

The B1 report is designed to allow selection of a Client
stratification variable of interest, with a menu of options covering all
core Client data fields.

Key specifications:

* Client to be counted uniquely regardless of number of episodes. To be
  counted, a client must have had one or more Service Contacts in the
  reporting period.
* Counts of Episodes to be based only on 'active' Episodes, defined as those
  that had one or more Service Contacts recorded in the period.
* Service Contacts flagged as ‘No Show’ are not included for this purpose.

.. _category-b2:

B2 - Activity report - Episode characteristics
++++++++++++++++++++++++++++++++++++++++++++++

The B2 report is designed to allow selection of an Episode stratification
variable of interest, with a menu of options covering all core Episode data
fields.

Key specifications:

* An Episode is defined as 'active' and in-scope for inclusion in this report
  if it had one or more Service Contacts recorded in the period. No distinction
  is made between Open and Completed Episodes.
* Service Contacts flagged as ‘No Show’ are not included for this purpose.

.. _category-b3:

B3 - Activity report - Service Contact characteristics
++++++++++++++++++++++++++++++++++++++++++++++++++++++

The B3 report is designed to allow selection of a Service Contact
stratification variable of interest, with a menu of options covering all
core Service Contact fields.

Key specifications:

* Reporting by ‘Service Contact No Show’ element counts all service contacts
  by whether they are flagged as ‘No Show’.
* Otherwise, Service Contacts flagged as ‘No Show’ are not included in this report.

.. _category-b4:

B4 - Activity report - Provider Organisation characteristics
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

The B4 report is designed to allow selection of a Provider Organisation
stratification variable of interest, with a menu of options covering all
core Provider Organisation data fields.

Key specifications:

* A Provider Organisation is defined as 'active' if it has recorded and in-scope
  for this report if there is one or more Service Contacts recorded for the
  Provider Organisation in the period.
* Service Contacts flagged as ‘No Show’ are not included for this purpose.

.. _category-b5:

B5 - Activity report - Practitioner characteristics
+++++++++++++++++++++++++++++++++++++++++++++++++++

The B5 report is designed to allow selection of a Practitioner stratification
variable of interest, with a menu of options covering all core Practitioner
data fields.

Key specifications:

* A Practitioner is defined as 'active' and in-scope for this report if they
  have recorded one or more Service Contacts in the period.
* Service Contacts flagged as ‘No Show’ are not included for this purpose.

.. _category-c:

Category C: Monitoring implementation of stepped care
-----------------------------------------------------

This group of reports is based on composite data, built from cross-tabulation of
data drawn from multiple levels of the PMHC data model – Clients, Episodes, Service
Contacts, Practitioners.

Their purpose is to allow the user to monitor selected aspects of the implementation
of the stepped care model.

The stepped care reports represent work in progress and will be subject to ongoing
improvement with PHN feedback on their utility.

Available C category reports are:

* :ref:`category-c1`
* :ref:`category-c2`

.. _category-c1:

C1 - Stepped care report - Episode type by Client characteristics
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Purpose: To provide summary information on the characteristics of clients who
receive different types of services, grouped by ‘episode type’.

Client data fields to be selected by user from a list of options.

Key specifications:

* Only ‘active episodes’ are reported. An Episode is defined as ‘active’ and
  in scope for inclusion in this report if it had one or more Service Contacts
  recorded in the period. No distinction is made between Open and Completed
  Episodes.
* Service Contacts flagged as ‘No Show’ are not included for this purpose.
* Counts shown in the report refer to Episodes, and are displayed as numbers
  or percent column based on user selection.

Client data elements that can be selected for the C1 report are:

* Client age group based on Date of Birth, grouped to the following categories:

  * 0-11, 12-17, 18-24, 25-64, 65+
  * Each client assigned to only age group based on age at a fixed date (e.g., beginning of year)

* Indigenous status
* Area of Usual Residence

  * Grouped by Remoteness Classification (Major Cities, Outer Regional,
    Inner Regional, Remote, Very Remote)

* Principal diagnosis - High level grouping

  * Anxiety disorders
  * Affective (Mood) disorders
  * Substance use disorders
  * Psychotic disorder
  * Disorders with onset usually occurring in childhood and adolescence
    not listed elsewhere
  * Other mental disorder
  * No formal mental disorder but subsyndromal problem

* Gender
* Country of Birth – grouped to high level categories

.. _category-c2:

C2 - Stepped care report – Episode Type by Service Contacts Type
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Purpose: To provide summary information on the types of service contacts delivered
within each of the episode types.

Key specifications:

* Only ‘active episodes’ are reported. An Episode is defined as ‘active’ and
  in scope for inclusion in this report if it had one or more Service Contacts
  recorded in the period. No distinction is made between Open and Completed
  Episodes.
* Service Contacts flagged as ‘No Show’ are not included for this purpose.
* Counts shown in the report refer to Episodes, and are displayed as numbers
  or percent rows based on user selection.

.. _category-e:

Category E: Reports for data managers to monitor data supply
------------------------------------------------------------

These reports are designed to assist in monitoring the amount and type of data
that has been input into the MDS.

They are based on a subset of Category A reports but differ in two important ways:

* The reports are based on ‘raw data’, not filtered or trimmed by any data
  quality censoring. Comparable Category A reports restrict the reported data
  by specific edit criteria (e.g., Category A reports are only based on
  ‘active clients’, ‘active episodes’ and ‘active providers’).

* All dates refer to date of upload. Comparable Category A reports are based on
  date of service.

Category E reports are specifically designed to enable PHN and Provider
Organisation data managers to monitor upload and data supply to the MDS.

The reports provide summary data on:

* Raw volumes (clients/episodes/service contacts/collection occasions/practitioners) over time periods
* Raw volumes per day (clients/episodes/service contacts/collection occasions/practitioners)

.. _category-e1:

E1 - High level summary of overall volumes by entity
++++++++++++++++++++++++++++++++++++++++++++++++++++

This report is designed to provide a ‘one page’ view, with data aggregated for the
specified reporting period, covering counts of clients, episodes, service contacts,
collection occasions and practitioners, without any filtering for business rules.

Key specifications:

* All records to be counted with no filtering.
* All dates refer to date of modification, not date of service.

.. _category-e2:

E2 - Volume trends
++++++++++++++++++

This report is designed to show volume trends in clients, episodes, service
contacts, collection occasions and practitioners.

Key specifications:

* All records to be counted with no filtering.
* All dates refer to date of insertion, not date of service.
* Results are cumulative.

.. _category-e3:

E3 - Activity per day
+++++++++++++++++++++

This report will show a summary of the number of clients, episodes, service
contacts, collections occasions and practitioners added or modified each day.
Its purpose is to give entities information about when and how much data was
added or modified.

Key specifications:

* All records to be counted with no filtering.
* All dates refer to date of modification, not date of service.
