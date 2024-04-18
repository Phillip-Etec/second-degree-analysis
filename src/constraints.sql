
ALTER TABLE armas
    ADD CONSTRAINT nn_arm_id  NOT NULL (arm_id);

ALTER TABLE armas
    ADD CONSTRAINT nn_arm_nome  NOT NULL (arm_nome);

ALTER TABLE estados
    ADD CONSTRAINT nn_std_id NOT NULL (std_id);

ALTER TABLE estados
    ADD CONSTRAINT nn_std_nome NOT NULL (std_nome);

ALTER TABLE cidades
    ADD CONSTRAINT nn_cdd_id NOT NULL (cdd_id);

ALTER TABLE cidades
    ADD CONSTRAINT nn_cdd_nome NOT NULL (cdd_nome);

ALTER TABLE cidades
    ADD CONSTRAINT nn_cdd_std_id NOT NULL (cdd_std_id);

ALTER TABLE tipos_de_crime
    ADD CONSTRAINT nn_tcr_id NOT NULL (tcr_id);

ALTER TABLE tipos_de_crime
    ADD CONSTRAINT nn_tcr_tipo NOT NULL (tcr_tipo);

ALTER TABLE tipos_de_agencia
    ADD CONSTRAINT nn_tag_id NOT NULL (tag_id);

ALTER TABLE tipos_de_agencia
    ADD CONSTRAINT nn_tag_tipo NOT NULL (tag_tipo);

ALTER TABLE agencias
    ADD CONSTRAINT nn_agn_id NOT NULL (agn_id);

ALTER TABLE agencias
    ADD CONSTRAINT nn_agn_cod NOT NULL (agn_cod);

ALTER TABLE agencias
    ADD CONSTRAINT nn_agn_nome NOT NULL (agn_nome);

ALTER TABLE agencias
    ADD CONSTRAINT nn_agn_tag_id NOT NULL (agn_tag_id);

ALTER TABLE racas
    ADD CONSTRAINT nn_rac_id NOT NULL (rac_id);

ALTER TABLE racas
    ADD CONSTRAINT nn_rac_nome NOT NULL (rac_nome);

ALTER TABLE etnias
    ADD CONSTRAINT nn_etn_id NOT NULL (etn_id);

ALTER TABLE etnias
    ADD CONSTRAINT nn_etn_nome NOT NULL (etn_nome);

ALTER TABLE vitimas
    ADD CONSTRAINT nn_vtm_id NOT NULL (vtm_id);

ALTER TABLE vitimas
    ADD CONSTRAINT nn_vtm_idade NOT NULL (vtm_idade);

ALTER TABLE vitimas
    ADD CONSTRAINT nn_vtm_rac_id NOT NULL (vtm_rac_id);

ALTER TABLE vitimas
    ADD CONSTRAINT nn_vtm_etn_id NOT NULL (vtm_etn_id);

ALTER TABLE infratores
    ADD CONSTRAINT nn_inf_id NOT NULL (inf_id);

ALTER TABLE infratores
    ADD CONSTRAINT nn_inf_idade NOT NULL (inf_idade);

ALTER TABLE infratores
    ADD CONSTRAINT nn_inf_rac_id NOT NULL (inf_rac_id);

ALTER TABLE infratores
    ADD CONSTRAINT nn_inf_etn_id NOT NULL (inf_etn_id);

ALTER TABLE relacionamentos
    ADD CONSTRAINT nn_rel_id NOT NULL (rel_id);

ALTER TABLE homicidios
    ADD CONSTRAINT nn_hmc_id NOT NULL (hmc_id);

ALTER TABLE homicidios
    ADD CONSTRAINT nn_hmc_recorde NOT NULL (hmc_recorde);

ALTER TABLE homicidios
    ADD CONSTRAINT nn_hmc_qtd_infratores NOT NULL (hmc_qtd_infratores);

ALTER TABLE homicidios
    ADD CONSTRAINT nn_hmc_data_incidente NOT NULL (hmc_data_incidente);

ALTER TABLE homicidios
    ADD CONSTRAINT nn_hmc_sol_id NOT NULL (hmc_sol_id);

ALTER TABLE homicidios
    ADD CONSTRAINT nn_hmc_agn_id NOT NULL (hmc_agn_id);

ALTER TABLE homicidios
    ADD CONSTRAINT nn_hmc_vtm_id NOT NULL (hmc_vtm_id);

ALTER TABLE homicidios
    ADD CONSTRAINT nn_hmc_inf_id NOT NULL (hmc_inf_id);

ALTER TABLE homicidios
    ADD CONSTRAINT nn_hmc_tcr_id NOT NULL (hmc_tcr_id);

ALTER TABLE homicidios
    ADD CONSTRAINT nn_hmc_arm_id NOT NULL (hmc_arm_id);

ALTER TABLE homicidios
    ADD CONSTRAINT nn_hmc_cdd_id NOT NULL (hmc_cdd_id);

ALTER TABLE homicidios
    ADD CONSTRAINT nn_hmc_rel_id NOT NULL (hmc_rel_id);

