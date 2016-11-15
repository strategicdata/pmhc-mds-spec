Upload
======

You will only be able to see the Upload tab if you have been assigned
the 'Upload' role.

If you don’t have access to the Upload tab and you believe you should, please
contact someone in your provider organisation or provider organisation's PHN
who has the 'User Management' role.

If you are unsure who has the 'User Management' role please email the
PMHC helpdesk at support@pmhc-mds.com

After navigating to the Upload tab, you will be presented with a drop down list
of the organisations to which you can upload.

.. figure:: screen-shots/upload.png
   :alt: PMHC MDS Upload

.. _uploading_a_file:

Uploading a file
^^^^^^^^^^^^^^^^

After navigating to the Upload tab, you will be able to upload
data files to organisations for which you have the 'Upload' role.

You can upload data files through the upload tab, by following these steps:

1. Navigate to the 'Upload' tab.
2. If you are allowed to upload to more than one organisation you will be
   asked to enter an organisation name.
3. Select the name of the organisation whose data you are uploading from the drop down list.

   .. figure:: screen-shots/upload.png
      :alt: PMHC MDS Upload

4. Click the blue 'Select File' button.
5. Navigate to where the upload file is saved on your system. Select the file
   and click the grey 'Open' button.

   .. figure:: screen-shots/file-selected.png
      :alt: PMHC MDS File Selected

6. Check to ensure you have selected the correct file by reviewing the file
   name now displayed below the 'Select File' button.

7. Click the green 'Upload' button.

You will receive confirmation that your file has been accepted. The file will
now be validated and you will shortly receive an email informing you if
your file was successfully uploaded to the PMHC MDS, or informing you of
any errors that occurred. Further discussion about the error messages can be
found at :ref:`error-messages`. Please email support@pmhc-mds.com if you don't
receive an email within one hour.

.. _error-messages:

Error messages
^^^^^^^^^^^^^^

Could not find worksheet [Name]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This error occurs when you are uploading and Excel spreadsheet. The worksheet
names need to exactly match the name in the 'Excel worksheet name' column
of the 'Summary of files to upload' table at :ref:`files-to-upload`. If all the
required worksheets are not present you will receive the error above.

Invalid version line in worksheet [Name]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The top line of the worksheet must include the following columns:

+------------+---------------+
| Version    | 1.0           |
+------------+---------------+

Column [Name] is not valid
~~~~~~~~~~~~~~~~~~~~~~~~~~

Each item is a column in the file/worksheet. The 'Field Name' should be used for
the column headings. These values can be found at :ref:`file-format`, or
listed on the provided example file at :ref:`files-to-upload`. If the Column [Name]
doesn't match identically you will receive the error above.

Could not parse worksheet [Name]: Bad request at ...
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Something has gone wrong with the upload. Please contact support@pmhc-mds.com.

Column [Name] is required on row ...
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There is a required field that has not been entered. If not supplied, insert the
default 'Missing' or 'Not recorded' value. These values can be found at :ref:`record-formats`.
If the Column [Name] is blank in a mandatory field you will receive the error above.
