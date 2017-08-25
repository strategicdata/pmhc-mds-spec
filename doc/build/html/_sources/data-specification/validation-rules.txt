.. _validation-rules:

Validation Rules
================

This document defines validation rules between items and record types.
The domain of individual items is defined in :ref:`record-formats`.

.. _current-validations:

Current Validations
-------------------

.. _practitioner-current-validations:

Practitioner
~~~~~~~~~~~~

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
~~~~~~

  * :ref:`dfn-prof_english` response '0: Not applicable (persons under 5
    years of age or who speak only English)' is only allowed where

    * :ref:`dfn-main_lang_at_home` is '1201: English', or
    * :ref:`dfn-est_date_of_birth` is  '1: Date of birth is accurate' and the
      person is under 5, or
    * :ref:`dfn-est_date_of_birth` is '2: Date of birth is an estimate' and the
      person is under 6

    Where :ref:`dfn-est_date_of_birth` is '8: Date of birth is a dummy' or
    '9: Accuracy of stated date of birth is not known' :ref:`dfn-prof_english`
    is not checked.

.. _episode-current-validations:

Episode
~~~~~~~

  * The :ref:`dfn-episode_end_date` must be after the :ref:`dfn-referral_date`
  * Where :ref:`dfn-service_contact_final` is recorded as '1: No further services
    are planned for the client in the current episode', the
    :ref:`dfn-episode_completion_status` must be recorded using one of the
    'Episode closed' responses (Response items 2-6)
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
~~~~~~~~~~~~~~~

  * Where :ref:`dfn-service_contact_final` is recorded as '1: No further services
    are planned for the client in the current episode', the date of the
    :ref:`dfn-service_contact_final` must be recorded as the Episode End Date
  * Where an :ref:`dfn-episode_end_date` has been recorded, there must be a service
    contact with :ref:`dfn-service_contact_final` set to '1: No further services
    are planned for the client in the current episode'
  * Where an :ref:`dfn-episode_end_date` has been recorded, a later
    :ref:`dfn-service_contact_date` cannot be added
  * If :ref:`dfn-service_contact_modality` is '0: No contact took place'
    :ref:`dfn-service_contact_no_show` must be '1: Yes'
  * If :ref:`dfn-service_contact_modality` is '0: No contact took place'
    :ref:`dfn-service_contact_postcode` must be 9999
  * If :ref:`dfn-service_contact_modality` is '1: Face to Face'
    :ref:`dfn-service_contact_postcode` must not be 9999
  * If :ref:`dfn-service_contact_modality` is '1: Face to Face'
    :ref:`dfn-service_contact_venue` must not be
    '98: Not applicable (Service Contact Modality is not face to face)'
  * If :ref:`dfn-service_contact_modality` is not '1: Face to Face'
    :ref:`dfn-service_contact_postcode` must be 9999
  * On :ref:`dfn-service_contact_type` the value '98: ATAPS' will only be
    allowed where data has been migrated from ATAPS. The above
    response will only be allowed under the following conditions:

    * The :ref:`dfn-service_contact_date` was before 30 June 2018
    * The :ref:`dfn-episode_tags` field must contain the !ATAPS flag

.. _k10p-current-validations:

K10+
~~~~

  * :ref:`dfn-measure_date` must be after :ref:`dfn-referral_date`
  * If both item scores and a total score are specified, the item scores must
    add up to the total score

.. _k5-current-validations:

K5
~~~

  * :ref:`dfn-measure_date` must be after :ref:`dfn-referral_date`
  * If both item scores and a total score are specified, the item scores must
    add up to the total score

.. _sdq-current-validations:

SDQ
~~~

  * :ref:`dfn-measure_date` must be after :ref:`dfn-referral_date`

.. _future-validations:

Future Validations
------------------

.. _episode-future-validations:

Episode
~~~~~~~

  * Restrict '4: Complex care package' for :ref:`dfn-principal_focus` to
    selected PHN Lead Sites

SDQ
~~~

  * Use the table at :ref:`sdq-data-elements` to validate the items that
    are used in each version of the SDQ.
  * If both item scores, subscales and total score are specified, the item
    scores must agree with the subscales/total score.
