ALTER TABLE vitimas
ADD CONSTRAINT delimita_sexo_vtm
CHECK (vtm_sexo IN ('Male', 'Female', 'Unknown'));

ALTER TABLE infratores
ADD CONSTRAINT delimita_sexo_inf
CHECK (inf_sexo IN ('Male', 'Female', 'Unknown'));
