CREATE TABLE mensagens (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  comentario TEXT NOT NULL,
  PRIMARY KEY (id)
);