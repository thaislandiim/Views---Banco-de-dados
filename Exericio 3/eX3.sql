CREATE OR REPLACE VIEW cidades_de_cada_faculdade AS 
SELECT e.cidade, COUNT(i.id_inst) AS "qt.Faculdades"
FROM endereco e
JOIN instituicao i ON e.id_inst = i.id_inst
GROUP BY e.cidade;

SELECT * FROM cidades_de_cada_faculdade;