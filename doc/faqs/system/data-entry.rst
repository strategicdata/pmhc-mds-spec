.. _data-entry-FAQs:

Entering data in the PMHC Minimum Data Set
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. _manage-client-key-faq:

What is the best way to manage the client key?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Client Key needs to be stable for each individual within the Provider Organisation.

Initially the PHN may decide to play a role in coordinating assignment and management
of these keys for Provider Organisations, prior to the PMHC MDS implementation a
Master Client Index during :ref:`Stage-Two` of development.

See data specifications for :ref:`identifier_management`.

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

.. _slk-as-client-key-faq:

Why can't we use the SLK as the client key?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Client Key is required to be a unique client identifier. The SLK isn’t a
unique key and therefore not suitable to be used as the Client Key.

Refer to data specifications for :ref:`identifier_management`.

.. _master-client-index-faq:

How will the Master Client Index work?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The previous PMHC MDS specification requires a Client Key that is unique and
stable at the PHN regional level, not at the Provider Organisation level. The
purpose of the Master Client Index is to help PHNs and their Provider Organisations
manage client information across the PHN region. This requirement has proven
problematic for PHNs and is being worked through by the PMHC MDS Working Group.

To determine what issues exist with managing the client key and possible solutions,
nine PHNs worked with Strategic Data to describe their models for triaging patients,
the information systems being used by PHNs and Provider Organisations, the ease of
updating information systems and resources available for manual reconciliation of clients.

As a result of this work, a Master Client Index is not possible at this time,
and as such, will not be a requirement for full compliance from 1 July 2017.

See :ref:`dev-MCI-faq`.

.. _data-entry-frequency-faq:

How often should I enter data into the MDS?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Refer to :ref:`reporting_timeliness`.

.. _test-fictitious-data-faq:

Can I enter fictitious data as a part of testing?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The MDS is live and data uploads will be recorded. Real PMHC data can be trialled
by uploading in test mode, whereas fictitious data should be trialled with a
'Test Organisation' on developers.pmhc-mds.net.

See `PMHC Developers Announcement <https://www.pmhc-mds.com/2017/02/17/Separate-PMHC-MDS-now-available-for-software-developers-to-test-upload-files/>`__.

.. _enter-slk-faq:

How do I find or create a Client's Statistical Linkage Key (SLK)?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you don't have an internal system that can provide you with the client's SLK,
an SLK generator is available within the client data entry forms. Refer to the
online User Guide :ref:`add-client`.

There is also a manual Statistical Linkage Key Generator available on the PMHC MDS
website, under the SLK tab - https://pmhc-mds.net/#/slk. See :ref:`slk-generator`.

.. _enter-unique-key-faq:

How do I find what the Episode Key, Service Contact Key and Outcome Collection Occasion Key is?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The :ref:`Episode Key <episode-data-elements>`, :ref:`Service Contact Key<service-contact-data-elements>`
and :ref:`Outcome Collection Occasion Key <outcome-collection-occasion-data-elements>`
are the system :ref:`unique identification keys <unique_keys>` that will need to
be manually created and managed by your Provider Organisation.

Each record needs to be assigned a stable unique key within the Provider Organisation,
in order to facilitate adding/updating/deleting each item when entering data.

See data specifications for :ref:`identifier_management`.

.. _enter-practitioner-key-faq:

How do I find what my Practitioner Key is?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Practitioner Key is one of the system :ref:`unique identification keys <unique_keys>` that will
need to be manually created and managed by your Provider Organisation.

Data Entry users can add a Practitioner once they know their key. Refer to the
online User Guide :ref:`add-practitioner`.

.. _enter-edit-key-faq:

How can I edit a record's identifying key?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Each record needs to be assigned a stable unique key within the Provider Organisation,
in order to facilitate adding/updating/deleting each item when entering data.

You can edit a record's identifying key you have entered within the data entry interface. There
is an edit key button available when editing a records details.

See:

* :ref:`edit-practitioner-key`

* :ref:`edit-client-key`

* :ref:`edit-episode-key`

* :ref:`edit-service-contact-key`

* :ref:`edit-collection-occasion-key`

.. _enter-referral-faq:

How do I enter a referral?
~~~~~~~~~~~~~~~~~~~~~~~~~~

A referral can be entered as an :ref:`key-concepts-episode`.

An Episode does not need to be concluded if the client requires as a new referral. If the treatment continues with a client, the service contacts can continue to be recorded to the original Episode until treatment is formally concluded either clinically or administratively.

Refer to the online User Guide :ref:`episode-data`.

.. _enter-k10-k5-sdq-faq:

How do I enter a K10+, or K5?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These measures tools, K10+ and K5, are entered as an :ref:`outcome-collection-occasion-data-elements`.

Refer to the online User Guide :ref:`outcome-collection-occasion-data`.

.. _enter-sdq-faq:

How do I enter a SDQ measure?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The SDQ development for the Data Entry Interface is on hold, as the Department is currently in licensing negotiation with the SDQ developers to
be able to add the complete SDQ online form to the PMHC MDS. Refer to :ref:`Data Entry Interface Development<dev-data-entry-faq>`.

The SDQ paper version is still able to be used and once the development is released can be entered through the Data Entry Interface.

In the interim, however you can currently add the SDQ subscales through the Data Entry Interface - See :ref:`add-collection-occasion`.

.. _enter-delete-data-faq:

How can I delete a record I incorrectly entered?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can delete a record you have entered within the data entry interface. There
is a delete button available when viewing a records details.

However, if the record you are trying to delete has any dependant records, you
will not be able to proceed with deleting the parent record until all the related
dependant records have been edited or deleted.

See:

* :ref:`delete-practitioner`

* :ref:`delete-client`

* :ref:`delete-episode`

* :ref:`delete-service-contact`

* :ref:`delete-collection-occasion`

.. _updated-info-faq:

Can I go back and enter information if I don’t have it at the time?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Yes, the MDS allows you to go back and enter information at a later date.

When data in the upload has the same identification key as recorded in the MDS,
(eg Client, Practitioner, Episode, Service Contact, and Outcome Collection Keys)
the data will automatically be updated for these files. The number of files present,
created, and updated, are summarised on the successful upload notification email.

Refer to upload specification :ref:`file-format`.

.. _enter-no-show-faq:

Do I enter a Service Contact when a client doesn't show up for the session?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Yes. A Service Contact record has a 'No Show' field and selecting the value 'Yes'
indicates that the intended participant(s) failed to attend the appointment.

Some of the other Service Contact fields have a 'no show' option available
to be selected. For any other Service Contact fields, please enter the response
that would have been entered if the participant had attended the session.

You can decide to enter as much information as possible within a no show form,
as long as it meet the 'No Show' :ref:`validation guidelines for a service contact <service-contact-current-validations>`.

Refer to :ref:`service-contact-data-elements`.

.. _client-referred-elsewhere-faq:

If the client is referred elsewhere (e.g. not suitable for this service) should this be recorded?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This decision depends upon your local guidelines.

Under the new PMHC MDS, an episode does not formally commence until the client
receives their first Service Contact. For referrals that do not lead to a
Service Contact, and where the person is referred elsewhere, there is no need to
open an Episode.

However the Department understands that many PHNs are likely to want to do this
as a means to track referrals that do not lead to Service Contacts, or to begin
entering data prior to the first Service Contact. Therefore, there is scope in
the system to set up an Episode even it does not lead to a Service Contact.
Standard reports to be developed will build in capacity to monitor these and
ensure that they are not counted in service delivery indicators.

Where a referral is followed by an initial Service Contact, and the person is
referred elsewhere due to being assessed as not suitable, or requires an alternative
service, a new code for Episode- Completion Status has been added
(‘Episode closed administratively - client referred elsewhere’).

.. _data-entry-episode-uncommenced:

Why is an episode showing as uncommenced?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The episode definition states that 'Episodes commence at the point of first contact.
The episode start date will be derived from the first service contact date.'

When an episode does not have any service contacts added yet, it does not have
a start date and the system will reported it as 'Uncommenced'.

Refer to :ref:`key-concepts-episode`.

.. _data-entry-episode-closed:

How can I close an episode?
~~~~~~~~~~~~~~~~~~~~~~~~~~~

To close an episode, you can edit a Client’s Episode details and enter an
'Episode - End Date' and update the 'Episode - Completion Status' value.

Refer to :ref:`edit-episode`.

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

.. _capture-additional-data-faq:

The PHMC MDS specifications seems limited. Can we capture and record additional data?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PHNs can choose to capture and record additional data outside the PMHC MDS.

See :ref:`record-additional-data-faq`.

.. _enter-MHNIP-data-faq:

Where do I enter MHNIPS data collection?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Department of Health is expecting all commissioned Mental Health Nursing services
data from July 2016 to be entered into the PMHC MDS.

Refer to the Department's response to :ref:`MHNIP-data-faq`.

.. _enter-error-data-faq:

I have an error message but no idea what it means or how to fix it. What should I do?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Refer to :ref:`record-formats` for more information. By clicking on the field
name this will take you to the field definition which outlines the associated
notes that provide guidance on which response to use. It will also inform you if
there are any interrelated field requirements that can cause data errors.

If still unsure, please email the PMHC Helpdesk on support@pmhc-mds.com and provide
a description of where the error occurred, a screenshot if possible, and the
error log number. The error log number is displayed at the end of the error message,
eg [BVDS105Q], and is very important for the Helpdesk to quickly identifying the
error and to provide you with a clear response on how to rectify the data issue.
