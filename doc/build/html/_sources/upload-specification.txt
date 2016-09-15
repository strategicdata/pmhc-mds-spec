Upload specification
====================

File types
------------
Files will be accepted in the following types:

- Comma Separated Values (CSV)
- Excel (XLSX)

Comma Separated Values (CSV)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The CSV files should conform to `RFC 4180 <https://www.ietf.org/rfc/rfc4180.txt>`__.

In addition, CSV files must be created using UTF-8 character encoding.

CSV files should have the file extension .csv

Multiple CSV files should be uploaded - one CSV file for each format described
:ref:`below <files-to-upload>`.

The CSV files must be compressed into a single file by zipping before upload. The
filename of the zip file doesn't matter as long as it has the file
extension .zip

Excel (XLSX)
^^^^^^^^^^^^
Excel files should be in XLSX format. The following versions of Excel support t
his format:

- Excel 2007 (v12.0)
- Excel 2010 (v14.0)
- Excel 2013 (v15.0)
- Excel 2016 (v16.0)

One XLSX file should be uploaded containing multiple worksheets - one worksheet
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

File format
-----------
The first row in each file/worksheet should include the following columns:

+------------+---------------+
| Version    | 1.0           |
+------------+---------------+

The second row should contain the column headings as defined for each file type.
The third and subsequent rows should contain the data.

Data elements for each file/worksheet are defined at :ref:`record-formats`.

Each item is a column in the file/worksheet. The 'Field Name' should be used for
the column headings.

All files should be internally inconsistent. An example of what this means is
that for every row in the episode file/worksheet, there should be a
corresponding client in the client file/worksheet.

.. _client-format:

Client format
^^^^^^^^^^^^^^^^^^
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
The practitioner file/worksheet is optional. It only needs to be uploaded if
there is a change in practitioners. There is no harm in including it in every upload.

Data elements for the practitioner upload file/worksheet are defined at
:ref:`practitioner-data-elements`.

Example practitioner data:

- `CSV practitioner file <_static/practitioners.csv>`_.
- `XLSX practitioner worksheet <_static/pmhc-upload.xlsx>`_.
