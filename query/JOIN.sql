-- database: ../rexon_metals.db
SELECT
  *
FROM
  CUSTOMER;

SELECT
  *
FROM
  CUSTOMER_ORDER;

/* Unindo duas tabelas com INNER JOIN */
/* Com INNER JOIN só são exibidos registros comuns às tabelas */
SELECT
  order_id,
  customer.customer_id,
  order_date,
  ship_date,
  name,
  street_address,
  city,
  state,
  zip,
  product_id,
  order_qty
FROM
  CUSTOMER
  INNER JOIN CUSTOMER_ORDER ON CUSTOMER.CUSTOMER_ID = CUSTOMER_ORDER.CUSTOMER_ID;

/* Unindo duas tabelas com LEFT JOIN */
/* Com LEFT JOIN são exibidos todos os registros, mesmo que não haja ocorrências em comum  */
SELECT
  order_id,
  customer.customer_id,
  order_date,
  ship_date,
  name,
  street_address,
  city,
  state,
  zip,
  product_id,
  order_qty
FROM
  CUSTOMER
  LEFT JOIN CUSTOMER_ORDER ON CUSTOMER.CUSTOMER_ID = CUSTOMER_ORDER.CUSTOMER_ID;

/* Agregrando a tabela PRODUCT */
SELECT
  order_id,
  customer.customer_id,
  order_date,
  ship_date,
  name AS customer_name,
  street_address,
  city,
  state,
  zip,
  CUSTOMER_ORDER.product_id,
  description,
  order_qty,
  order_qty * price AS revenue
FROM
  CUSTOMER
  LEFT JOIN CUSTOMER_ORDER ON CUSTOMER.CUSTOMER_ID = CUSTOMER_ORDER.CUSTOMER_ID
  LEFT JOIN PRODUCT ON CUSTOMER_ORDER.PRODUCT_ID = PRODUCT.PRODUCT_ID;

/* Fazendo uma seleção mais simples e somando valores de total de compra por consumidor */
SELECT
  CUSTOMER.CUSTOMER_ID AS customer_id,
  name AS customer_name,
  coalesce(sum(order_qty * price), 0) AS total_revenue
FROM
  CUSTOMER
  LEFT JOIN CUSTOMER_ORDER ON CUSTOMER.CUSTOMER_ID = CUSTOMER_ORDER.CUSTOMER_ID
  LEFT JOIN PRODUCT ON CUSTOMER_ORDER.PRODUCT_ID = PRODUCT.PRODUCT_ID
GROUP BY
  1,
  2
ORDER BY
  3 DESC;