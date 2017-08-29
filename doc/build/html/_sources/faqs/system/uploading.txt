Uploading data
^^^^^^^^^^^^^^

.. _data-template-faq:

How do I obtain a template to upload my data to the MDS?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Upload templates are available from :ref:`upload_specification`.


What do I do if I have collected the data in Excel or Access?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Visit the online MDS documentation regarding uploads were a detailed User Guide for data uploads is available.

See :ref:`upload_specification`.

.. _upload-all-contact-data-faq:

Should an upload file include all service contacts and measures for an episode every time?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Yes.

Refer to :ref:`include-all-contact-data-faq`

.. _include-all-contact-data-faq:

Do I need to include all service contacts and measures for an episode in an file?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Yes, if an episode is included in an upload file, you need to include **ALL** service
contacts and measures for that episode. Service contacts and measures that are
not included will be removed from the PMHC MDS.

.. _upload-edit-data-faq:

How can I edit a record I have previously uploaded?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There is a unique identifying key associated with every record in the PMHC MDS.
When you upload a record with the same unique identifying key with updated data,
then the MDS will recognise this records key and update the data already recorded
in the system.

When an upload is completed successfully, you will see a summary of the updated
records shown in the 'Upload Change Summary' table displayed in the View Upload
Details for complete uploads. See :ref:`viewing-complete-uploads`


.. _upload-delete-data-faq:

How can I delete a record I have previously uploaded?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If an episode is included in an upload file, you need to include **ALL** service
contacts and measures for that episode.

Any missing Service Contacts and Outcome Collection Occasions measures that have
been previously uploaded but are not present in a subsequent upload will be removed
from the PMHC MDS. Or Service Contacts and Outcome Collection Occasions can be
deleted through the Data Entry Interface.

Deleting a Client or an Episode will need to be done through the Data Entry Interface.

.. _upload-error-faq:

How can I review why the status of my upload file shows error?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Refer to :ref:`upload-error-messages`


.. _upload-view-data-faq:

How can I view my uploaded data?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

See :ref:`data-extraction` User Guide for more information.

.. _upload-csv-files-faq:

How do I upload the individual CSV files?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The CSV files must be compressed into a single file by zipping before upload.
The filename of the zip file doesn’t matter as long as it has the file extension .zip
All the required CSV files must be included on every upload. The optional CSV files
must be included in the single upload zip file that contains the required files.

See :ref:`upload_specification`

.. _upload-files-error-faq:

How do I fix upload file errors?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Refer to :ref:`upload-error-messages`

.. _upload-data-error-faq:

How do I fix data errors?
~~~~~~~~~~~~~~~~~~~~~~~~~

Refer to :ref:`record-formats` related to column name for each error. By clicking
on the field name this will take you to the field definition which outlines the
associated notes that provide guidance on which response to use.

If still unsure, please email the PMHC Helpdesk on support@pmhc-mds.com and provide
a copy of the error email, and/or a screenshot if possible. The error email is
very important for the Helpdesk to quickly identifying the error and to provide
you with a clear response on how to rectify the data issue.

.. _upload-error-support-faq:

Has my data uploaded if my file has an error status?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

No. Only 'Complete' uploads that are not in test mode, are recorded in the PMHC MDS.

See :ref:`viewing-previous-uploads`
