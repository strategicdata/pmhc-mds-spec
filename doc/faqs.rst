Frequently Asked Questions
--------------------------

Accessing the PMHC Minimum Data Set
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

What internet browser should I use?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can access the PMHC MDS using the following browsers:

* Chrome (version 30+)
* Firefox (version 38+)
* Internet Explorer 11
* Safari 8 +

.. _how-do-i-obtain-access-to-the-mds:

How do I obtain access to the PMHC MDS?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Access to the PMHC MDS is based around roles. Each role allows a user to perform
specific tasks. A user can have more than one role. Each role is granted for a
user against an organisation. An organisation can either be a Primary Health
Network (PHN) or a Provider Organisation. If a user is granted a role for a
PHN they will also have this role for any Provider Organisations of that PHN. The following table
provides a summary of each of the roles that currently exist within the PMHC MDS:

+----------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| **Role**                   | **Tasks allowed**                                                                                                                |
+============================+==================================================================================================================================+
| Organisation Management    | A user with the Organisation Management role for a PHN can manage Provider Organisations for that PHN                            |
+----------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| User Management            | A user with the User Management role for an organisation can manage user accounts for that organisation or its suborganisations  |
+----------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| Upload                     | A user with the Upload role can upload data to that organisation or its suborganisations                                         |
+----------------------------+----------------------------------------------------------------------------------------------------------------------------------+

User accounts can be created by a user at your PHN or Provider Organisation who
has the User Management role. Please contact support@pmhc-mds.com to find out
who has this access.

Alternatively, if you cannot contact any users who have the User Management role
access can be gained by producing a :ref:`letter-of-authority`.

.. _letter-of-authority:

Letter of Authority
~~~~~~~~~~~~~~~~~~~

The protocol for setting up a new account to access the MDS requires a written
letter of authority. A **letter of authority** is a request made on your
Primary Health Network or Provider Organisation's letterhead which must be
signed by an authority at the Primary Health Network or Provider Organisation
who holds a position that is higher than the person for whom the account is
being created (i.e., the person's manager or the CEO).

This letter must contain the following details (for the person for whom
the MDS access is being requested):

#. Name.
#. Email address.
#. Contact telephone number.
#. Mobile phone number.
#. The exact Primary Health Network or Provider Organisation's name in the MDS
   you are seeking to access.
#. The roles (PHN's Primary Contact, Organisation Management, User Management, Upload)
   required for the user. The user can have any combination of these roles.

This letter must be faxed or scanned then emailed to:

Strategic Data Fax: (03) 9340 9090 or Email: support@pmhc-mds.com

The same protocol applies if an MDS user no longer requires MDS access and
needs to hand over their MDS access to another person. However, in this case
it is advised that the new MDS user has a new username and password issued to
protect the privacy and security of the organisation's data.

This process will also apply where a user is requesting a password re-set.
However, the auto :ref:`password-recovery` process available to you via the
MDS login screen is the preferred method of password retrieval.

If your email address or mobile number has changed, it is important that you update
<<<<<<< Updated upstream
your account. See :ref:`updating_your_details`. If you can't access your profile,
=======
your account. See :ref:`Updating-your-details`. If you can't access your profile,
>>>>>>> Stashed changes
contact the PMHC helpdesk so that your records can be updated. When contacting the
PMHC helpdesk you will be asked to arrange for a :ref:`letter-of-authority` stating
the change(s) and this must then be sent to Strategic Data via fax or scan/email as documented above.

.. _password-recovery:

Password or username recovery
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The system offers an automated password/username recovery feature. The system
will email the registered email address on your account and send an SMS to
the registered mobile phone on your account. See :ref:`forgotten_password`
for instructions on resetting your password.

It is important to keep your email address and mobile phone current so that
you can make use of this facility. If you can no longer access the PMHC MDS
please email the PMHC MDS helpdesk at support@pmhc-mds.com to update your
email address/mobile phone. Please note that a :ref:`letter-of-authority` will
need to be produced in order for the PMHC MDS helpdesk to update your account.

I forgot my password. What do I do?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

See :ref:`forgotten_password`.

What can a user see in the MDS?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

What you see once you login will depend upon what roles you have been assigned.
The table below lists the tabs that will be shown for each role:

+---------------------------+----------------------+
| *Role*                    | *Tab(s)*             |
+===========================+======================+
| Organisation Management   | Organisations        |
+---------------------------+----------------------+
| User Management           | Organisations, Users |
+---------------------------+----------------------+
| Upload                    | Upload               |
+---------------------------+----------------------+
| All users                 | Home, SLK            |
+---------------------------+----------------------+

See :ref:`how-do-i-obtain-access-to-the-mds` for more information on roles.

How do I get started using the MDS?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Please refer to :ref:`how-do-i-obtain-access-to-the-mds` for information on
getting an account on the MDS.

The MDS website is available at https://pmhc-mds.com/. Here you will find
documentation on using the MDS.

The MDS is accessed on the web at the following address: https://pmhc-mds.net/

Can I pass on my username and password to my organisation's IT person or evaluator if they are entering data?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

No, each user should be issued with their own username and password. Please
refer to :ref:`how-do-i-obtain-access-to-the-mds` for information on how to
get an account.

Can GPs or Mental Health Providers (MHPs) access the MDS to upload data themselves?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Yes, GPs and MHPs can access the MDS to upload their data directly into the
system. However, it is not possible to limit their data access to the
select data fields that they would normally manage. For example, MHPs would
normally only need to enter or edit their own client information and the episodes
and service contacts associated with these clients.

However, it is not possible to restrict their access only to their own clients'
data. They will be able to modify data for clients across their entire provider
organisation. Therefore, MHPs who access the MDS could potentially change data
for a client that is not their own.

I'm a third-party software developer developing software to assist with uploading data to the MDS. Can I have an account to test my data uploads?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Yes, we can supply you with an account that has access to a test Primary Health
Network.

In order to set up the test Primary Health Network account we need to follow a
similar procedure to setting up a proper Primary Health Network account. To do
that we require a :ref:`letter-of-authority` as detailed in the Letter of
Authority section above.

Could you please provide a similar letter on your company's letterhead
containing the following details:

#. The name of the person the account is for
#. The email address of the person
#. Contact telephone number
#. Mobile phone number
#. Request access to the 'Test [Your Company Name]' Organisation

This letter must be faxed or scanned then emailed to:

Strategic Data Fax: (03) 9340 9090 or Email: support@pmhc-mds.com

Entering data in the PMHC Minimum Data Set
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

What is the best way to manage the client key?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The SLK isn’t necessarily a unique key and therefore the Client Key is required
to be a unique client identifier. The Client Key needs to be stable for each
individual within the PHN.

Initially the PHN will need to play a role in coordinating assignment and management
of these keys for Provider Organisations, prior to the PMHC MDS implementation a
Master Client Index during Stage 2 of development.

Please refer to :ref:`identifier_management`.

Can you suggest a best practice approach to managing client keys?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

We understand that PHNs approach :ref:`identifier_management` in various different ways
to best suit their practice. PHNs will continue to manage client keys until the
Master Client Index is developed and released in Stage 2. In the interim, we suggest
speaking with another PHN in your network to understand their approach to managing
their client keys.

How will the Master Client Index work?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

During Stage 2 of the PMHC MDS implementation a Master Client Index will be created
to allow Provider Organisations to manage the :ref:`client_keys` across PHNs. Stage 2
development updates will be released by the Department of Health in the lead up to
release. Regularly check the announcements on the home page (https://pmhc-mds.net/) to keep informed.

How often should I enter data into the MDS?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Please refer to :ref:`reporting_timeliness`.

What do I do If the GP / mental health provider has not given an answer to one or more questions in the minimum dataset?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Provider Organisations should make every effort to ensure that the data entered
into the MDS is as complete as possible. However, most data items specify
a 'Missing' response. Where information is unavailable, please use this
response item. The aim is to minimise missing data as much as possible.

Can I go back and enter information if I don’t have it at the time?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Yes, the MDS allows you to go back and enter information at a later date.

Uploading data
^^^^^^^^^^^^^^

How do I obtain a template to upload my data to the MDS?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Upload templates are available from :ref:`upload_specification`.

What do I do if I have collected the data in Excel or Access?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

See the online MDS documentation regarding uploads.

A detailed document for data uploads is available on our website, see
:ref:`upload_specification`.

Capturing additional data
^^^^^^^^^^^^^^^^^^^^^^^^^

It seems that the data being collected is quite limited, would it not be useful to collect more detailed information?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The development of the minimum dataset balanced the ideal against what was
realistic, given that any additional data item places extra burden on those
collecting and entering data.

Organisations may collect extra information for their own analysis however this
information does not need to be submitted to the PMHC MDS.

What are the options where the information collected does not fit into the available fields?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Each data item has associated notes that provide guidance on which response to
use. Please refer to the data item documentation at :ref:`record-formats`.

Checking data
^^^^^^^^^^^^^

Each individual organisation is responsible for checking their data in the
MDS to confirm its accuracy and completion. It is advisable that this review
is undertaken regularly to ensure data integrity and avoid widespread errors.

Alternatively, for greater precision and to access your data in full, you can
download your data.

Storing data relating to the minimum dataset system
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

After entering data in the MDS how long should I store my hardcopy and/or electronic files?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There is no set time limit; however, it is recommend that you archive this data
and keep it secure for at least two years. As with all electronic data
(including MDS) there is a risk of corruption - whether it is due to a system
bug or human error. The MDS stores the original upload files as well as the
data that has been imported into the database, however it is always
good to keep the original data as a backup to either check details against or
re-enter, if needed.

.. _mailing_list:

PMHC mailing list
^^^^^^^^^^^^^^^^^

How can I be advised of any changes to the MDS?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When changes are made to the MDS we alert all users via an email list. MDS
users are automatically added to this list, however sometimes other Primary
Health Network or Provider Organisation staff who do not have accounts wish to
be informed of updates. If you would like to be added to the mailing list
please email support@pmhc-mds.com.

I have an MDS account but don't receive update emails.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Please check that we have your correct email address.

Mailing list emails will be sent from support@pmhc-mds.com. Please make sure
this is not being caught in any spam filters.

I no longer wish to receive PMHC update emails. How can I be removed from the list?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Please email support@pmhc-mds.com and ask to be removed from the mailing list.

I am a third-party software developer developing code to assist with uploading data to the MDS. Can I be informed of updates to the MDS?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Yes, we have a mailing list specifically for third-party developers. Please
email support@pmhc-mds.com and ask to be added to the developers mailing list.
Please provide us with a generic address that will survive staffing changes.

Who to contact
^^^^^^^^^^^^^^

A dedicated **Help Desk** is available to support Primary Health Networks and
Provider Organisations implementing PMHC in relation to the minimum dataset
system. All enquiries should be directed to: support@pmhc-mds.com.
