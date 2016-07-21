Upload Specification
======================

File Types
------------
Files will be accepted in the following types:
- Comma Separated Values (CSV)
- Excel (XLSX)

Comma Separated Values (CSV)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The CSV files should conform to `RFC 4180 <https://www.ietf.org/rfc/rfc4180.txt>`__.

In addition, CSV files must be created using US-ASCII character encoding.

CSV files should have the file extension .csv

Excel (XLSX)
^^^^^^^^^^^^
Excel files should be in XLSX format and should conform to the `ECMA-376 <http://www.ecma-international.org/publications/standards/Ecma-376.htm>`__ standard.

Excel files should have the file extension .xlsx

Files to upload
---------------
The following files can be uploaded to the PMHC MDS:

.. csv-table:: Summary of files to upload
  :file: upload-file-types.csv
  :header-rows: 1

File Format
-----------
The first row line in each file should include the following columns:

+------------+---------------+
| Version    | 1.0           |
+------------+---------------+

The second row should contain the column headings as defined for each file type.
The third and subsequent rows should contain the data.

Data elements for each file are defined at :ref:`record-formats`.
<<<<<<< HEAD
Each item is a column in the file.
The Field Name should be used for the column headings.
=======

Each data item is a column in the file.

The 'Field Name' should be used for the column headings.
>>>>>>> f2651c5c6ab75c477a47babd0547577f4e39584d

.. _client-format:

Client File Format
^^^^^^^^^^^^^^^^^^
The client file is required to be uploaded each time.

Data elements for the client upload file are defined at :ref:`client-data-elements`.

:doc:`Example client file <_static/clients.csv>`_.

.. _episode-format:

Episode File Format
^^^^^^^^^^^^^^^^^^^
The episode file is required to be uploaded each time.

Data elements for the episode upload file are defined at :ref:`episode-data-elements`.

:doc:`Example episode file <_static/episodes.csv>`_.

.. _service-contact-format:

Service Contact File Format
^^^^^^^^^^^^^^^^^^^^^^^^^^^
The service contact  file is required to be uploaded each time.

Data elements for the service contact upload file are defined at :ref:`service-contact-data-elements`.

:doc:`Example service contact file <_static/service-contacts.csv>`_.

.. _k10p-format:

K10+ Collection Occasion File Format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The K10+ file is required to be uploaded each time.

Data elements for the K10+ collection occasion upload file are defined at :ref:`k10p-data-elements`.

:doc:`Example K10+ file <_static/k10p.csv>`_.

.. _k5-format:

K5 Collection Occasion File Format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The K5 file is required to be uploaded each time.

Data elements for the K5 collection occasion upload file are defined at :ref:`k5-data-elements`.

:doc:`Example K5 file <_static/k5.csv>`_.

.. _sdq-format:

SDQ Collection Occasion File Format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The SDQ file is required to be uploaded each time.

Data elements for the SDQ collection occasion upload file are defined at :ref:`sdq-data-elements`.

:doc:`Example SDQ file <_static/sdq.csv>`_.

.. _practitioner-format:

Practitioner File Format
^^^^^^^^^^^^^^^^^^^^^^^^
The practitioner file is optional. It only needs to be uploaded if there is a change in practitioners.
There is no harm in including it in every upload.

Data elements for the practitioner upload file are defined at :ref:`sdq-data-elements`.

:doc:`Example practitioner file <_static/practitioners.csv>`_.
