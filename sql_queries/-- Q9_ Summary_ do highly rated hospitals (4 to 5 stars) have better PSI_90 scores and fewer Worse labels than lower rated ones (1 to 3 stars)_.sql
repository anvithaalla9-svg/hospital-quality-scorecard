-- Q9: Summary: do highly rated hospitals (4 to 5 stars) have better PSI_90 scores and fewer Worse labels than lower rated ones (1 to 3 stars)?
select case when patient_survey_star_rating >= 4 then 'High rated (4 to 5 stars)'
            else 'Lower rated (1 to 3 stars)'
       end as rating_group,
       count(*) as hospitals,
       round(avg(psi_90_score), 3) as avg_psi_90,
       round(100 * countif(psi_90_label = 'Worse') / count(*), 1) as pct_worse
from `hospital_quality.hospital_final`
where patient_survey_star_rating is not null
  and psi_90_score is not null
group by rating_group
order by rating_group