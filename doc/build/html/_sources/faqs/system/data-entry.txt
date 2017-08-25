.. _data-entry-FAQs:

Entering data in the PMHC Minimum Data Set
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. _slk-as-client-key-faq:

Why can't we use the SLK as the client key?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Client Key is required to be a unique client identifier. The SLK isn’t a
unique key and therefore not suitable to be used as the Client Key.

Refer to data specifications for :ref:`identifier_management`.

.. _manage-client-key-faq:

What is the best way to manage the client key?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Client Key needs to be stable for each individual within the Provider Organisation.

Initially the PHN may decide to play a role in coordinating assignment and management
of these keys for Provider Organisations, prior to the PMHC MDS implementation a
Master Client Index during :ref:`Stage-Two` of development.

See data specifications for :ref:`identifier_management`.

Refer to the Department's response to :ref:`identifier-and-key-FAQs`.

.. _best-practice-client-key-faq:

Can you suggest a best practice approach to managing client keys?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

We understand that PHNs and Provider Organisations will approach :ref:`identifier_management`
in various different ways to best suit their practice. PHNs may decide to
manage client keys until the Master Client Index is developed and released
in :ref:`Stage-Two`. In the interim, we suggest speaking with your PHN or another
Provider Organisation in your network to understand their approach to managing
their client keys.

Refer to the Department's response to :ref:`identifier-and-key-FAQs`.

.. _master-client-index-faq:

How will the Master Client Index work?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The previous PMHC MDS specification requires a Client Key that is unique and
stable at the PHN regional level, not at the provider organisation level. The
purpose of the Master Client Index is to help PHNs and their provider organisations
manage client information across the PHN region. This requirement has proven
problematic for PHNs and is being worked through by the PMHC MDS Working Group.

To determine what issues exist with managing the client key and possible solutions,
nine PHNs worked with Strategic Data to describe their models for triaging patients,
the information systems being used by PHNs and provider organisations, the ease of
updating information systems and resources available for manual reconciliation of clients.

As a result of this work, a Master Client Index is not possible at this time,
and as such, will not be a requirement for full compliance from 1 July 2017.

See :ref:`dev-MCI-faq`

.. _data-entry-frequency-faq:

How often should I enter data into the MDS?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Refer to :ref:`reporting_timeliness`.

.. _data-entry-episode-uncommenced:

Why is an episode showing as uncommenced?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The episode definition states that 'Episodes commence at the point of first contact.
The episode start date will be derived from the first service contact date.'

When an episode does not have any service contacts added yet, it does not have
a start date and the system will reported it as 'Uncommenced'.

Refer to :ref:`key-concepts-episode`.

.. _do-not-have-answer-faq:

What do I do if the GP / mental health provider has not given an answer to one or more questions in the minimum dataset?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Provider Organisations should make every effort to ensure that the data entered
into the MDS is as complete as possible. However, most data items specify
a 'Missing' response. Where information is unavailable, please use this
response item. The aim is to minimise missing data as much as possible.

Refer to :ref:`record-formats` for more information. By clicking on the field name
this will take you to the field definition which outlines the associated notes that
provide guidance on which response to use.

.. _data-does-not-fit-faq:

What are the options where the information collected does not fit into the available fields?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Each data item has associated notes that provide guidance on which response to
use. By clicking on the :ref:`record-formats` field name this will take you to the
field definition which outlines the associated notes.

Refer to :ref:`record-formats`.

.. _updated-info-faq:

Can I go back and enter information if I don’t have it at the time?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Yes, the MDS allows you to go back and enter information at a later date.

When data in the upload has the same identification key as recorded in the MDS,
(eg Client, Practitioner, Episode, Service Contact, and Outcome Collection Keys)
the data will automatically be updated for these files. The number of files present,
created, and updated, are summarised on the successful upload notification email.

Refer to upload specification :ref:`file-format`.

.. _test-fictitious-data-faq:

Can I enter fictitious data as a part of testing?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The MDS is live and data uploads will be recorded. Real PMHC data can be trialled
by uploading in test mode, whereas fictitious data should be trialled with a
'Test Organisation' on developers.pmhc-mds.net.

See `PMHC Developers Announcement <https://www.pmhc-mds.com/2017/02/17/Separate-PMHC-MDS-now-available-for-software-developers-to-test-upload-files/>`__.

.. _enter-MHNIP-data-faq:

Where do I enter MHNIPS data collection?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Department of Health is expecting all commissioned Mental Health Nursing services
data from July 2016 to be entered into the PMHC MDS.

Refer to the Department's response to :ref:`MHNIP-data-faq`

.. _capture-additional-data-faq:

The PHMC MDS specifications seems limited. Can we capture and record additional data?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PHNs can choose to capture and record additional data outside the PMHC MDS.

How do I enter a referral?
~~~~~~~~~~~~~~~~~~~~~~~~~~

A referral is entered as an :ref:`key-concepts-episode`

Refer to the online User Guide :ref:`episode-data`

How do I enter a K10+, K5 or SDQ?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These measures are entered as an :ref:`outcome-collection-occasion-data-elements`

Refer to the online User Guide :ref:`episode-data`
