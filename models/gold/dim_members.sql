SELECT DISTINCT
  member_id,
  member_name,
  dob,
  gender,
  city,
  state,
  zip
FROM {{ ref('members') }}
