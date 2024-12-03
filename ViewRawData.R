
yearSepForR<-read.csv() # Add your file here (should have training scores appended to the training features)


# get summary variables for each feature - look for inconsistencies
summary(train_features)

# import libraries for plotting 
library(ggplot2)
library(gridExtra)

# Make point plots #

# make 3 x 3 grids

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



# Make boxplots #


# Function to make converting features to factors and formatting the plots easier 

ggbox_func<-function(featset, feat, yr){
  p_n<-ggplot(featset, aes(x=factor(.data[[paste(feat, yr,sep='_')]]), y=composite_score))+geom_boxplot(aes(color = factor(year)))+ theme(legend.position='none')+
    facet_wrap(~year)+xlab(feat)
  return (p_n)
}

# make 4 x 5 grids 

# 2003
yr<-03
p1<-ggbox_func(train_features,"age",yr)
p2<-ggbox_func(train_features,"urban",yr)
p3<-ggbox_func(train_features,"married",yr)
p4<-ggbox_func(train_features,"n_mar",yr)
p5<-ggbox_func(train_features,"edu_gru",yr)
p6<-ggbox_func(train_features,"n_living_child",yr)
p7<-ggbox_func(train_features,"migration",yr)
p8<-ggbox_func(train_features,"glob_hlth",yr)
p9<-ggbox_func(train_features,"adl_dress",yr)
p10<-ggbox_func(train_features,"adl_walk",yr)
p11<-ggbox_func(train_features,"adl_bath",yr)
p12<-ggbox_func(train_features,"adl_eat",yr)
p14<-ggbox_func(train_features,"adl_bed",yr)
p15<-ggbox_func(train_features,"adl_toilet",yr)
p16<-ggbox_func(train_features,"n_adl",yr)
p17<-ggbox_func(train_features,"iadl_money",yr)
p18<-ggbox_func(train_features,"iadl_meds",yr)
p19<-ggbox_func(train_features,"iadl_shop",yr)
p20<-ggbox_func(train_features,"iadl_meals",yr)
p21<-ggbox_func(train_features,"n_iadl",yr)
grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p14,p15,p16,p17,p18,p19,p20,p21, nrow=4)

p1<-ggbox_func(train_features,"depressed",yr)
p2<-ggbox_func(train_features,"hard",yr)
p3<-ggbox_func(train_features,"restless",yr)
p4<-ggbox_func(train_features,"happy",yr)
p5<-ggbox_func(train_features,"lonely",yr)
p6<-ggbox_func(train_features,"enjoy",yr)
p7<-ggbox_func(train_features,"sad",yr)
p8<-ggbox_func(train_features,"energetic",yr)
p9<-ggbox_func(train_features,"n_depr",yr)
p10<-ggbox_func(train_features,"cesd_depressed",yr)
p11<-ggbox_func(train_features,"hypertension",yr)
p12<-ggbox_func(train_features,"diabetes",yr)
p14<-ggbox_func(train_features,"resp_ill",yr)
p15<-ggbox_func(train_features,"arthritis",yr)
p16<-ggbox_func(train_features,"hrt_attack",yr)
p17<-ggbox_func(train_features,"stroke",yr)
p18<-ggbox_func(train_features,"cancer",yr)
p19<-ggbox_func(train_features,"n_illnesses",yr)
p20<-ggbox_func(train_features,"bmi",yr)
p21<-ggbox_func(train_features,"exer_3xwk",yr)
grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p14,p15,p16,p17,p18,p19,p20,p21, nrow=4)


p1<-ggbox_func(train_features,"alcohol",yr)
p2<-ggbox_func(train_features,"tobacco",yr)
p3<-ggbox_func(train_features,"test_chol",yr)
p4<-ggbox_func(train_features,"test_tuber",yr)
p5<-ggbox_func(train_features,"test_diab",yr)
p6<-ggbox_func(train_features,"test_pres",yr)
p7<-ggbox_func(train_features,"hosp",yr)
p8<-ggbox_func(train_features,"visit_med",yr)
p9<-ggbox_func(train_features,"visit_dental",yr)
p10<-ggbox_func(train_features,"out_proc",yr)
p11<-ggbox_func(train_features,"imss",yr)
p12<-ggbox_func(train_features,"issste",yr)
p14<-ggbox_func(train_features,"pem_def_mar",yr)
p15<-ggbox_func(train_features,"insur_private",yr)
p16<-ggbox_func(train_features,"insur_other",yr)
p17<-ggbox_func(train_features,"insured",yr)
p18<-ggbox_func(train_features,"decis_famil",yr)
p19<-ggbox_func(train_features,"decis_personal",yr)
p20<-ggbox_func(train_features,"employment",yr)
p21<-ggbox_func(train_features,"sgender",yr)
grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p14,p15,p16,p17,p18,p19,p20,p21, nrow=4)

p1<-ggbox_func(train_features,"rjob_hrswk",yr)
p2<-ggbox_func(train_features,"rjlocc_m",yr)
p3<-ggbox_func(train_features,"rjob_end",yr)
p4<-ggbox_func(train_features,"rjobend_reason",yr)
p5<-ggbox_func(train_features,"rearnings",yr)
p6<-ggbox_func(train_features,"searnings",yr)
p7<-ggbox_func(train_features,"hincome",yr)
p8<-ggbox_func(train_features,"hinc_business",yr)
p9<-ggbox_func(train_features,"hinc_rent",yr)
p10<-ggbox_func(train_features,"hinc_assets",yr)
p11<-ggbox_func(train_features,"hinc_cap",yr)
p12<-ggbox_func(train_features,"rinc_pension",yr)
p14<-ggbox_func(train_features,"sinc_pension",yr)
p15<-ggbox_func(train_features,"rrelgimp",yr)

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p14,p15,nrow=4)

# 2012
yr<-12
p1<-ggbox_func(train_features,"age",yr)
p2<-ggbox_func(train_features,"urban",yr)
p3<-ggbox_func(train_features,"married",yr)
p4<-ggbox_func(train_features,"n_mar",yr)
p5<-ggbox_func(train_features,"edu_gru",yr)
p6<-ggbox_func(train_features,"n_living_child",yr)
p7<-ggbox_func(train_features,"migration",yr)
p8<-ggbox_func(train_features,"glob_hlth",yr)
p9<-ggbox_func(train_features,"adl_dress",yr)
p10<-ggbox_func(train_features,"adl_walk",yr)
p11<-ggbox_func(train_features,"adl_bath",yr)
p12<-ggbox_func(train_features,"adl_eat",yr)
p14<-ggbox_func(train_features,"adl_bed",yr)
p15<-ggbox_func(train_features,"adl_toilet",yr)
p16<-ggbox_func(train_features,"n_adl",yr)
p17<-ggbox_func(train_features,"iadl_money",yr)
p18<-ggbox_func(train_features,"iadl_meds",yr)
p19<-ggbox_func(train_features,"iadl_shop",yr)
p20<-ggbox_func(train_features,"iadl_meals",yr)
p21<-ggbox_func(train_features,"n_iadl",yr)
grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p14,p15,p16,p17,p18,p19,p20,p21, nrow=4)

p1<-ggbox_func(train_features,"depressed",yr)
p2<-ggbox_func(train_features,"hard",yr)
p3<-ggbox_func(train_features,"restless",yr)
p4<-ggbox_func(train_features,"happy",yr)
p5<-ggbox_func(train_features,"lonely",yr)
p6<-ggbox_func(train_features,"enjoy",yr)
p7<-ggbox_func(train_features,"sad",yr)
p8<-ggbox_func(train_features,"energetic",yr)
p9<-ggbox_func(train_features,"n_depr",yr)
p10<-ggbox_func(train_features,"cesd_depressed",yr)
p11<-ggbox_func(train_features,"hypertension",yr)
p12<-ggbox_func(train_features,"diabetes",yr)
p14<-ggbox_func(train_features,"resp_ill",yr)
p15<-ggbox_func(train_features,"arthritis",yr)
p16<-ggbox_func(train_features,"hrt_attack",yr)
p17<-ggbox_func(train_features,"stroke",yr)
p18<-ggbox_func(train_features,"cancer",yr)
p19<-ggbox_func(train_features,"n_illnesses",yr)
p20<-ggbox_func(train_features,"bmi",yr)
p21<-ggbox_func(train_features,"exer_3xwk",yr)
grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p14,p15,p16,p17,p18,p19,p20,p21, nrow=4)


p1<-ggbox_func(train_features,"alcohol",yr)
p2<-ggbox_func(train_features,"tobacco",yr)
p3<-ggbox_func(train_features,"test_chol",yr)
p4<-ggbox_func(train_features,"test_tuber",yr)
p5<-ggbox_func(train_features,"test_diab",yr)
p6<-ggbox_func(train_features,"test_pres",yr)
p7<-ggbox_func(train_features,"hosp",yr)
p8<-ggbox_func(train_features,"visit_med",yr)
p9<-ggbox_func(train_features,"visit_dental",yr)
p10<-ggbox_func(train_features,"out_proc",yr)
p11<-ggbox_func(train_features,"imss",yr)
p12<-ggbox_func(train_features,"issste",yr)
p14<-ggbox_func(train_features,"pem_def_mar",yr)
p15<-ggbox_func(train_features,"insur_private",yr)
p16<-ggbox_func(train_features,"insur_other",yr)
p17<-ggbox_func(train_features,"insured",yr)
p18<-ggbox_func(train_features,"decis_famil",yr)
p19<-ggbox_func(train_features,"decis_personal",yr)
p20<-ggbox_func(train_features,"employment",yr)
p21<-ggbox_func(train_features,"sgender",yr)
grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p14,p15,p16,p17,p18,p19,p20,p21, nrow=4)

p1<-ggbox_func(train_features,"rjob_hrswk",yr)
p2<-ggbox_func(train_features,"rjlocc_m",yr)
p3<-ggbox_func(train_features,"rjob_end",yr)
p4<-ggbox_func(train_features,"rjobend_reason",yr)
p5<-ggbox_func(train_features,"rearnings",yr)
p6<-ggbox_func(train_features,"searnings",yr)
p7<-ggbox_func(train_features,"hincome",yr)
p8<-ggbox_func(train_features,"hinc_business",yr)
p9<-ggbox_func(train_features,"hinc_rent",yr)
p10<-ggbox_func(train_features,"hinc_assets",yr)
p11<-ggbox_func(train_features,"hinc_cap",yr)
p12<-ggbox_func(train_features,"rinc_pension",yr)
p14<-ggbox_func(train_features,"sinc_pension",yr)
p15<-ggbox_func(train_features,"rrelgimp",yr)
p16<-ggbox_func(train_features,"rrfcntx_m",yr)
p17<-ggbox_func(train_features,"rsocact_m",yr)
p18<-ggbox_func(train_features,"rrelgwk",yr)
p19<-ggbox_func(train_features,"vax_flu",yr)
p20<-ggbox_func(train_features,"vax_pneu",yr)
p21<-ggbox_func(train_features,"seg_pop",yr)
grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p14,p15,p16,p17,p18,p19,p20,p21, nrow=4)

p1<-ggbox_func(train_features,"care_adult",yr)
p2<-ggbox_func(train_features,"care_child",yr)
p3<-ggbox_func(train_features,"volunteer",yr)
p4<-ggbox_func(train_features,"attends_class",yr)
p5<-ggbox_func(train_features,"attends_club",yr)
p6<-ggbox_func(train_features,"reads",yr)
p7<-ggbox_func(train_features,"games",yr)
p8<-ggbox_func(train_features,"table_games",yr)
p9<-ggbox_func(train_features,"comms_tel_comp",yr)
p10<-ggbox_func(train_features,"act_mant",yr)
p11<-ggbox_func(train_features,"tv",yr)
p12<-ggbox_func(train_features,"sewing",yr)
p14<-ggbox_func(train_features,"satis_ideal",yr)
p15<-ggbox_func(train_features,"satis_excel",yr)
p16<-ggbox_func(train_features,"satis_fine",yr)
p17<-ggbox_func(train_features,"cosas_imp",yr)
p18<-ggbox_func(train_features,"wouldnt_change",yr)
p19<-ggbox_func(train_features,"memory",yr)
p20<-ggbox_func(train_features,"rameduc",'m')
p21<-ggbox_func(train_features,"rafeduc",'m')
grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p14,p15,p16,p17,p18,p19,p20,p21, nrow=4)


p1<-ggbox_func(train_features,"a16a",yr)
p2<-ggbox_func(train_features,"a21",yr)
p3<-ggbox_func(train_features,"a22",yr)
p4<-ggbox_func(train_features,"a33",yr)
p5<-ggbox_func(train_features,"a34",yr)
p6<-ggbox_func(train_features,"j11",yr)
p7<-ggbox_func(train_features,"ragender",'')

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8, nrow=4)















