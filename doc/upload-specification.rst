.. _upload_specification:

Upload specification
====================

File types
----------
Files will be accepted in the following types:

- Comma Separated Values (CSV)
- Excel (XLSX)

Comma Separated Values (CSV)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The CSV files must conform to `RFC 4180 <https://www.ietf.org/rfc/rfc4180.txt>`__.

In addition, CSV files must be created using UTF-8 character encoding.

CSV files must have the file extension .csv

Multiple CSV files must be uploaded - one CSV file for each format described
:ref:`below <files-to-upload>`.

The CSV files must be compressed into a single file by zipping before upload. The
filename of the zip file doesn't matter as long as it has the file
extension .zip

Excel (XLSX)
^^^^^^^^^^^^
Excel files must be in XLSX format. The following versions of Excel support this
format:

- Excel 2007 (v12.0)
- Excel 2010 (v14.0)
- Excel 2013 (v15.0)
- Excel 2016 (v16.0)

One XLSX file must be uploaded containing multiple worksheets - one worksheet
for each format described :ref:`below <files-to-upload>`.

When saving your file, please choose the filetype 'Excel Workbook (.xlsx)'.

The filename of the Excel file doesn't matter as long as it has the file
extension .xlsx

.. _files-to-upload:

Files or worksheets to upload
-----------------------------
The following files/worksheets can be uploaded to the PMHC MDS:

.. csv-table:: Summary of files to upload
  :file: upload-file-types.csv
  :header-rows: 1

Each of the example files assumes the following organisation structure:

+------------------+----------------------------+---------------------------------------------+---------------------+
| Organisation Key | Organisation Name          | Organisation Type                           | Parent Organisation |
+==================+============================+=============================================+=====================+
| PHN999           | Test PHN                   | Primary Health Network                      | None                |
+------------------+----------------------------+---------------------------------------------+---------------------+
| NFP01            | Test Provider Organisation | Private Allied Health Professional Practice | PHN999              |
+------------------+----------------------------+---------------------------------------------+---------------------+

.. _file-format:

File format
-----------
The first row in each file/worksheet must include the following columns:

+------------+---------------+
| Version    | 1.0           |
+------------+---------------+

The second row must contain the column headings as defined for each file type.
The third and subsequent rows must contain the data.

Data elements for each file/worksheet are defined at :ref:`record-formats`.

Each item is a column in the file/worksheet. The 'Field Name' must be used for
the column headings. The columns must be kept in the same order.

All files must be internally consistent. An example of what this means is
that for every row in the episode file/worksheet, there must be a
corresponding client in the client file/worksheet.

It also means that for every episode included in an upload file, you must include
ALL service contacts and measures for that episode.

.. _client-format:

Client format
^^^^^^^^^^^^^
The client file/worksheet is required to be uploaded each time.

Data elements for the client upload file/worksheet are defined at
:ref:`client-data-elements`.

Example client data:

- `CSV client file <_static/clients.csv>`_.
- `XLSX client worksheet <_static/pmhc-upload.xlsx>`_.

.. _episode-format:

Episode file format
^^^^^^^^^^^^^^^^^^^
The episode file/worksheet is required to be uploaded each time.

Data elements for the episode upload file/worksheet are defined at
:ref:`episode-data-elements`.

Example episode data:

- `CSV episode file <_static/episodes.csv>`_.
- `XLSX episode worksheet <_static/pmhc-upload.xlsx>`_.

.. _service-contact-format:

Service Contact file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^
The service contact file/worksheet is required to be uploaded each time.

Data elements for the service contact upload file/worksheet are defined at
:ref:`service-contact-data-elements`.

Example service contact data:

- `CSV service contact file <_static/service-contacts.csv>`_.
- `XLSX service contact worksheet <_static/pmhc-upload.xlsx>`_.

.. _k10p-format:

K10+ Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The K10+ file/worksheet is required to be uploaded each time.

Data elements for the K10+ collection occasion upload file/worksheet are defined
at :ref:`k10p-data-elements`.

Example K10+ data:

- `CSV K10+ file <_static/k10p.csv>`_.
- `XLSX K10+ worksheet <_static/pmhc-upload.xlsx>`_.

.. _k5-format:

K5 Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The K5 file/worksheet is required to be uploaded each time.

Data elements for the K5 collection occasion upload file/worksheet are defined
at :ref:`k5-data-elements`.

Example K5 data:

- `CSV K5 file <_static/k5.csv>`_.
- `XLSX K5 worksheet <_static/pmhc-upload.xlsx>`_.

.. _sdq-format:

SDQ Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The SDQ file/worksheet is required to be uploaded each time.

Data elements for the SDQ collection occasion upload file/worksheet are defined
at :ref:`sdq-data-elements`.

Example SDQ data:

- `CSV SDQ file <_static/sdq.csv>`_.
- `XLSX SDQ worksheet <_static/pmhc-upload.xlsx>`_.

.. _practitioner-format:

Practitioner file format
^^^^^^^^^^^^^^^^^^^^^^^^
The practitioner file/worksheet is required for the first upload and if there
is a change in practitioners. It is optional otherwise.  There is no harm in
including it in every upload.

Data elements for the practitioner upload file/worksheet are defined at
:ref:`practitioner-data-elements`.

Example practitioner data:

- `CSV practitioner file <_static/practitioners.csv>`_.
- `XLSX practitioner worksheet <_static/pmhc-upload.xlsx>`_.

.. _organisation-format:

Organisation file format
^^^^^^^^^^^^^^^^^^^^^^^^
This file is for PHN use only. The organisation file/worksheet is optional. It can
be included to upload Provider Organisations in bulk or if there is a change in
Provider Organisation details. There is no harm in including it in every upload.

Data elements for the Provider Organisation upload file/worksheet are defined at
:ref:`provider-organisation-data-elements`.

Example organisation data:

- `CSV organisation file <_static/organisations.csv>`_.
- `XLSX organisation worksheet <_static/pmhc-upload.xlsx>`_.

.. _deleting-records:

Deleting records
^^^^^^^^^^^^^^^^

* Records of the following type can be deleted via upload:

  * Client
  * Episode
  * Service Contact
  * K10+
  * K5
  * SDQ
  * Practitioner

  Organisation records *cannot* be deleted via upload. Please email
  support@pmhc-mds.com if you need to delete an organisation.

* An extra optional "delete" column can be added to each of the supported
  upload files/worksheets.

* If included, this column must be the third column in each file, after the organisation
  path and the record's entity key.

* To delete a record, include its organisation path and its entity key, leave
  all other fields blank and put "delete" in the "delete" column. Please note
  that case is important. "DELETE" will not be accepted.

* Marking a record as deleted will require all child records of that record also
  to be marked for deletion. For example, marking a client as deleted will
  require all episodes, service contacts and collection occasions of that
  client to be marked for deletion.

* While deletions can be included in the same upload as insertions/updates,
  we recommend that you include all deletions in a separate upload that is
  uploaded before the insertions/updates.

Example files showing how to delete via upload:

- `XLSX file containing all the worksheets <_static/pmhc-upload-delete.xlsx>`_.
- `CSV delete client file <_static/clients-delete.csv>`_.
- `CSV delete episode file <_static/episodes-delete.csv>`_.
- `CSV delete service contact file <_static/service-contacts-delete.csv>`_.
- `CSV delete K10+ file <_static/k10p-delete.csv>`_.
- `CSV detete K5 file <_static/k5-delete.csv>`_.
- `CSV delete SDQ file <_static/sdq-delete.csv>`_.
- `CSV delete practitioner file <_static/practitioners-delete.csv>`_.

Frequently Asked Questions
--------------------------

Please also refer to `Uploading data <https://docs.pmhc-mds.com/user-documentation/en/latest/faqs/system/uploading.html>`_ for answers to frequently
asked questions about uploading data.
