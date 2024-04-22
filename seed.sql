DROP TABLE IF EXISTS pets;
CREATE TABLE IF NOT EXISTS pets (
    id SERIAL NOT NULL,
    name VARCHAR NOT NULL,
    species VARCHAR NOT NULL,
    photo_url VARCHAR,
    age INTEGER,
    notes VARCHAR,
    available BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (1, 'Ford', 'Black kite', null, 1, 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', true);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (2, 'Porsche', 'Possum, pygmy', 'http://dummyimage.com/220x100.png/dddddd/000000', null, 'Sed accumsan felis. Ut at dolor quis odio consequat varius.', true);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (3, 'Cadillac', 'Vervet monkey', 'http://dummyimage.com/140x100.png/dddddd/000000', 1, null, false);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (4, 'Mitsubishi', 'Wallaby, red-necked', 'http://dummyimage.com/209x100.png/cc0000/ffffff', 7, 'Pellentesque eget nunc.', false);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (5, 'Buick', 'Silver-backed jackal', 'http://dummyimage.com/135x100.png/dddddd/000000', 4, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', false);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (6, 'Cadillac', 'Southern ground hornbill', 'http://dummyimage.com/242x100.png/cc0000/ffffff', 8, 'Praesent id massa id nisl venenatis lacinia.', false);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (7, 'Dodge', 'Racer snake', 'http://dummyimage.com/239x100.png/dddddd/000000', null, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', false);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (8, 'Toyota', 'Pied butcher bird', 'http://dummyimage.com/148x100.png/5fa2dd/ffffff', 9, 'Duis consequat dui nec nisi volutpat eleifend.', true);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (9, 'Mazda', 'Wallaby, red-necked', 'http://dummyimage.com/234x100.png/dddddd/000000', 2, 'Phasellus in felis.', true);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (10, 'Honda', 'Blesbok', null, 10, 'In quis justo.', false);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (11, 'Buick', 'Grouse, greater sage', null, null, null, true);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (12, 'Lexus', 'Roan antelope', 'http://dummyimage.com/176x100.png/5fa2dd/ffffff', 2, null, false);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (13, 'Geo', 'Crane, wattled', 'http://dummyimage.com/240x100.png/5fa2dd/ffffff', null, 'Quisque id justo sit amet sapien dignissim vestibulum.', true);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (14, 'BMW', 'Quoll, spotted-tailed', 'http://dummyimage.com/211x100.png/dddddd/000000', 8, 'Etiam vel augue. Vestibulum rutrum rutrum neque.', false);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (15, 'Nissan', 'Great egret', 'http://dummyimage.com/235x100.png/5fa2dd/ffffff', 6, 'Morbi a ipsum. Integer a nibh.', false);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (16, 'Mazda', 'Otter, oriental short-clawed', 'http://dummyimage.com/201x100.png/ff4444/ffffff', 8, null, true);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (17, 'Dodge', 'Vulture, king', 'http://dummyimage.com/172x100.png/5fa2dd/ffffff', null, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', false);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (18, 'Dodge', 'Flightless cormorant', 'http://dummyimage.com/132x100.png/ff4444/ffffff', 6, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', true);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (19, 'Nissan', 'King vulture', 'http://dummyimage.com/105x100.png/ff4444/ffffff', 7, null, false);
INSERT INTO pets (id, name, species, photo_url, age, notes, available) VALUES (20, 'GMC', 'Tiger snake', 'http://dummyimage.com/110x100.png/ff4444/ffffff', 10, null, false);