
DROP TABLE homicidios;
DROP TABLE relacionamentos;
DROP TABLE infratores;
DROP TABLE vitimas;
DROP TABLE etnias;
DROP TABLE racas;
DROP TABLE agencias;
DROP TABLE tipos_de_agencia;
DROP TABLE tipos_de_crime;
DROP TABLE cidades;
DROP TABLE estados;
DROP TABLE armas;

CREATE TABLE armas (
    arm_id NUMBER(10) NOT NULL,
    arm_nome VARCHAR(24) NOT NULL
);

CREATE TABLE estados (
    std_id NUMBER(10) NOT NULL,
    std_nome VARCHAR(18) NOT NULL
);

CREATE TABLE cidades (
    cdd_id NUMBER(10) NOT NULL,
    cdd_nome VARCHAR(18) NOT NULL,
    cdd_std_id NUMBER(10) NOT NULL
);

CREATE TABLE tipos_de_crime (
    tcr_id NUMBER(10) NOT NULL,
    tcr_tipo VARCHAR(24) NOT NULL
);

CREATE TABLE tipos_de_agencia (
    tag_id NUMBER(10) NOT NULL,
    tag_tipo VARCHAR(24) NOT NULL
);

CREATE TABLE agencias (
    agn_id NUMBER(10) NOT NULL,
    agn_cod CHAR(7) NOT NULL,
    agn_nome VARCHAR(24) NOT NULL,
    agn_tag_id NUMBER(10) NOT NULL
);

CREATE TABLE racas (
    rac_id NUMBER(10) NOT NULL,
    rac_nome VARCHAR(18) NOT NULL
);

CREATE TABLE etnias (
    etn_id NUMBER(10) NOT NULL,
    etn_nome VARCHAR(24) NOT NULL
);

CREATE TABLE vitimas (
    vtm_id NUMBER(10) NOT NULL,
    vtm_sexo CHAR(6),
    vtm_idade NUMBER(3) NOT NULL,
    vtm_rac_id NUMBER(10) NOT NULL,
    vtm_etn_id NUMBER(10) NOT NULL
);
--arrumar isso depois
ALTER TABLE vitimas ADD CONSTRAINT delimita_sexo CHECK (vtm_sexo IN ("Male", "Female"));

CREATE TABLE infratores (
    inf_id NUMBER(10) NOT NULL,
    inf_sexo CHAR(6),
    inf_idade NUMBER(3) NOT NULL,
    inf_rac_id NUMBER(10) NOT NULL,
    inf_etn_id NUMBER(10) NOT NULL
);

--arrumar isso tbm
ALTER TABLE infratores ADD CONSTRAINT delimita_sexo CHECK (inf_sexo IN ("Male", "Female"));

CREATE TABLE relacionamentos (
    rel_id NUMBER(10) NOT NULL,
    rel_relacao VARCHAR(32)
);

CREATE TABLE homicidios (
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
    hmc_rel_id NUMBER(10) NOT NULL
);

-- Pk's
ALTER TABLE armas ADD CONSTRAINT armas_id GENERATED ALWAYS AS IDENTITY(arm_id) ;
ALTER TABLE armas ADD CONSTRAINT pk_arm PRIMARY KEY (arm_id);

ALTER TABLE estados ADD CONSTRAINT estados_id GENERATED ALWAYS AS IDENTITY(std_id) ;
ALTER TABLE estados ADD CONSTRAINT pk_std PRIMARY KEY (std_id);

ALTER TABLE cidades ADD CONSTRAINT cidades_id GENERATED ALWAYS AS IDENTITY(cdd_id ) ;
ALTER TABLE cidades ADD CONSTRAINT pk_cdd PRIMARY KEY (cdd_id);

ALTER TABLE tipos_de_crime ADD CONSTRAINT tipos_de_crime_id GENERATED ALWAYS AS IDENTITY(tcr_id ) ;
ALTER TABLE tipos_de_crime ADD CONSTRAINT pk_tcr PRIMARY KEY (tcr_id);

ALTER TABLE tipos_de_agencia ADD CONSTRAINT tipos_de_agencia_id GENERATED ALWAYS AS IDENTITY(tag_id ) ;
ALTER TABLE tipos_de_agencia ADD CONSTRAINT pk_tag PRIMARY KEY (tag_id);

ALTER TABLE agencias ADD CONSTRAINT agencias_id GENERATED ALWAYS AS IDENTITY(agn_id ) ;
ALTER TABLE agencias ADD CONSTRAINT pk_agn PRIMARY KEY (agn_id);

ALTER TABLE racas ADD CONSTRAINT racas_id GENERATED ALWAYS AS IDENTITY(rac_id ) ;
ALTER TABLE racas ADD CONSTRAINT pk_racas PRIMARY KEY (rac_id);

ALTER TABLE etnias ADD CONSTRAINT etnias_id GENERATED ALWAYS AS IDENTITY(etn_id ) ;
ALTER TABLE etnias ADD CONSTRAINT pk_etnias PRIMARY KEY (etn_id);

ALTER TABLE vitimas ADD CONSTRAINT vitimas_id GENERATED ALWAYS AS IDENTITY(vtm_id ) ;
ALTER TABLE vitimas ADD CONSTRAINT pk_vtm PRIMARY KEY (vtm_id);

ALTER TABLE infratores ADD CONSTRAINT pk_inf PRIMARY KEY (inf_id);

ALTER TABLE relacionamentos ADD CONSTRAINT relacionamentos_id GENERATED ALWAYS AS IDENTITY(rel_id ) ;
ALTER TABLE relacionamentos ADD CONSTRAINT pk_rel PRIMARY KEY (rel_id);

ALTER TABLE solucoes ADD CONSTRAINT solucoes_id GENERATED ALWAYS AS IDENTITY(sol_id ) ;
ALTER TABLE solucoes ADD CONSTRAINT pk_sol PRIMARY KEY (sol_id);

ALTER TABLE homicidios ADD CONSTRAINT homicidios_id GENERATED ALWAYS AS IDENTITY(hmc_id ) ;
ALTER TABLE homicidios ADD CONSTRAINT pk_hmc PRIMARY KEY (hmc_id);

-- Fk's
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

