# Views

## Número de incidentes por ano

```sql
CREATE
OR REPLACE VIEW incidentes_por_ano AS
SELECT
  TO_CHAR (hmc_data_incidente, 'YYYY') AS Ano,
  COUNT(*) AS "Número de incidentes"
FROM
  homicidios
GROUP BY
  TO_CHAR (hmc_data_incidente, 'YYYY');
```

## Quantidade de homicídios por tipo de relacionamento

```sql
CREATE
OR REPLACE VIEW quantidade_de_homicidos_por_relacionamento AS
SELECT
  COUNT(*) AS "Número de homicídios",
  rel_relacao AS "Relacionamento"
FROM
  homicidios
  JOIN relacionamentos ON homicidios.hmc_rel_id = relacionamentos.rel_id
GROUP BY
  rel_relacao;
```

## Raças mais comumente assassinadas

```sql
CREATE
OR REPLACE VIEW racas_mais_assassinadas AS
SELECT
  rac_nome AS "Raça",
  COUNT(*) AS "Número de homicídios"
FROM
  homicidios
  JOIN vitimas ON homicidios.hmc_vtm_id = vitimas.vtm_id
  JOIN racas ON vitimas.vtm_rac_id = racas.rac_id
GROUP BY
  rac_nome
ORDER BY
  COUNT(*) DESC;
```

## Idades mais comuns entre assassinos

```sql
CREATE
OR REPLACE VIEW idades_mais_comuns_entre_assassinos AS
SELECT
  inf_idade AS "Idade",
  COUNT(*) AS "Número de homicídios"
FROM
  homicidios
  JOIN infratores ON homicidios.hmc_inf_id = infratores.inf_id
GROUP BY
  inf_idade
ORDER BY
  COUNT(*) DESC;

```

# Materialized views

!TODO
