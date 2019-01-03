Reporting arrangements
======================

.. _uploading_data:

Uploading data
--------------
During the initial stage of implementing the PMHC MDS, PHNs and their
service providers will be able to either export data from their client
systems and upload to the PMHC MDS or manually create spreadsheets that can
then be uploaded.

The system is able to accept data for any period, either in its entirety or
partially. Please note the section below regarding timeliness.

Accepting data for any period allows organisations to upload corrections when
erroneous data has been identified. Allowing partial uploads allows for
submission of data by separate providers without the need for the PHN to
aggregate all data prior to upload.

Where associated unique keys match (e.g. Patient Key or Episode Key)
these records will be replaced, if the key is new, a new record will be created.

Data may be uploaded in either Excel or CSV format.

.. _reporting_timeliness:

Reporting timeliness
--------------------

Records must be reported to the MDS within 31 days of the activity which
generated them. For example if a client was added to the system on the 12th of
November 2016 their client record must be added to the MDS on or before the
13th of December 2016. Similarly, if a service contact occurred on that date,
the data associated with that contact must be submitted to the MDS by 13th of
December 2016 also.

The Department accesses information within the MDS for internal planning and
governance purposes therefore data in the MDS needs to be current to ensure the
accuracy of the data produced for the Department.

Transition arrangements
-----------------------
PMHC MDS upload functionality will be separate from the existing
ATAPS/MHSRRA MDS. During this initial stage the existing ATAPS/MHSRRA MDS
will be kept operational so that ATAPS/MHSRRA organisations can continue to
provide data through that system until they are either ready to export data
to the new upload interface or until the new data entry interface is
available after a later stage of development. Once all ATAPS/MHSRRA
organisations are submitting data to the PMHC MDS the ATAPS/MHSRRA MDS will
be shut down.

Data for programmes other than ATAPS/MHSRRA will have to be
submitted via the PMHC MDS interface.

Organisations should only submit data via one interface, not both.

Data submitted via the existing ATAPS/MHSRRA MDS will be converted and merged with data submitted
via the PMHC MDS in order to produce departmental reports.

.. figure:: figures/transitional-reporting.svg
   :alt: Transitional Reporting Process

   Transitional Reporting Process

Transition to Full Compliance
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Refer to the recent Department announcement on the `INFORMATION and ACTION: PHN CEO - Primary Mental Health Care Minimum Data Set Update | June 21, 2017 <https://www.pmhc-mds.com/communications/#/2017/06/21/FOR-INFORMATION-and-ACTION-PHN-CEO-Primary-Mental-Health-Care-Minimum-Data-Set-Update/>`_.

Support arrangements
--------------------
Once the upload specification has been released, support will be available to PHNs and
their third party developers to assist with implementing upload facilities
in existing client management systems. For those PHNs who do not upload via
a client management system, documentation and support will be available to
manually create spreadsheets. Once the upload system goes live in October
support will be available to assist with uploading data.
