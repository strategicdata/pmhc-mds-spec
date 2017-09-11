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

.. _upload-error-faq:

How can I review why the status of my upload file shows error?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Refer to :ref:`upload-error-messages`

.. _view-uploaded-data-faq:

How can I view my uploaded data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

See :ref:`data-extraction` User Guide for more information.

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
