/*
Scripts PL SQL utilizados na Video aula e Post do WebMundi.com
Enderecos:
Manipulacao de datas no Oracle
https://www.webmundi.com/banco-de-dados/oracle/manipulacao-de-datas-oracle/
--------------------------------------------------------------------------------------------
Comando SYSDATE 
Retorna a data e hora atuais do sistema operacional no qual o banco de dados esta localizado
*/
SELECT SYSDATE as "Data do Sistema" FROM DUAL;

/*
Funcaoo TO_CHAR () 
A funcao Oracle / PLSQL TO_CHAR converte um numero ou data em uma string.
Muito utilizada para formatar datas no Oracle
*/

SELECT TO_CHAR(SYSDATE, 'YEAR') as "Ano da Data do Sistema" FROM DUAL;

/*
-- Agora vamos utilizar o schema HR para exemplificar melhor a utilidade da funcao TO_CHAR()
Para desbloquear Usuario Schema HR (Schema de Exemplo) no Oracle Database 18c veja este tutorial:
https://www.webmundi.com/banco-de-dados/oracle/como-desbloquear-usuario-schema-hr-schema-de-exemplo-no-oracle-database-18c/
*/
-- Consulta usando TO_CHAR com parametro format_mask : MM = Retorna o numero representando o mes. Ex: 06
-- Ira Retornar funcionarios (employees) admitidos no mes (hire_date)  = 06

Select first_name, last_name, hire_date, TO_CHAR(hire_date,'MM') as MES_ADMISSAO from employees where TO_CHAR(hire_date,'MM') = '06';

-- Consulta usando TO_CHAR com parametro format_mask : MON = Retorna a abreviacao do mes, por exemplo �JUN�
-- Ira Retornar funcionarios (employees) admitidos no mes (hire_date)  = 06

Select first_name, last_name, hire_date, TO_CHAR(hire_date,'MON') as MES_ADMISSAO from employees where TO_CHAR(hire_date,'MM') = '06';

-- Consulta usando TO_CHAR com parametro format_mask : MONTH = Retorna o nome completo do mes, por exemplo �JUNHO�
-- Ira Retornar funcionarios (employees) admitidos no mes (hire_date)  = 06

Select first_name, last_name, hire_date, TO_CHAR(hire_date,'MONTH') as MES_ADMISSAO from employees where TO_CHAR(hire_date,'MM') = '06';

-- Consulta usando TO_CHAR com parametro format_mask : DD = retorna o dia da data informada como par�metro Ex.: 17
-- Ira Retornar funcionarios (employees) admitidos no mes (hire_date)  = 06

Select first_name, last_name, hire_date, TO_CHAR(hire_date,'DD') as DIA_ADMISSAO from employees where TO_CHAR(hire_date,'MM') = '06';

-- Consulta usando TO_CHAR com parametro format_mask : DY = retorna a abreviacao do dia da semana. Exemplo: SEG
-- Ira Retornar funcionarios (employees) admitidos no mes (hire_date)  = 06

Select first_name, last_name, hire_date, TO_CHAR(hire_date,'DY') as DIA_AB_ADMISSAO from employees where TO_CHAR(hire_date,'MM') = '06';

-- Consulta usando TO_CHAR com parametro format_mask : YYYY = retorna o ano com 4 digitos. Exemplo: 2004
-- Ira Retornar funcionarios (employees) admitidos no mes (hire_date)  = 06

Select first_name, last_name, hire_date, TO_CHAR(hire_date,'YYYY') as ANO_ADMISSAO from employees where TO_CHAR(hire_date,'MM') = '06';

-- Consulta usando TO_CHAR com parametro format_mask : YY = retorna os ultimos dois numeros do ano. Exemplo: 04
-- Ira Retornar funcionarios (employees) admitidos no mes (hire_date)  = 06

Select first_name, last_name, hire_date, TO_CHAR(hire_date,'YY') as ANO_ADMISSAO from employees where TO_CHAR(hire_date,'MM') = '06';

-- AM (ou PM) = retorna se a hora e de manha (AM) ou a tarde (PM).

select to_char(sysdate, 'AM') from dual;

--HH = retorna a hora (0 - 12)

select to_char(sysdate, 'HH') from dual;

--HH24 = retorna a hora formato 24 horas (0 - 24)

select to_char(sysdate, 'HH24') from dual;

--MI = retorna o minuto

select to_char(sysdate, 'MI') from dual;

--SS = retorna o segundo

select to_char(sysdate, 'SS') from dual;

-- Os formatos de data podem ser utilizados em conjuntos como por exemplo:

select to_char(sysdate, 'HH24:MI:SS') from dual

-- Exemplo de retorno : 16:19:18

-- Outro exemplo retornando a data no formato mais comum no Brasil.

select to_char(sysdate, 'DD/MM/YYYY HH24:MI:SS') from dual;

Select first_name, last_name, hire_date, TO_CHAR(hire_date,'DD/MM/YYYY HH24:MI:SS') as DT_COMPLETA_ADMISSAO from employees where TO_CHAR(hire_date,'MM') = '06';

