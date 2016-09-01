Using the data specification to create client forms
===================================================

Some consideration needs to be taken when designing forms based on this data
specification.

Not stated/missing codes
------------------------

Not stated/missing codes (often code 9 or 99) are not to be available as a valid
answers to questions but is intended for use:

* Primarily when importing data from other data collections that do not contain
  mappable data.
* Where an answer was refused.
* Where the question was not able to be asked prior to completion of assistance
  because the client was unable to communicate or a person who knows the client
  was not available.

.. _form_country_of_birth:

Country of Birth
----------------

:ref:`dfn-country_of_birth` has a large permitted domain. It is not feasible to provide
all allowed responses on a form. The Australian Bureau of Statistics
recommends two standard question modules for Country of Birth:

* :ref:`cob_detailed_module`
* :ref:`cob_short_module`

.. _cob_detailed_module:

Detailed question module
^^^^^^^^^^^^^^^^^^^^^^^^

The detailed question module is the recommended module for Country of Birth.
An example is::

  Q. In which country [were you][was the person] born?

    Australia     q
    England       q
    New Zealand   q
    India         q
    Italy         q
    Vietnam       q
    Philippines   q
    South Africa  q
    Scotland      q
    Malaysia      q
    Other - Please specify..............

Form designers do not need to use the countries shown in this example. They
should choose countries relevant to the population for their region. The "Other"
response can then be mapped to a :ref:`dfn-country_of_birth` during data entry.

.. _cob_short_module:

Short question module
^^^^^^^^^^^^^^^^^^^^^

The short question module can be used where there are space constraints.
An example is::

  Q. In which country [were you][was the person] born?

    Australia    q
    Other - please specify..............

The "Other" response can then be mapped to a country code during data entry.
This form has higher overheads as each response will need to be matched to a
:ref:`dfn-country_of_birth` during data entry.

.. _form_main_lang_at_home:

Main Language Spoken at Home
----------------------------

:ref:`dfn-main_lang_at_home` has a large permitted domain. It is not feasible
to provide all allowed responses on a form. The Australian Bureau of Statistics
recommends two standard question modules for Main Language Spoken at Home:

* :ref:`mlsh_detailed_module`
* :ref:`mlsh_short_module`

.. _mlsh_detailed_module:

Detailed question module
^^^^^^^^^^^^^^^^^^^^^^^^

The detailed question module is the recommended module for Main Language
Spoken at Home. An example is::

  Q. [Do you][Does the person] speak a language other than English at home?
     (If more than one language, indicate the one that is spoken most often.)

    No, English       q
    Yes,  Mandarin    q
    Yes,  Italian     q
    Yes,  Arabic      q
    Yes,  Cantonese   q
    Yes,  Greek       q
    Yes,  Vietnamese  q
    Yes,  Spanish     q
    Yes,  Hindi       q
    Yes,  Tagalog     q
    Yes,  Other - Please Specify.............

For self enumerated questionnaires, respondents should be instructed to mark one box only.

Form designers do not need to use the languages shown in this example. They
should choose languages relevant to the population for their region. The "Other"
response can then be mapped to a :ref:`dfn-main_lang_at_home` during data entry.

.. _mlsh_short_module:

Short question module
^^^^^^^^^^^^^^^^^^^^^

The short question module can be used where there are space constraints.
An example is::

  Q. [Do you] [Does the person] speak a language other than English at home?

    No, English only    q
    Yes,  Other - please specify..............

The "Other" response can then be mapped to a country code during data entry.
This form has higher overheads as each response will need to be matched to a
:ref:`dfn-main_lang_at_home` during data entry.
