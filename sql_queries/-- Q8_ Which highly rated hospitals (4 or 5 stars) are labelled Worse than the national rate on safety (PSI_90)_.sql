-- Q8: Which highly rated hospitals (4 or 5 stars) are labelled Worse than the national rate on safety (PSI_90)?
select facility_name,
       state,
       ownership_group,
       patient_survey_star_rating,
       psi_90_score
from `hospital_quality.hospital_final`
where patient_survey_star_rating >= 4
  and psi_90_label = 'Worse'
order by psi_90_score desc