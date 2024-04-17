
CREATE TABLE harmas (
    arm_id NUMBER(10) NOT NULL,
    arm_nome VARCHAR(24) NOT NULL,
    arm_data_alteracao DATETIME
);

CREATE TABLE hestados (
    std_id NUMBER(10) NOT NULL,
    std_nome VARCHAR(18) NOT NULL,
    std_data_alteracao DATETIME
);

CREATE TABLE hcidades (
    cdd_id NUMBER(10) NOT NULL,
    cdd_nome VARCHAR(18) NOT NULL,
    cdd_std_id NUMBER(10) NOT NULL,
    cdd_data_alteracao DATETIME
);

CREATE TABLE htipos_de_crime (
    tcr_id NUMBER(10) NOT NULL,
    tcr_tipo VARCHAR(24) NOT NULL,
    tcr_data_alteracao DATETIME
);

CREATE TABLE htipos_de_agencia (
    tag_id NUMBER(10) NOT NULL,
    tag_tipo VARCHAR(24) NOT NULL,
    tag_data_alteracao DATETIME
);

CREATE TABLE hagencias (
    agn_id NUMBER(10) NOT NULL,
    agn_cod CHAR(7) NOT NULL,
    agn_nome VARCHAR(24) NOT NULL,
    agn_tag_id NUMBER(10) NOT NULL,
    agn_data_alteracao DATETIME
);

CREATE TABLE hracas (
    rac_id NUMBER(10) NOT NULL,
    rac_nome VARCHAR(18) NOT NULL,
    rac_data_alteracao DATETIME
);

CREATE TABLE hetnias (
    etn_id NUMBER(10) NOT NULL,
    etn_nome VARCHAR(24) NOT NULL,
    etn_data_alteracao DATETIME
);

CREATE TABLE hvitimas (
    vtm_id NUMBER(10) NOT NULL,
    vtm_sexo CHAR(6),
    vtm_idade NUMBER(3) NOT NULL,
    vtm_rac_id NUMBER(10) NOT NULL,
    vtm_etn_id NUMBER(10) NOT NULL,
    vtm_data_alteracao DATETIME
);

CREATE TABLE hinfratores (
    inf_id NUMBER(10) NOT NULL,
    inf_sexo CHAR(6),
    inf_idade NUMBER(3) NOT NULL,
    inf_rac_id NUMBER(10) NOT NULL,
    inf_etn_id NUMBER(10) NOT NULL,
    inf_data_alteracao DATETIME
);

CREATE TABLE hrelacionamentos (
    rel_id NUMBER(10) NOT NULL,
    rel_relacao VARCHAR(32),
    rel_data_alteracao DATETIME
);

CREATE TABLE hhomicidios (
    hmc_id NUMBER(10) NOT NULL,
    hmc_recorde CHAR(6) NOT NULL,
    hmc_qtd_infratores NUMBER(2) NOT NULL,
    hmc_solucao VARCHAR(3),
    hmc_data_incidente DATE NOT NULL,
    hmc_sol_id NUMBER(10) NOT NULL,
    hmc_agn_id NUMBER(10) NOT NULL,
    hmc_vtm_id NUMBER(10) NOT NULL,
    hmc_inf_id NUMBER(10) NOT NULL,
    hmc_tcr_id NUMBER(10) NOT NULL,
    hmc_arm_id NUMBER(10) NOT NULL,
    hmc_cdd_id NUMBER(10) NOT NULL,
    hmc_rel_id NUMBER(10) NOT NULL,
    hmc_data_alteracao DATETIME
);

