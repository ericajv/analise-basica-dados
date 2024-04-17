use empregados_db;
select * from empregado where cod_depto in(2, 4, 6);
select * from departamento;
select * from departamento where cod_depto %2 =0 ;
select cod_depto from departamento where cod_depto %2 = 0 ;
/*Extração de SubQuerry*/
select * from empregado where cod_depto in(
select cod_depto from departamento where cod_depto <4
);
/*Calculo com datas*/

select *, (format((datediff(now(), dt_nascimento)/365),0)-1) as idade from dependente;
SELECT *, FLOOR(DATEDIFF(NOW(), dt_nascimento) / 365) AS idade FROM dependente;

/*Empregados com filhos menores de 10 anos*/
select * from empregado where cod_emp in(
select cod_emp from dependente where (FLOOR(DATEDIFF(NOW(), dt_nascimento) / 365)<10) 
);



