CREATE TABLE armas (
    arm_nome VARCHAR(24) NOT NULL
);

CREATE TABLE estados (
    std_nome VARCHAR(18) NOT NULL
);

CREATE TABLE cidades (
    cdd_nome VARCHAR(18) NOT NULL,
    cdd_std_id NUMBER(10) NOT NULL
);

CREATE TABLE tipos_de_crime (
    tcr_tipo VARCHAR(24) NOT NULL
);

CREATE TABLE tipos_de_agencia (
    tag_tipo VARCHAR(24) NOT NULL
);

CREATE TABLE agencias (
    agn_cod CHAR(7) NOT NULL,
    agn_nome VARCHAR(24) NOT NULL,
    agn_tag_id NUMBER(10) NOT NULL
);

CREATE TABLE racas (
    rac_nome VARCHAR(18) NOT NULL
);

CREATE TABLE etnias (
    etn_nome VARCHAR(24) NOT NULL
);

CREATE TABLE vitimas (
    vtm_sexo CHAR(6),
    vtm_idade NUMBER(3) NOT NULL,
    vtm_rac_id NUMBER(10) NOT NULL,
    vtm_etn_id NUMBER(10) NOT NULL
);

CREATE TABLE infratores (
    inf_sexo CHAR(6),
    inf_idade NUMBER(3) NOT NULL,
    inf_rac_id NUMBER(10) NOT NULL,
    inf_etn_id NUMBER(10) NOT NULL
);

CREATE TABLE relacionamentos (
    rel_relacao VARCHAR(32)
);

CREATE TABLE homicidios (
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
    hmc_rel_id NUMBER(10) NOT NULL
);
