
library(ggplot2)
library(gridExtra)

# 2003
p1<-ggplot(yearSepForR, aes(age_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(urban_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(married_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(n_mar_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(edu_gru_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(n_living_child_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(migration_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(glob_hlth_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(n_adl_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)

p1<-ggplot(yearSepForR, aes(n_iadl_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(depressed_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(hard_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(restless_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(happy_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(lonely_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(enjoy_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(sad_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(energetic_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)


p1<-ggplot(yearSepForR, aes(tired_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(n_depr_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(cesd_depressed_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(hypertension_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(diabetes_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(resp_ill_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(arthritis_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(hrt_attack_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(stroke_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)


p1<-ggplot(yearSepForR, aes(cancer_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(n_illnesses_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(bmi_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(exer_3xwk_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(alcohol_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(tobacco_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(test_chol_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(test_tuber_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(test_diab_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)


p1<-ggplot(yearSepForR, aes(test_pres_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(hosp_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(visit_med_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(out_proc_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(edu_gru_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(visit_dental_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(insured_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(imss_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(issste_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)

p1<-ggplot(yearSepForR, aes(pem_def_mar_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(insur_private_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(insur_other_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(decis_famil_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(decis_personal_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(employment_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(sgender_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(ragender, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(rjob_hrswk_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)

p1<-ggplot(yearSepForR, aes(test_pres_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(hosp_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(visit_med_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(out_proc_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(edu_gru_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(visit_dental_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(insured_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(imss_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(issste_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)

p1<-ggplot(yearSepForR, aes(pem_def_mar_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(insur_private_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(insur_other_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(insured_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(decis_famil_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(decis_personal_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(employment_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(sgender_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(searnings_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)

p1<-ggplot(yearSepForR, aes(rjob_hrswk_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(rjlocc_m_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(rjob_end_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(rjobend_reason_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(rearnings_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(hincome_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(hinc_business_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(hinc_rent_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(hinc_assets_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)

p1<-ggplot(yearSepForR, aes(hinc_cap_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(rinc_pension_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(sinc_pension_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(rrelgimp_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(rearnings_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(hincome_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(hinc_business_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(hinc_rent_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(hinc_assets_03, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)








# 2012

p1<-ggplot(yearSepForR, aes(age_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(urban_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(married_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(n_mar_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(edu_gru_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(n_living_child_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(migration_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(glob_hlth_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(n_adl_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)


p1<-ggplot(yearSepForR, aes(n_iadl_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(depressed_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(hard_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(restless_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(happy_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(lonely_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(enjoy_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(sad_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(energetic_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)


p1<-ggplot(yearSepForR, aes(tired_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(n_depr_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(cesd_depressed_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(hypertension_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(diabetes_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(resp_ill_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(arthritis_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(hrt_attack_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(stroke_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)


p1<-ggplot(yearSepForR, aes(cancer_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(n_illnesses_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(bmi_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(exer_3xwk_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(alcohol_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(tobacco_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(test_chol_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(test_tuber_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(test_diab_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)


p1<-ggplot(yearSepForR, aes(test_pres_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(hosp_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(visit_med_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(out_proc_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(edu_gru_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(visit_dental_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(insured_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(imss_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(issste_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)

p1<-ggplot(yearSepForR, aes(pem_def_mar_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(insur_private_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(insur_other_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(insured_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(vax_flu_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(vax_pneu_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(seg_pop_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(care_adult_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(care_child_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)

p1<-ggplot(yearSepForR, aes(volunteer_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(attends_class_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(attends_club_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(attends_club_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(reads_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(games_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(table_games_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(comms_tel_comp_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(act_mant_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)


p1<-ggplot(yearSepForR, aes(tv_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(sewing_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(satis_ideal_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(satis_excel_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(satis_fine_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(cosas_imp_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(wouldnt_change_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(memory_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(sgender_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)

p1<-ggplot(yearSepForR, aes(rjob_hrswk_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(rjlocc_m_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(rjob_end_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(rjobend_reason_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(rearnings_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(hincome_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(hinc_business_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(hinc_rent_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(hinc_assets_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)

p1<-ggplot(yearSepForR, aes(hinc_cap_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(rinc_pension_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(sinc_pension_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(rrelgimp_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(searnings_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(rrfcntx_m_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(rsocact_m_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(rrelgwk_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(a16a_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)

p1<-ggplot(yearSepForR, aes(a21_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p2<-ggplot(yearSepForR, aes(a22_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p3<-ggplot(yearSepForR, aes(a33b_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p4<-ggplot(yearSepForR, aes(a34_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p5<-ggplot(yearSepForR, aes(j11_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p6<-ggplot(yearSepForR, aes(ragender, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p7<-ggplot(yearSepForR, aes(rameduc_m, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p8<-ggplot(yearSepForR, aes(rafeduc_m, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')
p9<-ggplot(yearSepForR, aes(a16a_12, composite_score))+geom_point(aes(color = factor(year)))+ theme(legend.position='none')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9, nrow=3)











