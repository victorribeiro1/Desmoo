DROP TABLE IF EXISTS respostas_dissertativas_pesquisas_de_campo;
CREATE TABLE IF NOT EXISTS respostas_dissertativas_pesquisas_de_campo (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_pergunta INT UNSIGNED NOT NULL,
    id_pesquisa_de_campo INT UNSIGNED NOT NULL,
    id_usuario INT UNSIGNED NOT NULL,

    conteudo TINYTEXT DEFAULT NULL,

    PRIMARY KEY (id),
    FOREIGN KEY (id_pergunta) REFERENCES perguntas_pesquisas_de_campo (id),
    FOREIGN KEY (id_pesquisa_de_campo) REFERENCES pesquisas_de_campo (id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id)
);