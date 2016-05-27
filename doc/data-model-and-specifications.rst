Data model and specifications
=============================

Data integrity
---------------

For cases of missing data (that is, unknown, not stated or not
available):

-  For **Numeric [Num] fields**, the data should be reported as zero,
   using leading zeros when necessary to pad out the field to the
   required length. The principle here is that all numeric fields
   require a valid value.

-  For **Text [Char] fields**, the data should be space-filled to the
   required length. For single character fields where a 'missing/not
   stated' value has been specified for a particular data element (for
   example, '9' has been specified for missing data), use the stated
   value for 'missing/not stated' rather than simply space filling.

Values in **Date** [**Date**\ ] fields must be recorded in compliance
with the standard format used across the *National health data
dictionary*; specifically, dates must be of fixed 8 column width in the
format DDMMYYYY, with leading zeros used when necessary to pad out a
value. For instance, 13 March |end-year| would appear as 1303\ |end-year|.

Values in **Numeric** [**Num**\ ] fields must be zero-filled and
right-justified. These should consist only of the numerals 0 to 9 and
the decimal ('.') point if applicable to the data element.

Note: Fields defined as 'Numeric' are those that have numeric
properties—that is, the values, for example, can be added or subtracted
in a manner that is valid. Where a field uses numeric characters that do
not have these properties (for example, the use of numbers for *Patient
identifier*), the field is defined as 'Character'.

Values in **Character** [**Char**\ ] fields must be left justified and
space-filled. These should consist of any of the printable ASCII
character set (that is, excluding control codes such as newline, bell
and linefeed).

Record formats
--------------

Referrer
^^^^^^^^

.. csv-table:: Referrer record layout
   :file: records/ref.csv
   :header-rows: 1
   
.. include:: records/ref-notes.rst

Provider
^^^^^^^^

.. csv-table:: Provider record layout
  :file: records/pro.csv
  :header-rows: 1

.. include:: records/pro-notes.rst

Client
^^^^^^

.. csv-table:: Client record layout
   :file: records/cli.csv
   :header-rows: 1

.. include:: records/cli-notes.rst

Episode
^^^^^^^

.. csv-table:: Episode record layout
   :file: records/epi.csv
   :header-rows: 1
   
.. include:: records/epi-notes.rst

Service event
^^^^^^^^^^^^^

.. csv-table:: Service event record layout
   :file: records/ser.csv
   :header-rows: 1
   
.. include:: records/ser-notes.rst

Collection occasion
^^^^^^^^^^^^^^^^^^^

.. csv-table:: Collection occasion record layout
   :file: records/coloc.csv
   :header-rows: 1
   
.. include:: records/coloc-notes.rst
