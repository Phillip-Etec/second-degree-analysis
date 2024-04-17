
CREATE TABLE harmas (
    arm_id NUMBER(10),
    arm_nome VARCHAR(24),
    arm_data_alteracao DATETIME
);

CREATE TABLE hestados (
    std_id NUMBER(10),
    std_nome VARCHAR(18),
    std_data_alteracao DATETIME
);

CREATE TABLE hcidades (
    cdd_id NUMBER(10),
    cdd_nome VARCHAR(18),
    cdd_std_id NUMBER(10),
    cdd_data_alteracao DATETIME
);

CREATE TABLE htipos_de_crime (
    tcr_id NUMBER(10),
    tcr_tipo VARCHAR(24),
    tcr_data_alteracao DATETIME
);

CREATE TABLE htipos_de_agencia (
    tag_id NUMBER(10),
    tag_tipo VARCHAR(24),
    tag_data_alteracao DATETIME
);

CREATE TABLE hagencias (
    agn_id NUMBER(10),
    agn_cod CHAR(7),
    agn_nome VARCHAR(24),
    agn_tag_id NUMBER(10),
    agn_data_alteracao DATETIME
);

CREATE TABLE hracas (
    rac_id NUMBER(10),
    rac_nome VARCHAR(18),
    rac_data_alteracao DATETIME
);

CREATE TABLE hetnias (
    etn_id NUMBER(10),
    etn_nome VARCHAR(24),
    etn_data_alteracao DATETIME
);

CREATE TABLE hvitimas (
    vtm_id NUMBER(10),
    vtm_sexo CHAR(6),
    vtm_idade NUMBER(3),
    vtm_rac_id NUMBER(10),
    vtm_etn_id NUMBER(10),
    vtm_data_alteracao DATETIME
);

CREATE TABLE hinfratores (
    inf_id NUMBER(10),
    inf_sexo CHAR(6),
    inf_idade NUMBER(3),
    inf_rac_id NUMBER(10),
    inf_etn_id NUMBER(10),
    inf_data_alteracao DATETIME
);

CREATE TABLE hrelacionamentos (
    rel_id NUMBER(10),
    rel_relacao VARCHAR(32),
    rel_data_alteracao DATETIME
);

CREATE TABLE hhomicidios (
    hmc_id NUMBER(10),
    hmc_recorde CHAR(6),
    hmc_qtd_infratores NUMBER(2),
    hmc_solucao VARCHAR(3),
    hmc_data_incidente DATE,
    hmc_sol_id NUMBER(10),
    hmc_agn_id NUMBER(10),
    hmc_vtm_id NUMBER(10),
    hmc_inf_id NUMBER(10),
    hmc_tcr_id NUMBER(10),
    hmc_arm_id NUMBER(10),
    hmc_cdd_id NUMBER(10),
    hmc_rel_id NUMBER(10),
    hmc_data_alteracao DATETIME
);

