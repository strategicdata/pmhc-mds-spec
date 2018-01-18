Users
=====

You will only be able to see the Users tab if you have been assigned
the 'User Management' role, when logged into the PMHC MDS on https://pmhc-mds.net.

If you don’t have access to the Users tab and you believe you should, please
contact someone in your provider organisation or provider organisation's PHN
who has the 'User Management' role.

If you are unsure who has the 'User Management' role please email the
PMHC Helpdesk at support@pmhc-mds.com

After navigating to the Users tab, you will be presented with a list of the
users that are assigned to the organisations for which you have the
'User Management' role.

.. figure:: screen-shots/users.png
   :alt: PMHC MDS Users

.. _roles:

Users Roles
^^^^^^^^^^^

Access to the PMHC MDS is based around roles. The following table provides a summary of each of
the roles that currently exist within the PMHC MDS:

+----------------------------+------------------------------------------------------------------------------------------------------------------------------------+
| **Role**                   | **Tasks allowed**                                                                                                                  |
+============================+====================================================================================================================================+
| Organisation Management    | A user with the Organisation Management role for a PHN can manage provider organisations for that PHN.                             |
+----------------------------+------------------------------------------------------------------------------------------------------------------------------------+
| User Management            | A user with the User Management role for an organisation can manage user accounts for that organisation                            |
+----------------------------+------------------------------------------------------------------------------------------------------------------------------------+
| Upload                     | A user with the Upload role can upload data to the associated organisation                                                         |
+----------------------------+------------------------------------------------------------------------------------------------------------------------------------+
| Reporting                  | A user with the Reporting role can run reports and download data from the associated organisation                                  |
+----------------------------+------------------------------------------------------------------------------------------------------------------------------------+
| Data Entry                 | A user with the Data Entry role can enter client data and practitioners from the associated organisation                           |
+----------------------------+------------------------------------------------------------------------------------------------------------------------------------+

Each role allows a user to perform specific tasks. A user can have more than one role.
Each role is granted for a user against an organisation. An organisation can
either be a Primary Health Network or a provider organisation. If a user is granted
a role for a Primary Health Network (PHN) they will also have this role for any
provider organisation's of that PHN. A user can be invited to have a role at more
than one organisations.

What users see once they are logged in will depend upon what roles they have been
assigned. The table below lists the tabs that will be shown for each role:

+-------------------------+------------------------------+
| Role                    | Tab                          |
+=========================+==============================+
| Organisation Management | Organisations                |
+-------------------------+------------------------------+
| User Management         | Organisations, Users         |
+-------------------------+------------------------------+
| Upload                  | Upload                       |
+-------------------------+------------------------------+
| Reporting               | Reports, Data Extract        |
+-------------------------+------------------------------+
| Data Entry              | Data Entry                   |
+-------------------------+------------------------------+
| All users               | SLK                          |
+-------------------------+------------------------------+

.. _finding-a-user:

Finding a user
^^^^^^^^^^^^^^

You can sort and filter the listed users through the Users tab.

Please note: Newly invited users will not be visible until they have successfully
accepted their invitation.

Sort the listed users by simply clicking on the column header. Alternately
you can click on the arrow beside a column header for more sort options, as follows:

- Sort Ascending
- Sort Descending
- Remove Sort
- Hide Column

To filter the listed users:

1. Click the grey 'Filters' button.
2. Start typing in an edit box now displayed under the column headers.
3. To remove the filter, click the grey cross within the edit box beside any
   entered text.

   .. figure:: screen-shots/users-filter.png
      :alt: PMHC MDS Users Filter

.. _view-users-details:

Viewing a User's details
^^^^^^^^^^^^^^^^^^^^^^^^

You can view a user's details through the user tab, by following these steps:

#. Navigate to the Users tab.
#. Click on the user's name in blue displayed within the table list.

.. figure:: screen-shots/user-view-details.png
   :alt: PMHC MDS View User

A page will display showing the user's details and the :ref:`roles` they have at
particular organisations. See :ref:`view-role`.

.. _editing_user:

Editing a User's details
^^^^^^^^^^^^^^^^^^^^^^^^

A user can edit their own contact details.

See :ref:`updating-your-details`

.. _adding-a-user:

Adding a new user
^^^^^^^^^^^^^^^^^

Note: PHNs can devolve user management authority to one or more users in a
provider organisation so that the provider organisation can manage their own
logins, or a PHN can choose to keep user management authority at the level of
the PHN requiring each provider organisation to contact the PHN when they need
a new user added.

Before inviting a user, it is always best to inform them that they will receive a
PMHC MDS invitation by email from noreply@strategicdata.com and a verification code via SMS.
You can also provide them with the link to the online :ref:`user-docs` to read
the steps they will need to complete the steps outlined in :ref:`accepting-invitation`.

The next step to adding a new user is to invite them through the Users tab,
by following these steps:

1. Navigate to the Users tab.
2. Click the 'Invite New User' tab.

   .. figure:: screen-shots/user-invite.png
      :alt: PMHC MDS Invite User

3. Complete all the fields with the new users contact details. (Mandatory fields are marked with an * )
4. Select an organisation, either a PHN or Provider Organisation.
5. Assign one or more :ref:`roles`. (extra roles can be added after the user has access to the system. See :ref:`edit-role`)

   .. figure:: screen-shots/user-invite-filled-in.png
      :alt: PMHC MDS Invite User Complete

6. Click the blue 'Invite' button.
7. You will receive confirmation that the user has been sent an email to invite
   them to the PMHC MDS. They will also be sent an SMS containing a
   verification code. The user will need to follow the instructions in the
   email before they can gain access to the system. This invitation will be valid for 7 days.
8. When the user has accepted the invitation you will be sent an email to let you know. This user will now be listed in the View Users table.

   .. figure:: screen-shots/user-invite-accepted-email.png
      :alt: PMHC MDS Invite Accepted

Please note: An invitation for a new user is valid for 7 days. You can not re-invite
this user within this time, unless the verification code has expired, or they have :ref:` accepted the invitation <accepting-invitation>`.

.. _adding-an-exsisting-user:

Adding an existing user
^^^^^^^^^^^^^^^^^^^^^^^

Note: An existing user must have completed the required steps for :ref:`accepting-invitation`
from their initial PMHC MDS invitation before they can be added again.

Before adding an existing user please ensure you have the same email and mobile
number as their current PMHC MDS Profile. By ensuring these are identical, the system
will automatically pick up if a user already exists in the PMHC MDS.

You can invite an existing user through the Users tab, by following these steps:

1. Navigate to the Users tab.
2. Click the 'Invite New User' tab.
3. Complete all the mandatory fields marked with an * in the 'Invite User' form, ensuring these are the same details as their existing PMHC MDS Profile.
4. Select an organisation and assign their :ref:`roles`.

   .. figure:: screen-shots/user-invite.png
      :alt: PMHC MDS Invite User

5. Click the blue 'Invite' button.
6. You will receive confirmation that the roles have been added to the existing user.
7. Please note: You will need to notify the user that they have been added to the organisation and confirm their authorised roles. The system will not automatically do this.

.. 6. The user will receive notification that they have been granted these additional roles at the relevant organisation.

.. _view-role:

Viewing a user's roles
^^^^^^^^^^^^^^^^^^^^^^

A user can have more than one role. Each role is granted for a user against an
organisation you have the User Management Role at.

You can edit and assign extra roles to an existing user by following these steps:

1. Navigate to the Users tab.
2. Click on the user's name in blue displayed within the table list.
3. Click the 'Roles' tab to show the user's assigned roles.

   .. figure:: screen-shots/user-roles.png
      :alt: PMHC MDS User Roles

A tick displays the user currently has this role assigned at the relevant organisation.

.. _edit-role:

Editing a user's roles
^^^^^^^^^^^^^^^^^^^^^^

A user can have more than one role. Each role is granted for a user against an
organisation you have the User Management Role at.

You can edit and assign extra roles to an existing user by following these steps:

1. Navigate to the Users tab.
2. Click on the user's name in blue displayed within the table list.
3. Click the 'Roles' tab.
4. Click the 'Edit Roles' tab.

   .. figure:: screen-shots/user-edit-role.png
      :alt: PMHC MDS Edit Users Role

6. A tick indicates the user currently has this role assigned at the relevant organisation.
   Multiple roles can be assigned and these roles are shown as blue tickets.

| **Add** a role by clicking the empty checkbox.
| **Remove** a role by clicking the ticked checkbox.

7. All changes are automatically saved.
8. You will need to notify the user of these role changes. The system will not automatically do this.

.. _delete_user:

Deleting a user
^^^^^^^^^^^^^^^

A user can be deleted from an organisation by removing all the roles the user has at that organisation.

See :ref:`edit-role`

.. _viewing-organisational-users:

Viewing all Organisational Users
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can view users assigned to an organisation through the organisation tab, by following these steps:

1. Navigate to the tab showing either the PHNs details or the provider organisations details.
2. Click on the PHNs or provider organisations name in blue displayed within the table list.
   If you are unsure how to view the details see :ref:`view-PHN` or :ref:`view-provider-organisation`
3. Under the 'Users' tab, you can view a table list of the
   organisation's users.
4. You can filter the users within this table list,
   click the grey 'Filters' button and start typing in an edit box now
   displayed under the column headers. To remove the filter, click the grey
   cross within the edit box beside any entered text.

.. figure:: screen-shots/users-organisation-list.png
   :alt: PMHC MDS User Roles at Organisation

.. _adding-roles:

Assigning Extra Roles to an Organisational User
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can assign extra roles to an existing organisational user, by following these steps:

1. Once :ref:`view-client-details`
2. Click the users name
3. Follow on from Step 3 at :ref:`edit-role`.
