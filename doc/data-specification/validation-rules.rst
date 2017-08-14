Validation Rules
================

.. _current-validations:

Current Validations
-------------------

.. _practitioner-current-validations:

Practitioner
------------

  * :ref:`dfn-practitioner_year_of_birth` should not be in the future
  * :ref:`dfn-atsi_cultural_training` is only allowed to be set to
    '3 - Not required' if :ref:`dfn-practitioner_atsi_status` is one of

    * 1 - Aboriginal but not Torres Strait Islander origin
    * 2 - Torres Strait Islander but not Aboriginal origin
    * 3 - Both Aboriginal and Torres Strait Islander origin

    or

    The organistion to which the practitioner belongs has
    :ref:`dfn-organisation_type` set to '8: Aboriginal Health/Medical Service'


.. _client-current-validations:

Client
------

  * :ref:`dfn-prof_english` response '0: Not applicable (persons under 5
    years of age or who speak only English)'  is only allowed when the persons
    age is under 5 years of age or where :ref:`dfn-main_lang_at_home` is
    '1201: English'
  * :ref:`dfn-date_of_birth` should not be in the future

.. _episode-current-validations:

Episode
-------

  * :ref:`dfn-episode_end_date` should not be in the future
  * :ref:`dfn-referral_date` should not be in the future
  * The :ref:`dfn-episode_end_date` should be after the :ref:`dfn-referral_date`
  * Where :ref:`dfn-service_contact_final` is recorded as '1: No further services
    are planned for the client in the current episode', the date of the
    :ref:`dfn-service_contact_final` should be recorded as the Episode End Date
  * Where :ref:`dfn-service_contact_final` is recorded as '1: No further services
    are planned for the client in the current episode', the
    :ref:`dfn-episode_completion_status` should be recorded using one of the
    'Episode closed' responses (Response items 2-6)
  * Where an :ref:`dfn-episode_end_date` has been recorded, there should be a service
    contact with :ref:`dfn-service_contact_final` set to '1: No further services
    are planned for the client in the current episode'
  * Where an :ref:`dfn-episode_end_date` has been recorded, a later
    :ref:`dfn-service_contact_date` cannot be added
  * :ref:`dfn-client_postcode` should be a valid Australian postcode in the
    range 0200-0299, 0800-9999
  * :ref:`dfn-income_source` can only have a value of
    '0: N/A - Client aged less than 16 years' where the client is less than
    16 years of age
    **Nick: How do we determine age?**
  * :ref:`dfn-referrer_organisation_type` should only be set to
    '98: N/A - Self referral' where :ref:`dfn-referrer_profession` is also
    '98: N/A - Self referral'
  * Only one episode is allowed to be open per client
  * On :ref:`dfn-principal_diagnosis` and :ref:`dfn-additional_diagnosis`
    the values:

    * 100: Anxiety disorders (ATAPS)
    * 200: Affective (Mood) disorders (ATAPS)
    * 300: Substance use disorders (ATAPS)
    * 400: Psychotic disorders (ATAPS)

    will only be allowed where data has been migrated from ATAPS. The above
    responses will only be allowed under the following conditions:

    * The :ref:`dfn-referral_date` was before 1 July 2017
    * The :ref:`dfn-episode_tags` field must contain the !ATAPS flag

.. _service-contact-current-validations:

Service Contact
---------------

  * :ref:`dfn-service_contact_date` should not be in the future
  * :ref:`dfn-service_contact_postcode` should be a valid Australian postcode in the
    range 0200-0299, 0800-9999
  * If :ref:`dfn-service_contact_modality` is '1: Face to Face'
    a value other than
    '98: Not applicable (Service Contact Modality is not face to face)'
    must be selected for :ref:`dfn-service_contact_venue`
  * If :ref:`dfn-service_contact_modality` is '1: Face to Face' a
    valid Australian postcode must be entered for :ref:`dfn-service_contact_postcode`
    **Nick - How is this being checked?**
  * If :ref:`dfn-service_contact_modality` is not '1: Face to Face'
    :ref:`dfn-service_contact_postcode` should be 9999
  * On :ref:`dfn-service_contact_type` the value '98: ATAPS' will only be
    allowed where data has been migrated from ATAPS. The above
    response will only be allowed under the following conditions:

    * The :ref:`dfn-service_contact_date` was before 30 June 2018
    * The :ref:`dfn-episode_tags` field must contain the !ATAPS flag

.. _k10p-current-validations:

K10+
----

  * :ref:`dfn-measure_date` should be after :ref:`dfn-referral_date`
  * If both item scores and a total score are specified, the item scores must
    add up to the total score

.. _k5-current-validations:

K5
---

  * :ref:`dfn-measure_date` should be after :ref:`dfn-referral_date`
  * If both item scores and a total score are specified, the item scores must
    add up to the total score

.. _sdq-current-validations:

SDQ
---

  * :ref:`dfn-measure_date` should be after :ref:`dfn-referral_date`

.. _future-validations:

Future Validations
------------------

.. _episode-future-validations:

Episode
-------

  * Restrict '4: Complex care package' for :ref:`dfn-principal_focus` to
    selected PHN Lead Sites

SDQ
---

  * Use the table at :ref:`sdq-data-elements` to validate the items that
    are used in each version of the SDQ.
  * If both item scores, subscales and total score are specified, the item
    scores must agree with the subscales/total score.
