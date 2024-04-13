CREATE TRIGGER tg_harmas
BEFORE UPDATE OR DELETE ON armas
FOR EACH ROW
    BEGIN
        INSERT INTO harmas VALUES (:OLD.arm_id,:OLD.arm_nome, sysdate)
    END;
    /

CREATE TRIGGER tg_estados
BEFORE UPDATE OR DELETE ON estados
FOR EACH ROW
    BEGIN
        INSERT INTO hestados VALUES (:OLD.std_id,:OLD.std_nome, sysdate)
    END;
    /

CREATE TRIGGER tg_hcidades
BEFORE UPDATE OR DELETE ON cidades
FOR EACH ROW
    BEGIN
        INSERT INTO hcidades VALUES (:OLD.cdd_id,:OLD.cdd_nome,:OLD.cdd_std_id, sysdate)
    END;
    /

CREATE TRIGGER tg_htipos_de_crime
BEFORE UPDATE OR DELETE ON tipos_de_crime
FOR EACH ROW
    BEGIN
        INSERT INTO htipos_de_crime VALUES (:OLD.tcr_id,:OLD.tcr_tipo, sysdate)
    END;
    /

CREATE TRIGGER tg_htipos_de_agencia
BEFORE UPDATE OR DELETE ON tipos_de_agencia
FOR EACH ROW
    BEGIN
        INSERT INTO htipos_de_agencia VALUES (:OLD.tag_id,:OLD.tag_tipo, sysdate)
    END;
    /

CREATE TRIGGER tg_hagencias
BEFORE UPDATE OR DELETE ON agencias
FOR EACH ROW
    BEGIN
        INSERT INTO hagencias VALUES (:OLD.agn_id,:OLD.agn_cod,:OLD.agn_nome,:OLD.agn_tag_id, sysdate)
    END;
    /

CREATE TRIGGER tg_hracas
BEFORE UPDATE OR DELETE ON racas
FOR EACH ROW
    BEGIN
        INSERT INTO hracas VALUES (:OLD.rac_id,:OLD.rac_nome, sysdate)
    END;
    /

CREATE TRIGGER tg_hetnias
BEFORE UPDATE OR DELETE ON etnias
FOR EACH ROW
    BEGIN
        INSERT INTO hetnias VALUES (:OLD.etn_id,:OLD.etn_nome, sysdate)
    END;
    /

CREATE TRIGGER tg_hvitimas
BEFORE UPDATE OR DELETE ON vitimas
FOR EACH ROW
    BEGIN
        INSERT INTO hvitimas VALUES (:OLD.vtm_id,:OLD.vtm_sexo,:OLD.vtm_idade,:OLD.vtm_rac_id,:OLD.vtm_etn_id, sysdate)
    END;
    /

CREATE TRIGGER tg_hinfratores
BEFORE UPDATE OR DELETE ON infratores
FOR EACH ROW
    BEGIN
        INSERT INTO hinfratores VALUES (:OLD.inf_id,:OLD.inf_sexo,:OLD.inf_idade,:OLD.inf_rac_id,:OLD.inf_etn_id, sysdate)
    END;
    /

CREATE TRIGGER tg_hrelacionamentos
BEFORE UPDATE OR DELETE ON relacionamentos
FOR EACH ROW
    BEGIN
        INSERT INTO hrelacionamentos VALUES (:OLD.rel_id,:OLD.rel_relacao, sysdate)
    END;
    /

CREATE TRIGGER tg_hhomicidios
BEFORE UPDATE OR DELETE ON homicidios
FOR EACH ROW
    BEGIN
        INSERT INTO hhomicidios VALUES (:OLD.hmc_id,:OLD.hmc_recorde,:OLD.hmc_qtd_infratores,:OLD.hmc_solucao,:OLD.hmc_data_incidente,:OLD.hmc_sol_id,:OLD.hmc_agn_id,:OLD.hmc_vtm_id,:OLD.hmc_inf_id,:OLD.hmc_tcr_id,:OLD.hmc_arm_id,:OLD.hmc_cdd_id,:OLD.hmc_rel_id, sysdate)
    END;
    /

