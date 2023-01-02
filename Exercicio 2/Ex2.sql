CREATE OR REPLACE VIEW enumerar_faculdades_1telefone AS
SELECT 
   i.nome_instituicap, COUNT(t.numero) AS "qt.Telefones"
FROM
    instituicao i
        JOIN
    telefone t ON i.id_inst = t.inst_id
GROUP BY i.id_inst
HAVING COUNT(t.numero) = 1;