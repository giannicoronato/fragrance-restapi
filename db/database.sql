CREATE DATABASE IF NOT EXISTS companydb;

USE companydb;

CREATE TABLE fragrance (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(55) NOT NULL,
    brand VARCHAR(55) NOT NULL,
    image VARCHAR(255) DEFAULT NULL,
    description VARCHAR(255) DEFAULT NULL,
    accords VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (id)
);

DESCRIBE fragrance;

INSERT INTO fragrance VALUES
    (1, 'Acqua di Gio', 'Giorgio Armani', 'https://fraguru.com/mdimg/perfume/375x500.410.jpg', 'Fragancia fresca y acuática para hombres.', 'Cítricos, Marino, Madera de Cedro'),
    (2, 'Invictus', 'Paco Rabanne', 'https://fraguru.com/mdimg/perfume/375x500.18471.jpg', 'Fragancia energética y victoriosa para hombres.', 'Cítricos, Madera, Amaderado'),
    (3, 'Bleu de Chanel', 'Chanel', 'https://fraguru.com/mdimg/perfume/375x500.9099.jpg', 'Fragancia elegante y sofisticada para hombres.', 'Cítricos, Aromático, Amaderado'),
    (4, 'Le Male', 'Jean Paul Gaultier', 'https://fraguru.com/mdimg/perfume/375x500.11358.jpg', 'Fragancia audaz y seductora para hombres.', 'Lavanda, Vainilla, Amaderado'),
    (5, 'Aventus', 'Creed', 'https://fimgs.net/mdimg/perfume/375x500.9828.jpg', 'Fragancia poderosa y exótica para hombres.', 'Frutales, Cuero, Amaderado'),
    (6, 'The One for Men', 'Dolce & Gabbana', 'https://fraguru.com/mdimg/perfume/375x500.2056.jpg', 'Fragancia elegante y seductora para hombres.', 'Especias, Tabaco, Amaderado'),
    (7, 'Sauvage', 'Dior', 'https://fraguru.com/mdimg/perfume/375x500.31861.jpg', 'Fragancia salvaje y enérgica para hombres.', 'Cítricos, Aromático, Amaderado'),
    (8, 'Eros', 'Versace', 'https://fimgs.net/mdimg/perfume/375x500.70090.jpg', 'Fragancia intensa y apasionada para hombres.', 'Menta, Vainilla, Amaderado'),
    (9, '1 Million', 'Paco Rabanne', 'https://fraguru.com/mdimg/perfume/375x500.3747.jpg', 'Fragancia lujosa y seductora para hombres.', 'Cítricos, Especias, Cuero'),
    (10, 'Boss Bottled', 'Hugo Boss', 'https://fraguru.com/mdimg/perfume/375x500.383.jpg', 'Fragancia clásica y sofisticada para hombres.', 'Manzana, Canela, Amaderado'),
    (11, 'Dior Homme', 'Dior', 'https://fraguru.com/mdimg/perfume/375x500.13015.jpg', 'Fragancia elegante y moderna para hombres.', 'Lavanda, Cuero, Amaderado'),
    (12, 'Armani Code', 'Giorgio Armani', 'https://fraguru.com/mdimg/perfume/375x500.412.jpg', 'Fragancia seductora y misteriosa para hombres.', 'Cítricos, Aromático, Cuero'),
    (13, 'Chanel Allure Homme', 'Chanel', 'https://fraguru.com/mdimg/perfume/375x500.523.jpg', 'Fragancia sofisticada y versátil para hombres.', 'Cítricos, Aromático, Amaderado'),
    (14, 'Dolce & Gabbana Pour Homme', 'Dolce & Gabbana', 'https://fraguru.com/mdimg/perfume/375x500.15336.jpg', 'Fragancia clásica y masculina para hombres.', 'Cítricos, Lavanda, Amaderado'),
    (15, 'Gucci Guilty', 'Gucci', 'https://fraguru.com/mdimg/perfume/375x500.11037.jpg', 'Fragancia audaz y provocativa para hombres.', 'Cítricos, Aromático, Amaderado');
