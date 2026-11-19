-- Q2: average PSI_90 score for each patient star rating (lower PSI_90 = safer)
select patient_survey_star_rating,
       count(*) as hospitals,
       round(avg(psi_90_score), 3) as avg_psi_90
from `hospital_quality.hospital_final`
where patient_survey_star_rating is not null
  and psi_90_score is not null
group by patient_survey_star_rating
order by patient_survey_star_rating