-- Q5: Do the average star rating and the average PSI_90 score differ by hospital type?
select hospital_type,
       count(*) as hospitals,
       round(avg(patient_survey_star_rating), 2) as avg_stars,
       round(avg(psi_90_score), 3) as avg_psi_90
from `hospital_quality.hospital_final`
where patient_survey_star_rating is not null
  and psi_90_score is not null
group by hospital_type
order by hospitals desc