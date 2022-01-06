CREATE TABLE customer
(
    id    BIGINT NOT NULL,
    name  VARCHAR(255),
    email VARCHAR(255),
    CONSTRAINT pk_customer PRIMARY KEY (id)
);

CREATE TABLE product
(
    id          BIGINT NOT NULL,
    name        VARCHAR(255),
    qty         INTEGER,
    price       DOUBLE PRECISION,
    customer_id BIGINT,
    CONSTRAINT pk_product PRIMARY KEY (id)
);

ALTER TABLE product
    ADD CONSTRAINT FK_PRODUCT_ON_CUSTOMER FOREIGN KEY (customer_id) REFERENCES customer (id);