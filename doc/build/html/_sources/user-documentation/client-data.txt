.. _client-data:

Client Data
===========

You will only be able to see the Client Data tab if you have been assigned
the 'Data Entry' :ref:`roles`.

If you don’t have access to the Client Data tab and you believe you should, please
contact someone in your provider organisation or provider organisation's PHN
who has the 'User Management' role. If you are unsure who has the 'User Management'
role please email the PMHC Helpdesk at support@pmhc-mds.com

After navigating to the Client Data tab, you will be presented with three search boxes
which will allow you to easily find and view the client data for the organisations
you have permission to access.

.. figure:: screen-shots/client-data.png
   :alt: Client Data Tab View

.. _find-client:

Finding a Client
^^^^^^^^^^^^^^^^

There are three :ref:`search-fields` options available to find a client.

.. _search-fields:

Search Fields
-------------

You can choose any one of three search options to search for a client, depending on the client information that you have available to you at the time.

- **Client Key** - You can use this field to type in a whole :ref:`dfn-client_key`, or start thereof.

- **SLK** - You can use this field to type in a client's Statistical Linkage Key (:ref:`dfn-slk`)

- **DOB** & **Gender** - You can use this field to type in a combination of the client's Date of Birth (:ref:`dfn-date_of_birth`) and :ref:`dfn-client_gender`.

.. figure:: screen-shots/client-search-fields.png
   :alt: Client Data Search Fields

After entering information into one of these :ref:`search-fields`, simply click
the blue 'Search' button to see :ref:`search-client`

.. _search-client:

Client Search Results
^^^^^^^^^^^^^^^^^^^^^

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

You can clear the search results by clicking on the blue 'Clear Results' button.

.. figure:: screen-shots/client-search-results.png
   :alt: Client Data Search Results

..  XXX Check filter feature functionality - keeping to be added at a later date XXX

.. To filter the listed clients:

.. 1. Click the grey 'Filters' button.
.. 2. Start typing in an edit box now displayed under the column headers.
.. 3. To remove the filter, click the grey cross within the edit box beside any
   entered text.

.. _view-client-details:

Viewing a Client's details
^^^^^^^^^^^^^^^^^^^^^^^^^^

You can view a clients's details through the :ref:`search-client`
available on the Client Data tab, by following these steps:

1. Create :ref:`search-client`
2. Click on the Client Key in blue displayed within the table list.
3. This is the Client's summary view, with summary details along with a
   snapshot of the five most recent episodes.

.. figure:: screen-shots/client-view-summary.png
   :alt: Client Data Summary View

4. Click Details tab for more information on the Client.

A page will display the Client's details as recorded via the Client Data Elements - :ref:`client-data-elements`.

.. figure:: screen-shots/client-view-details.png
   :alt: Client Data Details View

.. _view-client-episodes:

Viewing a Client's Episodes
^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can view a clients's episodes through the :ref:`view-client-details`
available on the Client Data tab, by following these steps:

1. Once :ref:`view-client-details`
2. From the Client's Summary tab, you can shortcut straight to an episode by clicking
   the Blue Episode Key displayed in the snapshot of the five most recent episodes.

 .. figure:: screen-shots/client-episode-summary.png
    :alt: Client Data Summary View

3. Alternately, if you would like to view all episodes you can click on the
   Episode Tab. The heading for this tab displays in brackets the total number of episodes recorded
   in the PMHC MDS for this client at Provider Organisations for which you have access.

A table will display all the Client's Episodes at Provider Organisations for which you have access.

.. figure:: screen-shots/client-episodes-view.png
   :alt: Client Episodes Table View

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



.. _view-client-service-contact:

Viewing a Client's Service Contacts for an Episode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can view a client's service contacts through the :ref:`view-client-episodes`
available on the Client Data tab, by following these steps:

1. Once :ref:`view-client-episodes`
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


.. _view-practitioner-details:

Viewing a Practitioner Providing Client Services
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can view a practitioner's details through the :ref:`view-client-service-contact`
available on the Client Data tab, by following these steps:

1. Once :ref:`view-client-service-contact`
2. From the Service Contacts Details tab, click the Practitioner Key.

.. figure:: screen-shots/client-service-contacts-practitioner-key.png
   :alt: Practitioner Key on Service Contacts Details

A page will display the Practitioner's details as recorded via the :ref:`Practitioner Data Elements <practitioner-data-elements>`.

.. figure:: screen-shots/practitioner-details.png
   :alt: Practitioner Details View


.. _view-client-collection-occasion:

Viewing a Client's Outcome Collection Occasions for an Episode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can view a clients's outcome collection occasions through the :ref:`view-client-episodes`
available on the Client Data tab, by following these steps:

1. Once :ref:`view-client-episodes`
2. From the Client's Episode Details tab, click the Collection Occasions Tab.
   This tab displays in brackets the total number of collection occasions recorded
   in the PMHC MDS for this episode.

A table will display all the Collection Occasions linked to this Client's Episode.

.. figure:: screen-shots/client-collection-occasions-view.png
   :alt: Client Episode Collection Occasions Table View

3. To view the Collection Occasions details, click the Blue Service Contact Key.

.. figure:: screen-shots/client-collection-occasions-details.png
   :alt: Client Episode Collection Occasions Details View

A page will display the Collection Occasions details as recorded via the :ref:`Outcome Collection Occasion Data Elements <outcome-collection-occasion-data-elements>`.



.. _add-client:

Adding a Client and Client's data
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Data Entry Interface is due to be fully integrated into the PMHC MDS
in :ref:`Stage-Two` of the PMHC MDS development.

An update will be circulated to all current users and the mailing list
when this new feature is added.

Once this feature is available, you will only be able to use the Data Entry Interface if
you have been assigned the 'Data Entry' role.

In the interim, PMHC MDS users with the Upload :ref:`roles` can add their
organisation's current PMHC MDS data through the Upload tab - see :ref:`Upload`.
