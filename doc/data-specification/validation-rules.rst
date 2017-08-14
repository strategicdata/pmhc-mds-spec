Validation Rules
================

.. We should probably have some generic validation rules for keys up here somewhere.
   Clarify that they can't be blank, are case sensitive, not sure where we're at with
   them being unicode clean.

.. _current-validations:

Current Validations
-------------------

.. _practitioner-current-validations:

Practitioner
------------

  * :ref:`dfn-practitioner_year_of_birth` must not be in the future
  * :ref:`dfn-practitioner_year_of_birth` must be after 1900
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

.. 'english_proficiency_check' is slightly complicated by dob_status_id: it applies for
   persons under 5 with an exact dob, or persons under 6 with an approximate dob and not
   for unknown dobs

.. 'nonempty_slk' actually enforces that SLK is either 14, 32 or 40 characters long

  * :ref:`dfn-prof_english` response '0: Not applicable (persons under 5
    years of age or who speak only English)'  is only allowed when the persons
    age is under 5 years of age or where :ref:`dfn-main_lang_at_home` is
    '1201: English'
  * :ref:`dfn-date_of_birth` must not be in the future

.. _episode-current-validations:

Episode
-------

  * :ref:`dfn-episode_end_date` must not be in the future
  * :ref:`dfn-referral_date` must not be in the future
  * The :ref:`dfn-episode_end_date` must be after the :ref:`dfn-referral_date`
  * Where :ref:`dfn-service_contact_final` is recorded as '1: No further services
    are planned for the client in the current episode', the date of the
    :ref:`dfn-service_contact_final` must be recorded as the Episode End Date
  * Where :ref:`dfn-service_contact_final` is recorded as '1: No further services
    are planned for the client in the current episode', the
    :ref:`dfn-episode_completion_status` must be recorded using one of the
    'Episode closed' responses (Response items 2-6)
  * Where an :ref:`dfn-episode_end_date` has been recorded, there must be a service
    contact with :ref:`dfn-service_contact_final` set to '1: No further services
    are planned for the client in the current episode'
  * Where an :ref:`dfn-episode_end_date` has been recorded, a later
    :ref:`dfn-service_contact_date` cannot be added
  * :ref:`dfn-client_postcode` must be a valid Australian postcode in the
    range 0200-0299, 0800-9999
  * :ref:`dfn-income_source` can only have a value of
    '0: N/A - Client aged less than 16 years' where the client is less than
    16 years of age

.. **Nick: How do we determine age?**
   good question ... see #857 currently it isn't checked.

.. The constraints on SC status vs Episode status are also really messy because
   we create the episode before the SCs are created so we can't constrain this!

  * :ref:`dfn-referrer_organisation_type` must be set to
    '98: N/A - Self referral' if and only if :ref:`dfn-referrer_profession` is also
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

  * :ref:`dfn-service_contact_date` must not be in the future
  * :ref:`dfn-service_contact_postcode` must be a valid Australian postcode in the
    range 0200-0299, 0800-9999
  * If :ref:`dfn-service_contact_modality` is '1: Face to Face'
    a value other than
    '98: Not applicable (Service Contact Modality is not face to face)'
    must be selected for :ref:`dfn-service_contact_venue`
  * If :ref:`dfn-service_contact_modality` is '1: Face to Face' a
    valid Australian postcode must be entered for :ref:`dfn-service_contact_postcode`

.. **Nick - How is this being checked?**
   there's a check constraint valid_modality_face2face_postcode which checks venue_id <> 98
   and postcode != 9999; postcode can still be set to 9998 though

.. valid_modality_face2face_postcode : (((modality_id = 1) AND (venue_id <> 98) AND (postcode <> '9999'::text)) OR ((modality_id < 1) OR (modality_id > 1)))

  * If :ref:`dfn-service_contact_modality` is not '1: Face to Face'
    :ref:`dfn-service_contact_postcode` must be 9999
  * On :ref:`dfn-service_contact_type` the value '98: ATAPS' will only be
    allowed where data has been migrated from ATAPS. The above
    response will only be allowed under the following conditions:

.. valid_modality_no_show_postcode : (((modality_id = 0) AND (no_show_flag = 1) AND (postcode = '9999'::text)) OR (modality_id > 0))

.. valid_modality_postcode_unknown : (((modality_id > 1) AND (postcode = '9999'::text)) OR (modality_id <= 1))

    * The :ref:`dfn-service_contact_date` was before 30 June 2018
    * The :ref:`dfn-episode_tags` field must contain the !ATAPS flag

.. _k10p-current-validations:

K10+
----

  * :ref:`dfn-measure_date` must be after :ref:`dfn-referral_date`
  * :ref:`dfn-measure_date` must not be in the future
  * If both item scores and a total score are specified, the item scores must
    add up to the total score

.. did you want to list the full validation spec here, eg: ranges of answers and totals?

.. checking totals this isn't properly implemented (yet) ...

.. _k5-current-validations:

K5
---

  * :ref:`dfn-measure_date` must be after :ref:`dfn-referral_date`
  * :ref:`dfn-measure_date` must not be in the future
  * If both item scores and a total score are specified, the item scores must
    add up to the total score

.. _sdq-current-validations:

.. did you want to list the full validation spec here, eg: ranges of answers and totals?

.. checking totals this isn't properly implemented (yet) ...

SDQ
---

  * :ref:`dfn-measure_date` must be after :ref:`dfn-referral_date`
  * :ref:`dfn-measure_date` must not be in the future

.. did you want to list the full validation spec here, eg: ranges of answers and totals?

.. something about subtotals etc adding up correctly.
   checking totals this isn't properly implemented (yet) ...

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
