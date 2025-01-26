-- database: ../surgetech_conference.db
/* Atualizando registros (todos), mudando emails para CAIXA ALTA */
UPDATE ATTENDEE
SET
  EMAIL = upper(EMAIL);

/* Atualizando vários campos */
UPDATE ATTENDEE
set
  FIRST_NAME = upper(first_name),
  LAST_NAME = upper(LAST_NAME);

/* Atualixando registros com WHERE */
UPDATE ATTENDEE
SET
  FIRST_NAME = lower(FIRST_NAME)
WHERE
  FIRST_NAME = 'EMERSON'
