.. _data_spec_changelog:

Data Specification Change log
=============================


21/6/2019
---------

* :ref:`validation-rules`

  * Moved SDQ Future Validations to the :ref:`SDQ Current Validations <sdq-current-validations>`.

    * Subscale and total difficulties scores are now calculated/validated against
      item scores provided, as per :ref:`Scoring the SDQ <scoring-the-sdq>`.


22/3/2019 - Version 2.0
-----------------------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * Added :ref:`metadata-data-elements`

    * :ref:`provider-organisation-data-elements`

      * Removed Provider Organisation - Organisation Status

      * Added :ref:`dfn-organisation_start_date`

      * Added :ref:`dfn-organisation_end_date`

    * :ref:`episode-data-elements`

      * Added :ref:`dfn-continuity_of_support`

* :ref:`upload_specification`

  * Updated :ref:`file-format` to remove the requirement that the first row
    of each file/worksheet must include the columns Version,1.0. The first row
    must now contain the column headings as defined for each file type.

  * Added :ref:`metadata-format`
