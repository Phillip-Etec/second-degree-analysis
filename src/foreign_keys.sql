ALTER TABLE cidades
    ADD CONSTRAINT fk_cdd_std FOREIGN KEY (cdd_std_id) 
        REFERENCES estados (std_id);

ALTER TABLE agencias
    ADD CONSTRAINT fk_agn_tag FOREIGN KEY (agn_tag_id)
        REFERENCES tipos_de_agencia (tag_id);

ALTER TABLE vitimas
    ADD CONSTRAINT fk_vtm_racl FOREIGN KEY (vtm_rac_id)
        REFERENCES racas (rac_id);

ALTER TABLE vitimas
    ADD CONSTRAINT fk_vtm_etn FOREIGN KEY (vtm_etn_id)
        REFERENCES etnias (etn_id);

ALTER TABLE infratores
    ADD CONSTRAINT fk_inf_rac FOREIGN KEY (inf_rac_id)
        REFERENCES racas (rac_id);

ALTER TABLE infratores
    ADD CONSTRAINT fk_inf_etn FOREIGN KEY (inf_etn_id)
        REFERENCES etnias (etn_id);

ALTER TABLE homicidios
    ADD CONSTRAINT fk_hmc_sol FOREIGN KEY (hmc_sol_id)
       REFERENCES solucoes (sol_id);

ALTER TABLE homicidios
    ADD CONSTRAINT fk_hmc_agn FOREIGN KEY (hmc_agn_id)
        REFERENCES agencias (agn_id);

ALTER TABLE homicidios
    ADD CONSTRAINT fk_hmc_vtm FOREIGN KEY (hmc_vtm_id)
        REFERENCES vitimas (vtm_id);

ALTER TABLE homicidios
    ADD CONSTRAINT fk_hmc_inf FOREIGN KEY (hmc_inf_id)
        REFERENCES infratores (inf_id);

ALTER TABLE homicidios
    ADD CONSTRAINT fk_hmc_tcr FOREIGN KEY (hmc_tcr_id)
        REFERENCES tipos_de_crime (tcr_id);

ALTER TABLE homicidios
    ADD CONSTRAINT fk_hmc_arm FOREIGN KEY (hmc_arm_id)
        REFERENCES armas (arm_id);

ALTER TABLE homicidios
    ADD CONSTRAINT fk_hmc_cdd FOREIGN KEY (hmc_cdd_id)
        REFERENCES cidades (cdd_id);

ALTER TABLE homicidios
    ADD CONSTRAINT fk_hmc_rel FOREIGN KEY (hmc_rel_id)
        REFERENCES relacionamentos (rel_id);
