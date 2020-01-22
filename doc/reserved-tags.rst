.. _reserved-tags:

Reserved Tags
=============

This document defines the Department reserved tags used to identify specific records
types in the Primary Mental Health Care Minimum Data Set (PMHC MDS). Tags beginning
with an exclamation mark (``!``) are reserved for future use by the Department.

The domain of individual Tags fields is defined in :ref:`record-formats`.

.. _br20:

!br20 - Australian Government Mental Health Response to Bushfire
----------------------------------------------------------------

Data collection changes for the *Australian Government Mental Health Response to Bushfire Trauma* - January 2020

.. _br20-purpose:

Purpose
~~~~~~~

This circular outlines Primary Mental Health Care Minimum Data Set (PMHC MDS)
reporting requirements for Primary Health Networks (PHNs) who received funding
to deliver services for the *Australian Government Mental Health Response to Bushfire Trauma*.

PHNs who did not receive funding through the *Australian Government Mental Health Response to Bushfire Trauma*
have the option to use these PMHC MDS changes to modify their reporting processes.

The Department recognises the important and challenging work of PHNs and service
providers supporting individuals, families and communities following the bushfires.
The Department aim to minimise data collection burden, and changes to reporting,
for PHNs and service providers. The Department consulted with the Primary Mental Health Care Data Reference Group
on options and ways to support implementation of reporting changes.

.. _br20-scope:

Scope of new reporting requirements
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PHNs in fire affected communities are funded through the *Australian Government Mental Health Response to Bushfire Trauma*
to deliver services including:

  * Front line emergency distress and trauma counselling, with up to 10 free mental health support sessions for individuals, families and emergency services personnel
  * ‘Surge capacity’ mental health services to individuals and families who are affected, and
  * Increased demand for headspace sites in fire affected areas.

The PMHC MDS reporting changes are designed to capture this funded service activity.

The Department recognises the PHNs who did not receive funding for these activities
are likely to be delivering services to clients who were exposed to bushfire.
These PHNs have the option to also use the PMHC MDS reporting changes to capture
the service response to bushfire trauma.

Both new and existing clients are in scope of the reporting changes.

.. _br20-reports:

New ‘bushfire response tag’
~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Department will introduce a ‘bushfire response tag’ to the PMHC MDS - ``!br20``.

Instructions for applying the tag, including the definition for episodes that PHNs
should tag, are below.

The Department anticipate we will provide weekly or fortnightly reports on
bushfire response service volumes to the Minister for Health. Standard reports
will be available in the PMHC MDS to allow PHNs and the Department to monitor delivery.

All episodes, including those with the bushfire response tag, are in scope for
Primary Mental Health Care Key Performance Indicator (KPI) definitions.
There will be no changes to 6 and 12 month reporting requirements.

All other data items will be used as normal as outlined in the PMHC MDS Data Specification
document :ref:`record-formats`.

.. _br20-more-info:

Further information
~~~~~~~~~~~~~~~~~~~

If you have any questions about the reporting requirements, please contact Sarah Hinde,
Director, Mental Health Data on 02 6289 6817 or at mentalhealthdata@health.gov.au

Further details about the Mental Health Response to Bushfire Trauma is in PHN
SharePoint https://healthgov.sharepoint.com or contact psychologicalservices@health.gov.au.

.. _br20-funded-PHNS:

PHNs who received funding through the Australian Government Mental Health Response to Bushfire Trauma
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PHNs funded through the *Australian Government Mental Health Response to Bushfire Trauma*
must apply the bushfire response tag to all episodes where one or more service contacts
is funded by the response.

The PHN should apply the bushfire response tag to:

* **New clients**

  * Who are accessing services funded through the *Australian Government Mental Health Response to Bushfire Trauma*
  * Whose access to a mental health service was prompted by exposure to bushfire (e.g. their stated reason for approaching a service is their recent exposure to bushfire), and/or
  * Whose mental health service need was significantly increased by their exposure to bushfire (e.g. based on the judgement of the service provider).

* **Existing clients**

  * Who are accessing services funded through the *Australian Government Mental Health Response to Bushfire Trauma*, and/or
  * Whose mental health service need was significantly increased by their exposure to bushfire (e.g. additional or higher intensity services are required).

.. _br20-non-funded-PHNS:

PHNs who did not receive funding through the Australian Government Mental Health Response to Bushfire Trauma
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PHNs who did not receive funding for *Australian Government Mental Health Response to Bushfire Trauma* activities may use the PMHC MDS reporting changes to capture the service response to bushfire trauma.

For these PHNs, the service provider should apply the bushfire response tag to:

* **New clients**

  * Whose access to a mental health service was prompted by exposure to bushfire (e.g. their stated reason for approaching a service is their recent exposure to bushfire), and/or
  * Whose mental health service need was significantly increased by their exposure to bushfire (e.g. based on the judgement of the service provider).

* **Existing clients**

  * Whose mental health service need was significantly increased by their exposure to bushfire (e.g. additional or higher intensity services are required).

.. _br20-Data-Entry:

How to apply the tag in the PMHC MDS Data Entry interface
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The bushfire response tag is denoted ``!br20``.

There are two ways to apply the tag through the PMHC MDS data entry interface:

  1.	Manual data entry by typing the tag ``!br20`` to the tag field
  2.	Tick the box labelled ‘Australian Government Mental Health Response to Bushfire’.

This functionality will be available by 24 January 2020.

Please see ref:`HOW TO APPLY THE TAG IN THE PMHC MDS DATA ENTRY INTERFACE <>`__

.. _br20-Upload:

Considerations for applying the tag in data Uploads
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Users of local third-party or in-house developed systems will need to address
varying issues depending on the capability of the system. When considering options
please be aware the PMHC MDS specification does not require that data is captured
in the same manner as it is supplied during upload.

For example, an ideal solution could be to add an extensible multiple choice “Tags”
field to local episode data entry screens. This could initially include an “*Australian Government Mental Health Response to Bushfire*”
option thereby providing the organisation control over the possible tags that can
be captured. By ensuring that additional options were easily added in the future
such a field would support future special access programs without significant
changes, as well as other purposes local or as requested by the Department.

An alternative approach, requiring less development, would be to extend an existing
local field at the episode level with an “*Australian Government Mental Health Response to Bushfire*”
option. This gives the organisation control over the values that may be selected.

In both of the above examples, development work would also be required in the
data extraction process used to produce PMHC MDS compliant upload files. An
endorsement of “*Australian Government Mental Health Response to Bushfire*” via
either method would be converted to the tag ``!br20`` on the extracted episode records
where appropriate.

An alternative but not preferred option is that episode records could be uploaded
and then subsequently manually tagged via the data entry interface. This would
require significant manual processes and double handling but it is a use case
supported by the PMHC MDS.

If you have queries about managing data upload processes please contact the
PMHC MDS Helpdesk on support@pmhc-mds.com.
