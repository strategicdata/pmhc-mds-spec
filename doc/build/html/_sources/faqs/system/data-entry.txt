.. _data_entry_FAQs:

Entering data in the PMHC Minimum Data Set
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. _slk_as_client_key:

Why can't we use the SLK as the client key?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The SLK isn’t necessarily a unique key and therefore the Client Key is required
to be a unique client identifier. The Client Key needs to be stable for each
individual within the PHN. Please refer to :ref:`identifier_management`.

.. _manage-client-key-faqs:

What is the best way to manage the client key?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Client Key needs to be stable for each individual within the PHN.

Initially the PHN will need to play a role in coordinating assignment and management
of these keys for Provider Organisations, prior to the PMHC MDS implementation a
Master Client Index during :ref:`Stage_Two` of development.

Please refer to :ref:`identifier_management`.

.. _best-practice-client-key-faqs:

Can you suggest a best practice approach to managing client keys?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

We understand that PHNs approach :ref:`identifier_management` in various different ways
to best suit their practice. PHNs will continue to manage client keys until the
Master Client Index is developed and released in :ref:`Stage_Two`. In the interim, we suggest
speaking with another PHN in your network to understand their approach to managing
their client keys.

.. _master-client-index-faqs:

How will the Master Client Index work?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

During :ref:`Stage_Two` of the PMHC MDS implementation a Master Client Index will be created
to allow Provider Organisations to manage the :ref:`client_keys` across PHNs. :ref:`Stage_Two`
development updates will be released by the Department of Health in the lead up to
release. Regularly check the announcements on the home page (https://pmhc-mds.net/) to keep informed.

.. _data-entry-frequency-faqs:

How often should I enter data into the MDS?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Please refer to :ref:`reporting_timeliness`.

.. _do-not-have-answer-faqs:

What do I do If the GP / mental health provider has not given an answer to one or more questions in the minimum dataset?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Provider Organisations should make every effort to ensure that the data entered
into the MDS is as complete as possible. However, most data items specify
a 'Missing' response. Where information is unavailable, please use this
response item. The aim is to minimise missing data as much as possible.

.. _updated-info-faqs:

Can I go back and enter information if I don’t have it at the time?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Yes, the MDS allows you to go back and enter information at a later date.

.. _test_fictitious_data_faq:

Can I enter fictitious data as a part of testing?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The MDS is live and data uploads will be recorded. Real PMHC data can be trialled
by uploading in test mode, whereas fictitious data should be trialled with a
'Test Organisation' on developers.pmhc-mds.net.  See `PMHC Developers Announcement <https://www.pmhc-mds.com/2017/02/17/Separate-PMHC-MDS-now-available-for-software-developers-to-test-upload-files/>`__.

.. _enter_MHNIP_data_faq:

Where do I enter MHNIPS data collection?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Department of Health is expecting all commissioned Mental Health Nursing services
data from July 2016 to be entered into the PMHC MDS. Please refer to the Department's
response to :ref:`MHNIP_data_faqs`

.. _record_additional_data_faq:

The PHMC MDS specifications seems limited. Can we capture and record additional data?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

See :ref: ``
