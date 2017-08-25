.. _data-entry:

Data Entry
===========

You will only be able to see the Data Entry tab if you have been assigned
the 'Data Entry' :ref:`roles`, when logged into the PMHC MDS on https://pmhc-mds.net.

If you don’t have access to the Data Entry tab and you believe you should, please
contact someone in your provider organisation or provider organisation's PHN
who has the 'User Management' role. If you are unsure who has the 'User Management'
role please email the PMHC Helpdesk at support@pmhc-mds.com

After navigating to the Data Entry tab, you will be presented with three search boxes
which will allow you to easily find and view the client data for the organisations
you have permission to access.

.. figure:: screen-shots/client-data-entry.png
   :alt: Data Entry tab View

.. _client-data:

Client Data
^^^^^^^^^^^

.. _find-client:

Finding a Client
----------------

There are three :ref:`search-fields` options available to find a client.

.. _search-fields:

Search Fields
~~~~~~~~~~~~~

You can choose any one of three search options to search for a client, depending on the client information that you have available to you at the time.

- **Client Key** - You can use this field to type in a whole :ref:`dfn-client_key`, or start thereof.

- **SLK** - You can use this field to type in a client's :ref:`Statistical Linkage Key <dfn-slk>`

- **DOB** - You can use this field to type in a client's :ref:`dfn-date_of_birth`.

.. figure:: screen-shots/client-search-fields.png
   :alt: Client Data Search Fields

After entering information into one of these :ref:`search-fields`, simply click
the blue 'Search' button to see :ref:`search-client`

Use the grey 'Clear Search' button to removed any previously entered text.

.. _search-client:

Client Search Results
---------------------

A display of the details used within the :ref:`search-fields` used in :ref:`find-client`
will be visible above the search results table, when results are available.

You can sort the listed client search results through either of the
above three search features for :ref:`search-fields`.

Sort the listed clients by simply clicking on the column header. Alternately
you can click on the arrow beside a column header for more sort options, as follows:

- Sort Ascending
- Sort Descending
- Remove Sort
- Hide Column

.. figure:: screen-shots/client-search-results.png
   :alt: Client Data Search Results

To filter the listed clients:

  1. Click the grey 'Filters' button.
  2. Start typing in an edit box now displayed under the column headers.
  3. To remove the filter, click the grey cross within the edit box beside any entered text or click the grey 'Filters' button.

.. figure:: screen-shots/client-search-results-filter.png
   :alt: Client Data Search Results Filtered

You can clear the search results and start a new search by clicking on the blue
'Edit Search' button.

.. _view-client-details:

Viewing a Client's details
--------------------------

You can view a clients's details through the :ref:`search-client`
available on the Data Entry tab, by following these steps:

1. Create :ref:`search-client`
2. Click on the Client Key in blue displayed within the table list.
3. This is the Client's summary view, with summary details along with a
   snapshot of the five most recent episodes.

.. figure:: screen-shots/client-view-summary.png
   :alt: Client Data Summary View

4. Click Details tab for more information on the Client.

A page will display the Client's details as recorded via the :ref:`Client Data Elements <client-data-elements>`.

.. figure:: screen-shots/client-view-details.png
   :alt: Client Data Details View

.. _edit-client:

Editing a Client
----------------

You can edit a clients's details through the :ref:`search-client`
available on the Data Entry tab, by following these steps:

1. Create :ref:`search-client`
2. From the Client Search table, click the Client Key.
3. Click Details tab, to view Client's details.
4. Click Edit Details tab.
5. Update the Client's details. Mandatory fields are marked with an * (Specification :ref:`Client Data Elements <client-data-elements>`)
6. Click the blue 'Save' button. (If you decide not to save changes, you can simply navigate away from this screen)

.. figure:: screen-shots/client-view-edit.png
   :alt: Client Data Edit Details

You will receive confirmation that the Client's details have been saved, and it will
now be displaying these new details in the Clients View Details tab.

        .. figure:: screen-shots/client-data-saved.png
           :alt: Client Data Saved Successfully

If you receive an error message, the data will need to be corrected before the
record is saved and added to the PMHC MDS.
See Validation Rules - :ref:`client-current-validations`

.. _add-client:

Adding a New Client
-------------------

You can add a clients through the :ref:`search-client`
available on the Data Entry tab, by following these steps:

1. Create :ref:`search-client`
2. Firstly double check the client is not already added.
3. Click the blue 'Add New Client' button.
4. Choose the Provider Organisation from the drop down list.
5. Enter the Client's details. Mandatory fields are marked with an * (Specification :ref:`Client Data Elements <client-data-elements>`)
    *Please note: With the 'Statistical Linkage Key' field you can choose to 'Enter' or 'Generate' a Client's SLK.*
    *The SLK is generated on your device, the names used are not stored or transmitted over the network.*

    .. figure:: screen-shots/client-view-generate-slk.png
       :alt: Client Data Generate Client SLK

6. Click the blue 'Save' button. (If you decide not to add this client, you can simply navigate away from this screen)

.. figure:: screen-shots/client-view-add.png
   :alt: Client Data Add Client

You will receive confirmation that the Client has been saved, and it will
now be displaying the client's saved information in the Clients View Details tab.

        .. figure:: screen-shots/client-data-saved.png
           :alt: Client Data Saved Successfully

If you receive an error message, the data will need to be corrected before the
record is saved and added to the PMHC MDS.
See Validation Rules - :ref:`client-current-validations`

.. _delete-client:

Deleting a Client
-----------------

You can not currently delete a client. The client delete feature will be released in July 2017.

In the interim, if this causes you any significant issues please email support@pmhc-mds.com.

.. _episode-data:

Episodes
^^^^^^^^

.. _view-episodes:

Viewing a Client's Episodes
---------------------------

You can view a clients's episodes through the :ref:`view-client-details`
available on the Data Entry tab, by following these steps:

1. Once :ref:`view-client-details`
2. From the Client's Summary tab, you can shortcut straight to an episode by clicking
   the Blue Episode Key displayed in the snapshot of the five most recent episodes.

.. figure:: screen-shots/client-view-summary.png
   :alt: Client Data Summary View

3. Alternately, if you would like to view all episodes you can click on the
   Episode Tab. The heading for this tab displays in brackets the total number of episodes recorded
   in the PMHC MDS for this client at Provider Organisations for which you have access.

A table will display all the Client's Episodes at Provider Organisations for which you have access.

.. figure:: screen-shots/client-episode-summary.png
   :alt: Client Data Summary View

A Drop down list is available to view:

* All Episodes
* Currently Open Episodes
* Closed Episodes

.. figure:: screen-shots/client-episodes-sort.png
   :alt: Client Episodes Sort View

4. To view the Client's Episode details, click the Blue Episode Key.

.. figure:: screen-shots/client-episodes-details.png
   :alt: Client Episodes Details View

A page will display the Client's Episode details as recorded via the :ref:`Episode Data Elements <episode-data-elements>`.

.. _edit-episode:

Editing a Client's Episode data
-------------------------------

You can edit a Client's Episode details through the :ref:`view-client-details`
available on the Data Entry tab, by following these steps:

1. Once :ref:`view-episodes`
2. From the Client's Episode table, click the Episode Key.
3. Click Edit Details tab.
4. Update the Client's Episode details. Mandatory fields are marked with an * (Specification :ref:`Episode Data Elements <episode-data-elements>`)
    *Please note: If you edit the 'Date of Birth' or 'Gender' you will be required to update the 'Statistical Linkage Key' field.*
    *You can choose to 'Enter' or 'Generate' a Client's SLK.*
    *The SLK is generated on your device, the names used are not stored or transmitted over the network.*

    .. figure:: screen-shots/client-view-generate-slk-edit.png
       :alt: Client Data Generated Client SLK Edit

5. Click the blue 'Save' button. (If you decide not to save changes, you can simply navigate away from this screen)

.. figure:: screen-shots/client-episodes-edit.png
   :alt: Client Episodes Edit Details

You will receive confirmation that the Client's Episode details have been saved,
and it will now be displaying these new details in the Episode View Details tab.

        .. figure:: screen-shots/client-data-saved.png
           :alt: Client Data Saved Successfully

If you receive an error message, the data will need to be corrected before the
record is saved and added to the PMHC MDS.
See Validation Rules - Episode :ref:`episode-current-validations`

.. _add-episode:

Adding a Client's Episode data
------------------------------

You can add a clients through the :ref:`view-client-details`
available on the Data Entry tab, by following these steps:

1. Once :ref:`view-episodes`
2. Firstly double check the client does not have any open episode already showing. (A client can only have one open episode at a provider organsiation. :ref:`key-concepts-episode`)
3. Click the Add Episode tab.
4. Enter the Client's Episode details. Mandatory fields are marked with an * (Specification :ref:`Episode Data Elements <episode-data-elements>`)
5. Click the blue 'Save' button. (If you decide not to add this client's episode, you can simply navigate away from this screen)

.. figure:: screen-shots/client-episodes-add.png
   :alt: Client Data Add Episode

You will receive confirmation that the Client's Episode details have been added,
and it will now be displaying these new details in the Episode View Details tab.

        .. figure:: screen-shots/client-data-saved.png
           :alt: Client Data Saved Successfully

If you receive an error message, the data will need to be corrected before the
record is saved and added to the PMHC MDS.
See Validation Rules - :ref:`episode-current-validations`

.. _delete-episode:

Deleting an Episode
-------------------

You can not currently delete a client's episode. The episode delete feature will be released in July 2017.

In the interim, if this causes you any significant issues please email support@pmhc-mds.com.


.. _service-contact-data:

Service Contacts
^^^^^^^^^^^^^^^^

.. _view-service-contact:

Viewing a Client's Service Contacts for an Episode
--------------------------------------------------

You can view a client's service contacts through the :ref:`view-episodes`
available on the Data Entry tab, by following these steps:

1. Once :ref:`view-episodes`
2. From the Client's Episode Details tab, click the Service Contacts Tab.
   The heading for this tab displays in brackets the total number of service contacts recorded
   in the PMHC MDS for this episode.

A table will display all the Service Contacts linked to this Client's Episode.

.. figure:: screen-shots/client-service-contacts-view.png
   :alt: Client Episode Service Contacts Table View

3. To view the Service Contacts details, click the Blue Service Contact Key.

.. figure:: screen-shots/client-service-contacts-details.png
   :alt: Client Episode Service Contacts Details View

A page will display the Service Contacts details as recorded via the :ref:`Service Contact Data Elements <service-contact-data-elements>`.

.. _edit-service-contact:

Editing a Client's Service Contacts for an Episode
--------------------------------------------------

You can edit a client's service contacts through the :ref:`view-episodes`
available on the Data Entry tab, by following these steps:

1. Once :ref:`view-service-contact`
2. From the Service Contacts table, click the Service Contact Key.
3. Click Edit Service Contact tab.
4. Update the Client's Service Contact details for that episode. Mandatory fields are marked with an * (Specification :ref:`Service Contact Data Elements <service-contact-data-elements>`)
5. Click the blue 'Save' button. (If you decide not to save changes, you can simply navigate away from this screen)

.. figure:: screen-shots/client-service-contacts-edit.png
   :alt: Client Service Contact Edit Details

You will receive confirmation that the Client's service contact details have been saved,
and it will now be displaying these new details in the View service Contact Details tab.

        .. figure:: screen-shots/client-data-saved.png
           :alt: Client Data Saved Successfully

If you receive an error message, the data will need to be corrected before the
record is saved and added to the PMHC MDS.
See Validation Rules - :ref:`service-contact-current-validations`

.. _add-service-contact:

Adding a Client's Service Contact data
--------------------------------------

You can add a client's service contacts through the :ref:`view-episodes`
available on the Data Entry tab, by following these steps:

1. Once :ref:`view-service-contact`
2. Firstly double check the service contact is not already showing.
3. Click the Add Service Contact tab.
4. Enter the Client's Service Contact details for that episode. Mandatory fields are marked with an * (Specification :ref:`Service Contact Data Elements <service-contact-data-elements>`)
5. Click the blue 'Save' button. (If you decide not to add this client's episode, you can simply navigate away from this screen)

.. figure:: screen-shots/client-service-contacts-add.png
   :alt: Client Data Add Service Contact

You will receive confirmation that the Client's service contact details have been added,
and it will now be displaying these new details in the View service Contact Details tab.

        .. figure:: screen-shots/client-data-saved.png
           :alt: Client Data Saved Successfully

If you receive an error message, the data will need to be corrected before the
record is saved and added to the PMHC MDS.
See Validation Rules - :ref:`service-contact-current-validations`

.. _delete-service-contact:

Deleting an Service Contact
---------------------------

You can not currently delete a client's service contact for an episode. The
service contact delete feature will be released in July 2017.

In the interim, if this causes you any significant issues please email support@pmhc-mds.com.

.. _outcome-collection-occasion-data:

Outcome Collection Occasions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. _view-collection-occasion:

Viewing a Client's Outcome Collection Occasions for an Episode
--------------------------------------------------------------

You can view a clients's outcome collection occasions through :ref:`view-episodes`
available on the Data Entry tab, by following these steps:

1. Once :ref:`Viewing the Client's Episode <view-episodes>`
2. Click the Episode Collection Occasions Tab.
   This tab displays in brackets the total number of collection occasions recorded
   in the PMHC MDS for this episode.

A table will display all the Collection Occasions linked to this Client's Episode.

.. figure:: screen-shots/client-collection-occasions-view.png
   :alt: Client Episode Collection Occasions Table View

4. To view the Collection Occasions details, click the Blue Collection Occasions Key.

.. figure:: screen-shots/client-collection-occasions-details.png
   :alt: Client Episode Collection Occasions Details View

A page will display the Collection Occasions details as recorded via the
:ref:`Outcome Collection Occasion Data Elements <outcome-collection-occasion-data-elements>`.


.. _edit-collection-occasion:

Editing a Client's Outcome Collection Occasions for an Episode
--------------------------------------------------------------

You can edit a client's Outcome Collection Occasions through :ref:`view-collection-occasion`
available on the Data Entry tab, by following these steps:

1. Once :ref:`view-collection-occasion`
2. Click the Collection Occasions Key.
3. Click Edit Details tab.
4. Update the Client's Collection Occasions details. Mandatory fields are marked with an * (Specification :ref:`Collection Occasions Data Elements <outcome-collection-occasion-data-elements>`)

.. figure:: screen-shots/client-collection-occasions-edit1.png
   :alt: Client Collection Occasions Edit Details

.. figure:: screen-shots/client-collection-occasions-edit2.png
   :alt: Client Collection Occasions Edit Details

5. Click the blue 'Save' button. (If you decide not to save changes, you can simply navigate away from this screen)
You will receive confirmation that the Client's Collection Occasions details have been saved,
and it will now be displaying these new details in the View Collection Occasions Details tab.

        .. figure:: screen-shots/client-data-saved.png
           :alt: Client Data Saved Successfully

If you receive an error message, the data will need to be corrected before the
record is saved and added to the PMHC MDS.
See Validation Rules for:
* :ref:`k10p-current-validations`
* :ref:`k5-current-validations`
* :ref:`sdq-current-validations`

.. _add-collection-occasion:

Adding a Client's Outcome Collection Occasions data
---------------------------------------------------

You can add a client's Outcome Collection Occasions through :ref:`view-collection-occasion`
available on the Data Entry tab, by following these steps:

1. Once :ref:`view-collection-occasion`
2. Firstly double check the Collection Occasions is not already showing.
3. Click the Add New Collection Occasion tab.
4. Select the Collection Occassion Measure, either K10+ or K5. (The SDQ will be added in the near future. (Development Release Schedule :ref:`dev-data-entry-faq`)

.. figure:: screen-shots/client-collection-occasions-measure.png
   :alt: Client Data Add Collection Occasions

5. Select to enter the item scores or the total score. (Individual item scores will eventually be required and should be entered when available)

.. figure:: screen-shots/client-collection-occasions-score.png
   :alt: Client Data Add Collection Occasions

6. Enter the Client's Collection Occasions details for that episode. Mandatory fields are marked with an * (Specification :ref:`Collection Occasions Data Elements <outcome-collection-occasion-data-elements>`)

.. figure:: screen-shots/client-collection-occasions-add.png
   :alt: Client Data Add Collection Occasions

7. Click the blue 'Save' button. (If you decide not to add this client's episode, you can simply navigate away from this screen)

You will receive confirmation that the Client's Collection Occasions details have been added,
and it will now be displaying these new details in the View Collection Occasions Details tab.

        .. figure:: screen-shots/client-data-saved.png
           :alt: Client Data Saved Successfully

If you receive an error message, the data will need to be corrected before the
record is saved and added to the PMHC MDS.
See Validation Rules for:
* :ref:`k10p-current-validations`
* :ref:`k5-current-validations`
* :ref:`sdq-current-validations`

.. _delete-collection-occasion:

Deleting an Outcome Collection Occasions
----------------------------------------

You can not currently delete a client's service contact for an episode. The
service contact delete feature will be released in July 2017.

In the interim, if this causes you any significant issues please email support@pmhc-mds.com.


.. _practitioner:

Practitioners
^^^^^^^^^^^^^

.. _find-practitioner:

Finding a Practitioner
----------------------

You can search for practitioners assigned to an organisation through the
Data Entry tab, by following these steps:

1. Click on the Practitioners tab.

.. figure:: screen-shots/practitioners-view.png
   :alt: PMHC MDS Practitioners Table View

.. _view-practitioner:

Viewing a Practitioner
----------------------

You can view a practitioner's details through :ref:`find-practitioner`
on the Data Entry tab, by following these steps:

1. Once :ref:`find-practitioner`
2. Click on the practitioner's key in blue displayed within the table list.

.. figure:: screen-shots/practitioner-details.png
   :alt: PMHC MDS Practitioner Details View

Please note: You can also view a practitioner's details through the 'Client Data' tab.
See :ref:`view-practitioner-details`


.. _view-practitioner-details:

Viewing a Practitioner Providing Client Services
------------------------------------------------

You can view a practitioner's details through :ref:`view-service-contact`
on the Data Entry tab, by following these steps:

1. Once :ref:`view-service-contact`
2. From the Outcome Collection Occasions Details tab, click the Practitioner Key.

.. figure:: screen-shots/client-service-contacts-practitioner-key.png
   :alt: Practitioner Key on Outcome Collection Occasions Details

A page will display the Practitioner's details as recorded via the :ref:`Practitioner Data Elements <practitioner-data-elements>`.

.. figure:: screen-shots/practitioner-details.png
   :alt: Practitioner Details View


.. _edit-practitioner:

Editing a Practitioner
----------------------

You can edit a practitioner's details through the organisation tab, by following these steps:

1. Once :ref:`view-practitioner`
2. From the View Practitioner Details tab, click the Edit Details tab.
3. Update the practitioner's details. Mandatory fields are marked with an *

.. figure:: screen-shots/practitioners-edit-view.png
   :alt: PMHC MDS Practitioner Details View

4. Click the blue 'Save' button. (If you decide not to save changes, you can simply navigate away from this screen)

You will receive confirmation that the practitioner's details have been added,
and it will now be displaying these new details in the View Practitioner Details tab.

        .. figure:: screen-shots/client-data-saved.png
           :alt: Client Data Saved Successfully

If you receive an error message, the data will need to be corrected before the
record is saved and added to the PMHC MDS.
See Validation Rules - :ref:`practitioner-current-validations`

.. _add-practitioner:

Adding a Practitioner
----------------------

You can add a practitioner's details through the organisation tab, by following these steps:

1. Once :ref:`find-practitioner`
2. From the Practitioners tab, click the Add New Practitioner tab.
3. Enter the practitioner's details. Mandatory fields are marked with an *

.. figure:: screen-shots/practitioners-add-view.png
   :alt: PMHC MDS Practitioner Details View

4. Click the blue 'Save' button.  (If you decide not to save changes, you can simply navigate away from this screen)

You will receive confirmation that the practitioner's details have been added,
and it will now be displaying these new details in the View Practitioner Details tab.

        .. figure:: screen-shots/client-data-saved.png
           :alt: Client Data Saved Successfully

If you receive an error message, the data will need to be corrected before the
record is saved and added to the PMHC MDS.
See Validation Rules - :ref:`practitioner-current-validations`

You can add a practitioners individually through the data entry interface or alternately, practitioner records can be uploaded in bulk. See :ref:`upload`

.. _delete-practitioner:

Deleting a Practitioner
-----------------------

Currently a practitioner can not be deleted from the PMHC MDS. However, you can
change the practitioner from active to inactive by editing their details.

See :ref:`edit-practitioner`
