
CREATE SEQUENCE seq_arm nocache;
CREATE TRIGGER tg_arm_id
    BEFORE INSERT ON armas
    FOR EACH ROW
    BEGIN
        :NEW.arm_id := seq_arm.nextval;
    END;
/

CREATE SEQUENCE seq_std nocache;
CREATE TRIGGER tg_std_id
    BEFORE INSERT ON estados
    FOR EACH ROW
    BEGIN
        :NEW.std_id := seq_std.nextval;
    END;
/

CREATE SEQUENCE seq_cdd nocache;
CREATE TRIGGER tg_cdd_id
    BEFORE INSERT ON cidades
    FOR EACH ROW
    BEGIN
        :NEW.cdd_id := seq_cdd.nextval;
    END;
/

CREATE SEQUENCE seq_tcr nocache;
CREATE TRIGGER tg_tcr_id
    BEFORE INSERT ON tipos_de_crime 
    FOR EACH ROW
    BEGIN
        :NEW.tcr_id := seq_tcr.nextval;
    END;
/

CREATE SEQUENCE seq_tag nocache;
CREATE TRIGGER tg_tag_id
    BEFORE INSERT ON tipos_de_agencia 
    FOR EACH ROW
    BEGIN
        :NEW.tag_id := seq_tag.nextval;
    END;
/

CREATE SEQUENCE seq_agn nocache;
CREATE TRIGGER tg_agn_id
    BEFORE INSERT ON agencias
    FOR EACH ROW
    BEGIN
        :NEW.agn_id := seq_agn.nextval;
    END;
/

CREATE SEQUENCE seq_rac nocache;
CREATE TRIGGER tg_rac_id
    BEFORE INSERT ON racas 
    FOR EACH ROW
    BEGIN
        :NEW.rac_id := seq_rac.nextval;
    END;
/

CREATE SEQUENCE seq_etn nocache;
CREATE TRIGGER tg_etn_id
    BEFORE INSERT ON etnias 
    FOR EACH ROW
    BEGIN
        :NEW.etn_id := seq_etn.nextval;
    END;
/

CREATE SEQUENCE seq_vtm nocache;
CREATE TRIGGER tg_vtm_id
    BEFORE INSERT ON vitimas 
    FOR EACH ROW
    BEGIN
        :NEW.vtm_id := seq_vtm.nextval;
    END;
/

CREATE SEQUENCE seq_inf nocache;
CREATE TRIGGER tg_inf_id
    BEFORE INSERT ON infratores 
    FOR EACH ROW
    BEGIN
        :NEW.inf_id := seq_inf.nextval;
    END;
/

CREATE SEQUENCE seq_rel nocache;
CREATE TRIGGER tg_rel_id
    BEFORE INSERT ON relacionamentos 
    FOR EACH ROW
    BEGIN
        :NEW.rel_id := seq_rel.nextval;
    END;
/

CREATE SEQUENCE seq_hmc nocache;
CREATE TRIGGER tg_hmc_id
    BEFORE INSERT ON homicidios 
    FOR EACH ROW
    BEGIN
        :NEW.hmc_id := seq_hmc.nextval;
    END;
/

