Initial login to the PMHC for the primary contact user
------------------------------------------------------

1. Activate your account
^^^^^^^^^^^^^^^^^^^^^^^^

When a PHN is ready to start uploading to the PMHC MDS, the primary contact user
will be sent an invitation via email and an SMS containing a verification code.

Please follow the instructions at :ref:`accepting_invitation` in order to
activate your account and login to the PMHC MDS.

2. Set up Provider Organisations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The PMHC MDS model allows PHNs to setup provider organisations underneath the
PHN. Users of provider organisations will only see that provider organisation's data.

The PHNs primary contact user will initially need to login to the PMHC MDS and
create each of these provider organisations.

The information required about each provider organisation is defined at
:ref:`provider-organisation-data-elements`.

Please follow the instructions at :ref:`add_organisation` in order to add your
provider organisations.

3. Set up users for your Provider Organisations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The PMHC MDS allows flexibility in the way in which PHNs devolve authority to
their provider organisations. In order to manage users a PMHC MDS user needs
to be granted the ‘User Management’ role. See :ref:`how-do-i-obtain-access-to-the-mds`
for an explanation of roles. The primary contact user will be
granted the 'User Management' role and in turn they will be able to grant this
role to any other user within their PHN or the PHN’s provider organisations.

This means that PHNs can devolve user management authority to one or more users
in a provider organisation so that the provider organisation can manage their
own logins, or a PHN can choose to keep user management authority at the level
of the PHN requiring each provider organisation to contact the PHN when they
need a new user added.

At this point you need to decide if you will be devolving user management
authority to your provider organisations or keeping user management at the level
of the PHN.

In order to devolve user management authority to your provider organisations
you will need to create at least one user within each provider organisation with
the 'User Management' role.

In order to keep user management at the level of the PHN, do not assign any
user at a provider organisation with the 'User Management' role.

In addition, in order to upload data, at least one user within each
provider organisation will also need to be assigned the 'Upload' role so
that provider organisations can upload data. A user can be assigned more than
one role.

Please follow the instructions at :ref:`adding_a_user` in order
to add users to your provider organisations.

4. Uploading data
^^^^^^^^^^^^^^^^^

Once the PHN has had their initial PMHC MDS training session, the primary user
has set up the provider organisations and associated user accounts the PMHC MDS
is ready for data upload.

Please see :ref:`uploading_a_file` for instructions on how to upload to the
PMHC MDS.

Please contact support@pmhc-mds.com if you have any questions.
