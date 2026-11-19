-- Q4: Do the average star rating and the average PSI_90 score differ by ownership group?
select ownership_group,
       count(*) as hospitals,
       round(avg(patient_survey_star_rating), 2) as avg_stars,
       round(avg(psi_90_score), 3) as avg_psi_90
from `hospital_quality.hospital_final`
where patient_survey_star_rating is not null
  and psi_90_score is not null
group by ownership_group
order by avg_stars desc