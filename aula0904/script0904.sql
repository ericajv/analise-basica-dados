use empregados_db;
/*Operadores baseados em funções matematicas*/
select avg(salario) as media_renda from empregado where sexo='F';
select avg(salario) as media_renda from empregado where sexo='M';
select max(salario) as maior_renda, min(salario) as menor_renda from empregado where sexo='f';
select max(salario) as maior_renda, min(salario) as menor_renda from empregado where sexo='m';
select (max(salario)-min(salario)) as inter_renda from empregado where sexo='f';
select (max(salario)-min(salario)) as inter_renda from empregado where sexo='m';
select sum(salario) as total_renda from empregado where sexo='f';
select sum(salario) as total_renda from empregado where sexo='m';

/*Funçoes de Formatação e Padronização */
select nome as EMPREGADOS, salario as RENDA, format((salario * 0.12 ), 2) as INSS, format((salario * 0.15),2) as IRPF from empregado;

/*Funçao handomica*/

select char_length(nome) as TAMANHO_NOME, (char_length(nome) + (rand() * char_length(nome)) * cod_emp) as ID_ALEATORIO from empregado;

/*Retirando letras de string*/
select 
	replace(nome, "A", "") as NOME_MODIFICADO,
    char_length(replace(nome, "A", "")) as TAMANHO_NOME, 
    (char_length(replace(nome, "A", "")) + (rand() * char_length(replace(nome, "A", ""))) * cod_emp) as ID_ALEATORIO
from empregado;
    



