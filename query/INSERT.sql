-- database: ../surgetech_conference.db
/* Inserindo um valor */
INSERT INTO
  ATTENDEE (FIRST_NAME, LAST_NAME)
VALUES
  ('Emerson', 'Leite');

/* Inserindo varios valores */
INSERT INTO
  ATTENDEE (FIRST_NAME, LAST_NAME, PHONE, EMAIL, VIP)
VALUES
  (
    'Emerson',
    'Batista',
    41984056325,
    'e@gmail.com',
    0
  ),
  ('Mariana', 'Leite', 41984056326, 'm@gmail.com', 0),
  ('Stella', 'Barros', 41984056327, 's@gmail.com', 1);

/* A instrução abaixo retorna erro pois não existe um atendente da table ATTENDEE com ID 11  */
INSERT INTO
  COMPANY (NAME, DESCRIPTION, PRIMARY_CONTACT_ID)
VALUES
  ('Tabajara Company', 'A cool company', 11);

INSERT INTO
  COMPANY (NAME, DESCRIPTION, PRIMARY_CONTACT_ID)
VALUES
  ('Tabajara Company', 'A cool company', 7)
