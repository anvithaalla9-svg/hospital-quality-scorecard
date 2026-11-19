-- Q7: Which states have the highest and lowest average star ratings, and what are their PSI_90 scores? (states with at least 20 hospitals)
select state,
       count(*) as hospitals,
       round(avg(patient_survey_star_rating), 3) as avg_star,
       round(avg(psi_90_score), 3) as avg_psi
from `hospital_quality.hospital_final`
where patient_survey_star_rating is not null
  and psi_90_score is not null
group by state
having count(*) >= 20
order by avg_star desc