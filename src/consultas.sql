
--  Thiago 1 - Quantidade de homicidios por arma
SELECT COUNT(homicidios.hmc_id) AS qtd_homicidios, armas.arm_nome AS arma FROM homicidios
    INNER JOIN armas ON homicidios.hmc_arm_id = armas.arm_id
        GROUP BY arm_nome;

-- Thiago 2 - Tipo de arma mais utilizada por crime
SELECT
    arm_nome AS Arma,
    tcr_tipo AS Tipo_de_Crime
FROM
    tipos_de_crime
INNER JOIN
    homicidios ON tcr_id = homicidios.hmc_tcr_id
INNER JOIN
    armas ON hmc_arm_id = arm_id
GROUP BY
    arm_nome, tcr_tipo
HAVING
    COUNT(*) = (
        SELECT
            MAX(ocorrencias)
        FROM
            (SELECT
                arm_nome AS Arma,
                tcr_tipo AS Tipo_de_Crime,
                COUNT(*) AS ocorrencias
            FROM
                tipos_de_crime
            INNER JOIN
                homicidios ON tcr_id = homicidios.hmc_tcr_id
            INNER JOIN
                armas ON hmc_arm_id = arm_id
            GROUP BY
                arm_nome, tcr_tipo
            )
        WHERE
            Tipo_de_Crime = tcr_tipo
        GROUP BY
            Tipo_de_Crime
    )
ORDER BY
    Tipo_de_Crime;

-- Giovanna 1 - Quantidade de homicidios por tipo de homicidio
SELECT
    tcr_tipo AS Tipo_de_Crime,
    COUNT(*) AS Total_Ocorrencias
FROM
    homicidios
INNER JOIN
    tipos_de_crime ON hmc_tcr_id = tcr_id
GROUP BY
    tcr_tipo;

-- Giovanna 2 - Tipo de crime mais recorrente por estado
SELECT
    std_nome AS Estado,
    tcr_tipo AS Tipo_de_Crime_Mais_Recorrente
FROM
    estados
INNER JOIN
    cidades ON std_id = cdd_std_id
INNER JOIN
    homicidios ON cdd_id = hmc_cdd_id
INNER JOIN
    tipos_de_crime ON hmc_tcr_id = tcr_id
GROUP BY
    std_nome, tcr_tipo
HAVING
    COUNT(*) = (
        SELECT
            MAX(ocorrencias)
        FROM
            (SELECT
                std_nome AS Estado,
                tcr_tipo AS Tipo_de_Crime,
                COUNT(*) AS ocorrencias
            FROM
                estados
            INNER JOIN
                cidades ON std_id = cdd_std_id
            INNER JOIN
                homicidios ON cdd_id = hmc_cdd_id
            INNER JOIN
                tipos_de_crime ON hmc_tcr_id = tcr_id
            GROUP BY
                std_nome, tcr_tipo
            )
        WHERE
            Estado = std_nome
        GROUP BY
            Estado
    )
ORDER BY
    Estado;

-- Marcos 1 - Quantidade de homicidios por estado
SELECT COUNT(homicidios.hmc_id) AS qtd_homicidios, estados.std_nome AS estado FROM homicidios
        INNER join cidades ON homicidios.hmc_cdd_id = cidades.cdd_id
            INNER JOIN estados ON cidades.cdd_std_id = estados.std_id
                GROUP BY estado;

-- Marcos 2 - Tipo de crime mais recorrente por relacionamento
SELECT
    rel_relacao AS Relacao,
    tcr_tipo AS Tipo_de_Crime
FROM
    relacionamentos
INNER JOIN
    homicidios ON relacionamentos.rel_id = homicidios.hmc_rel_id
INNER JOIN
    tipos_de_crime ON hmc_tcr_id = tcr_id
GROUP BY
    rel_relacao, tcr_tipo
HAVING
    COUNT(*) = (
        SELECT
            MAX(ocorrencias)
        FROM
            (SELECT
                rel_relacao AS Relacao,
                tcr_tipo AS Tipo_de_Crime,
                COUNT(*) AS ocorrencias
            FROM
                relacionamentos
            INNER JOIN
                homicidios ON relacionamentos.rel_id = homicidios.hmc_rel_id
            INNER JOIN
                tipos_de_crime ON hmc_rel_id = tcr_id
            GROUP BY
                rel_relacao, tcr_tipo
            )
        WHERE
            Relacao = rel_relacao
        GROUP BY
            Relacao
    )
ORDER BY
    Relacao;

-- Phillip 1 - Quantidade de homicidios por raca do infrator e da vitima
SELECT raca_inf AS raca, qtd_infratores, qtd_vitimas FROM (
    SELECT DISTINCT racas.rac_nome AS raca_inf, racas.rac_id, COUNT(homicidios.hmc_inf_id) AS qtd_infratores from homicidios
        INNER JOIN infratores ON homicidios.hmc_inf_id = infratores.inf_id
            INNER JOIN racas ON infratores.inf_rac_id = racas.rac_id
            GROUP BY raca_inf
    ) inf, (
    SELECT DISTINCT racas.rac_nome AS raca_vtm, racas.rac_id, COUNT(homicidios.hmc_vtm_id) AS qtd_vitimas from homicidios
        INNER JOIN vitimas ON homicidios.hmc_vtm_id = vitimas.vtm_id
            INNER JOIN racas ON vitimas.vtm_rac_id = racas.rac_id
                GROUP BY raca_vtm
    ) vtm;
        -- WHERE inf.rac_id = vtm.rac_id;

-- Phillip 2 - Quantidade de vitimas por estado
SELECT DISTINCT estados.std_nome AS estado, COUNT(homicidios.hmc_vtm_id) AS qtd_vitimas FROM homicidios
    INNER JOIN cidades ON homicidios.hmc_cdd_id = cidades.cdd_id
        INNER JOIN estados ON cidades.cdd_std_id = estados.std_id
            GROUP BY estado;

