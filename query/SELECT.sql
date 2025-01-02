-- database: ../rexon_metals.db
SELECT
  *
FROM
  CUSTOMER;

/*  Selecionando todas as colunas */
SELECT
  *
FROM
  "CUSTOMER";

/*  Selecionando colunas específicas */
SELECT
  CUSTOMER_ID,
  NAME
FROM
  "CUSTOMER";

/*  Selecionando todas as colunas de produtos */
SELECT
  *
FROM
  "PRODUCT";

/*  Selecionando colunas e fazendo cálculos e retornando o valor com um alias, AS é a forma de dar um alias para a coluna */
SELECT
  PRODUCT_ID,
  DESCRIPTION,
  PRICE,
  PRICE * 1.07 AS TAXED_PRICE
FROM
  "PRODUCT";

/*  Colunas da tabela também podem ser renomeadas na consulta */
SELECT
  PRODUCT_ID,
  DESCRIPTION,
  PRICE AS UNTAXED_PRICE,
  PRICE * 1.07 AS TAXED_PRICE
FROM
  "PRODUCT";

/*  É possível arredondar o valor de um cálculo com a função round */
SELECT
  PRODUCT_ID,
  DESCRIPTION,
  PRICE AS UNTAXED_PRICE,
  round(PRICE * 1.07, 2) AS TAXED_PRICE
FROM
  "PRODUCT";

/*  O operador de concatenação || pode ser usado para concatenar strings */
SELECT
  NAME,
  CITY || ', ' || STATE AS LOCATION
FROM
  CUSTOMER;

/*  Concatenando vários campos */
SELECT
  NAME,
  STREET_ADDRESS || ' ' || CITY || ', ' || STATE || ' ' || ZIP AS FULL_ADDRESS
FROM
  CUSTOMER;
