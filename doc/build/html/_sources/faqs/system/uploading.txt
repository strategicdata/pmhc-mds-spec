.. _uploading-data-FAQs:

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

.. _which_data:

Should an upload file only contain new or changed data or should it contain all cumulative data from the start of service delivery?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

All data should be uploaded for the first upload, but subsequently only new or
changed data should be uploaded. However, parent records of new or changed data
also need to be uploaded in order to keep the file internally consistent.

As example of what this means is that if a service contact record is added
or changed, there msut be a corresponding episode record in the episode file
and a client record in the clients file, even if the episode and client data
hasn't changed. Also, as service contacts refer to practitioners, there must
also be a practitioner record in the practitioner file.

.. _upload-edit-data-faq:

How can I edit a record I have previously uploaded?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There is a unique identifying key associated with every record in the PMHC MDS.
When you upload a record with the same unique identifying key with updated data,
then the MDS will recognise this record's key and update the data already recorded
in the system.

When an upload is completed successfully, you will see a summary of the updated
records shown in the 'Upload Change Summary' table displayed in the View Upload
Details for complete uploads. See :ref:`viewing-complete-uploads`.

.. _upload-delete-data-faq:

How can I delete a record I have previously uploaded?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Please refer to :ref:`deleting-records`.

.. _upload-error-faq:

How can I review why the status of my upload file shows error?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If the status of your file shows error, you can view the returned errors
through Viewing Previous Uploads.

Refer to :ref:`upload-error-messages`.

.. _upload-view-data-faq:

How can I view my uploaded data?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When an upload is completed successfully, you will see a summary of the updated
records shown in the 'Upload Change Summary' table. See :ref:`viewing-complete-uploads`.

If you have the Reporting role, you can produce system reports or extract recorded data.
See :ref:`reports`.

.. _upload-csv-files-faq:

How do I upload the individual CSV files?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The CSV files must be compressed into a single file by zipping before upload.
The filename of the zip file doesn’t matter as long as it has the file extension .zip
All the required CSV files must be included for each upload, even if the file
contains no data. If choosing to include any optional CSV files, these must be
included with the required files in the single upload zip file.

See :ref:`upload_specification`.

.. _upload-files-error-faq:

How do I fix upload file errors?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Refer to :ref:`upload-error-messages`.

.. _upload-data-error-faq:

How do I fix data errors in an upload?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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

See :ref:`viewing-previous-uploads`.

.. _when_is_file_accepted:

Will valid data be accepted if there are errors in the file?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For example, if we upload 200 lines of service contacts, and there are
validation errors in 10 lines - will 190 lines be accepted?

All files and records in an upload have to validate before any data is
accepted.

.. _changing_validation_rules:

If validation rules change how will you treat legacy data?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When implementing new validation rules or changing existing rules, where
possible we prefer to enfore the new rules as of a certain date.

For example, if a data field that is now optional where to be made mandatory, we
would specify that it was mandatory as of a particular date. For any data previous
to that date the field could still be optional, but for any data after that
date the field would be mandatory.
