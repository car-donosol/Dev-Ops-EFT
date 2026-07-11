USE ventas_db;

CREATE TABLE IF NOT EXISTS venta (
    id_venta         BIGINT       NOT NULL AUTO_INCREMENT,
    direccion_compra VARCHAR(255) NOT NULL,
    valor_compra     INT          NOT NULL,
    fecha_compra     DATE         NOT NULL,
    despacho_generado BIT(1)      DEFAULT 0,
    PRIMARY KEY (id_venta)
) ENGINE=InnoDB;

INSERT INTO venta (direccion_compra, valor_compra, fecha_compra, despacho_generado) VALUES
('Av. Libertador Bernardo O''Higgins 1234, Santiago',       250000, '2026-07-01', 1),
('Calle Pedro Montt 567, Valparaíso',                       180000, '2026-07-02', 1),
('Av. Colón 890, Concepción',                               320000, '2026-07-03', 0),
('Av. Valparaíso 1456, Viña del Mar',                       95000,  '2026-07-05', 0),
('Calle Caupolicán 789, Temuco',                            210000, '2026-07-07', 0);
