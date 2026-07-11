USE despachos_db;

CREATE TABLE IF NOT EXISTS despacho (
    id_despacho      BIGINT       NOT NULL AUTO_INCREMENT,
    fecha_despacho   DATE,
    patente_camion   VARCHAR(255),
    intento          INT,
    id_compra        BIGINT,
    direccion_compra VARCHAR(255),
    valor_compra     BIGINT,
    despachado       BIT(1)       DEFAULT 0,
    PRIMARY KEY (id_despacho)
) ENGINE=InnoDB;

INSERT INTO despacho (fecha_despacho, patente_camion, intento, id_compra, direccion_compra, valor_compra, despachado) VALUES
('2026-07-03', 'ABCD-12', 1, 1, 'Av. Libertador Bernardo O''Higgins 1234, Santiago',  250000, 1),
('2026-07-04', 'EFGH-34', 1, 2, 'Calle Pedro Montt 567, Valparaíso',                  180000, 1),
('2026-07-08', 'IJKL-56', 1, 3, 'Av. Colón 890, Concepción',                          320000, 0);
