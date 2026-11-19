-- Q6: Do hospitals with higher star ratings have lower infection scores? (lower SIR = fewer infections)
select patient_survey_star_rating,
       count(*) as hospitals,
       round(avg(hai_1_sir), 3) as avg_hai_1,
       round(avg(hai_2_sir), 3) as avg_hai_2,
       round(avg(hai_3_sir), 3) as avg_hai_3,
       round(avg(hai_4_sir), 3) as avg_hai_4,
       round(avg(hai_5_sir), 3) as avg_hai_5,
       round(avg(hai_6_sir), 3) as avg_hai_6
from `hospital_quality.hospital_final`
where patient_survey_star_rating is not null
group by patient_survey_star_rating
order by patient_survey_star_rating