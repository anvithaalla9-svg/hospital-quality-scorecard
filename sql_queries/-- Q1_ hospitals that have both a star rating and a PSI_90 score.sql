-- Q1: hospitals that have both a star rating and a PSI_90 score
select count(*) as hospitals_with_both
from `hospital_quality.hospital_final`
where patient_survey_star_rating is not null
  and psi_90_score is not null