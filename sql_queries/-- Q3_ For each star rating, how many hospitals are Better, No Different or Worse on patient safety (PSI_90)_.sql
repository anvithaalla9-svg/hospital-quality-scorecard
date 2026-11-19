-- Q3: For each star rating, how many hospitals are Better, No Different or Worse on patient safety (PSI_90)?
select patient_survey_star_rating,
       count(*) as hospitals,
       countif(psi_90_label = 'Better') as better,
       countif(psi_90_label = 'No Different') as no_different,
       countif(psi_90_label = 'Worse') as worse
from `hospital_quality.hospital_final`
where patient_survey_star_rating is not null
  and psi_90_label is not null
group by patient_survey_star_rating
order by patient_survey_star_rating