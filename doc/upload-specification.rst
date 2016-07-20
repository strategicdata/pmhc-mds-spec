Upload Specification
======================

File Types
------------
Files will be accepted in the following types:
* Comma Separated Values (CSV)
* Excel

Comma Separated Values (CSV)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The CSV files should conform to `RFC 4180 <https://www.ietf.org/rfc/rfc4180.txt`_.

In addition, CSV files must be created using US-ASCII character encoding.

CSV files should have the file extension .csv

Excel
^^^^^
??????Which Excel file formats will we support???????

Excel files should have the file extension .xlsx     ???????Double check this??????

Files to upload
---------------
The following files can be uploaded to the PMHC MDS:
+-------------------------------------------------+----------------------+-----------------------+-----------+
|File Type                                        | CSV filename         | Excel filename        | Required  |
+=================================================+======================+=======================+===========+
| :ref:`client-format <Clients>`                  | clients.csv          | clients.xlsx          | Required  |
+-------------------------------------------------+----------------------+-----------------------+-----------+
| :ref:`episode-format <Episodes>`                | episodes.csv         | episodes.xlsx         | Required  |
+-------------------------------------------------+----------------------+-----------------------+-----------+
| :ref:`service-contact-format <Service Contacts>`| service-contacts.csv | service-contacts.xlsx | Required  |
+-------------------------------------------------+----------------------+-----------------------+-----------+
| :ref:`k10p-format <K10+ Collection Occasions>`  | k10p.csv             | k10p.xlsx             | Required  |
+-------------------------------------------------+----------------------+-----------------------+-----------+
| :ref:`k5-format <K5 Collection Occasions>`      | k5.csv               | k5.xlsx               | Required  |
+-------------------------------------------------+----------------------+-----------------------+-----------+
| :ref:`sdq-format <SDQ Collection Occasions>`    | sdq.csv              | sdq.xlsx              | Required  |
+-------------------------------------------------+----------------------+-----------------------+-----------+
| :ref:`practitioner-format <Practitioners>`      | practitioner.csv     | practitioner.xlsx     | Optional  |
+-------------------------------------------------+----------------------+-----------------------+-----------+

File Format
-----------
The first row line in each file should include the following columns:
+------------+---------------+
| Version    | 1.0           |
+------------+---------------+

The second row should contain the column headings as defined for each file type.
The third and subsequent rows should contain the data.

Data elements for each file are defined at :ref:`record-formats`.
Each item is a column in the file.
The Field Name should be used for the column headings.

.. _client-format:

Client File Format
^^^^^^^^^^^^^^^^^^
The client file is required to be uploaded each time.

Data elements for the client upload file are defined at :ref:`client-data-elements`.

:doc:`Example client file </data/clients.csv>`.

.. _episode-format:

Episode File Format
^^^^^^^^^^^^^^^^^^^
The episode file is required to be uploaded each time.

Data elements for the episode upload file are defined at :ref:`episode-data-elements`.

:doc:`Example episode file </data/episodes.csv>`.

.. _service-contact-format:

Service Contact File Format
^^^^^^^^^^^^^^^^^^^^^^^^^^^
The service contact  file is required to be uploaded each time.

Data elements for the service contact upload file are defined at :ref:`service-contact-data-elements`.

:doc:`Example service contact file </data/service-contacts.csv>`.

.. _k10p-format

K10+ Collection Occasion File Format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The K10+ file is required to be uploaded each time.

Data elements for the K10+ collection occasion upload file are defined at :ref:`k10p-data-elements`.

:doc:`Example K10+ file </data/k10p.csv>`.

.. _k5-format

K5 Collection Occasion File Format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The K5 file is required to be uploaded each time.

Data elements for the K5 collection occasion upload file are defined at :ref:`k5-data-elements`.

:doc:`Example K5 file </data/k5.csv>`.

.. _sdq-format

SDQ Collection Occasion File Format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The SDQ file is required to be uploaded each time.

Data elements for the SDQ collection occasion upload file are defined at :ref:`sdq-data-elements`.

:doc:`Example SDQ file </data/sdq.csv>`.

.. _practitioner-format

Practitioner File Format
^^^^^^^^^^^^^^^^^^^^^^^^
The practitioner file is optional. It only needs to be uploaded if there is a change in practitioners.
There is no harm in including it in every upload.

Data elements for the practitioner upload file are defined at :ref:`sdq-data-elements`.

:doc:`Example practitioner file </data/practitioners.csv>`.
