CREATE (:Vet {id: 2, first_name: 'Helen', last_name: 'Leary'});
CREATE (:Vet {id: 3, first_name: 'Linda', last_name: 'Douglas'});
CREATE (:Vet {id: 4, first_name: 'Rafael', last_name: 'Ortega'});
CREATE (:Vet {id: 5, first_name: 'Henry', last_name: 'Stevens'});
CREATE (:Vet {id: 6, first_name: 'Sharon', last_name: 'Jenkins'});

CREATE (:Specialty {id: 2, name: 'radiology'});
CREATE (:Specialty {id: 3, name: 'dentistry'});

MATCH (v:Vet {id: 2}), (s:Specialty {id: 1})
CREATE (v)-[:HAS_SPECIALTY]->(s);

MATCH (v:Vet {id: 3}), (s:Specialty {id: 2})
CREATE (v)-[:HAS_SPECIALTY]->(s);

MATCH (v:Vet {id: 3}), (s:Specialty {id: 3})
CREATE (v)-[:HAS_SPECIALTY]->(s);

MATCH (v:Vet {id: 4}), (s:Specialty {id: 2})
CREATE (v)-[:HAS_SPECIALTY]->(s);

MATCH (v:Vet {id: 5}), (s:Specialty {id: 1})
CREATE (v)-[:HAS_SPECIALTY]->(s);


CREATE (:Type {id: 2, name: 'dog'});
CREATE (:Type {id: 3, name: 'lizard'});
CREATE (:Type {id: 4, name: 'snake'});
CREATE (:Type {id: 5, name: 'bird'});
CREATE (:Type {id: 6, name: 'hamster'});

CREATE (:Owner {id: 2, first_name: 'Betty', last_name: 'Davis', address: '638 Cardinal Ave.', city: 'Sun Prairie', telephone: '6085551749'});
CREATE (:Owner {id: 3, first_name: 'Eduardo', last_name: 'Rodriquez', address: '2693 Commerce St.', city: 'McFarland', telephone: '6085558763'});
CREATE (:Owner {id: 4, first_name: 'Harold', last_name: 'Davis', address: '563 Friendly St.', city: 'Windsor', telephone: '6085553198'});
CREATE (:Owner {id: 5, first_name: 'Peter', last_name: 'McTavish', address: '2387 S. Fair Way', city: 'Madison', telephone: '6085552765'});
CREATE (:Owner {id: 6, first_name: 'Jean', last_name: 'Coleman', address: '105 N. Lake St.', city: 'Monona', telephone: '6085552654'});
CREATE (:Owner {id: 7, first_name: 'Jeff', last_name: 'Black', address: '1450 Oak Blvd.', city: 'Monona', telephone: '6085555387'});
CREATE (:Owner {id: 8, first_name: 'Maria', last_name: 'Escobito', address: '345 Maple St.', city: 'Madison', telephone: '6085557683'});
CREATE (:Owner {id: 9, first_name: 'David', last_name: 'Schroeder', address: '2749 Blackhawk Trail', city: 'Madison', telephone: '6085559435'});
CREATE (:Owner {id: 10, first_name: 'Carlos', last_name: 'Estaban', address: '2335 Independence La.', city: 'Waunakee', telephone: '6085555487'});



CREATE (:Pet {id: 2, name: 'Basil', birth_date: date('2002-08-06')});
MATCH (o:Owner {id: 2}), (t:Type {id: 6}), (p:Pet {id: 2})
CREATE (o)-[:OWNS]->(p)
CREATE (p)-[:HAS_TYPE]->(t);

CREATE (:Pet {id: 3, name: 'Rosy', birth_date: date('2001-04-17')});
MATCH (o:Owner {id: 3}), (t:Type {id: 2}), (p:Pet {id: 3})
CREATE (o)-[:OWNS]->(p)
CREATE (p)-[:HAS_TYPE]->(t);

CREATE (:Pet {id: 4, name: 'Jewel', birth_date: date('2000-03-07')});
MATCH (o:Owner {id: 3}), (t:Type {id: 2}), (p:Pet {id: 4})
CREATE (o)-[:OWNS]->(p)
CREATE (p)-[:HAS_TYPE]->(t);

CREATE (:Pet {id: 5, name: 'Iggy', birth_date: date('2000-11-30')});
MATCH (o:Owner {id: 4}), (t:Type {id: 3}), (p:Pet {id: 5})
CREATE (o)-[:OWNS]->(p)
CREATE (p)-[:HAS_TYPE]->(t);

CREATE (:Pet {id: 6, name: 'George', birth_date: date('2000-01-20')});
MATCH (o:Owner {id: 5}), (t:Type {id: 4}), (p:Pet {id: 6})
CREATE (o)-[:OWNS]->(p)
CREATE (p)-[:HAS_TYPE]->(t);

CREATE (:Pet {id: 7, name: 'Samantha', birth_date: date('1995-09-04')});
MATCH (o:Owner {id: 6}), (t:Type {id: 2}), (p:Pet {id: 7})
CREATE (o)-[:OWNS]->(p)
CREATE (p)-[:HAS_TYPE]->(t);

CREATE (:Pet {id: 8, name: 'Max', birth_date: date('1995-09-04')});
MATCH (o:Owner {id: 6}), (t:Type {id: 5}), (p:Pet {id: 8})
CREATE (o)-[:OWNS]->(p)
CREATE (p)-[:HAS_TYPE]->(t);

CREATE (:Pet {id: 9, name: 'Lucky', birth_date: date('1999-08-06')});
MATCH (o:Owner {id: 7}), (t:Type {id: 5}), (p:Pet {id: 9})
CREATE (o)-[:OWNS]->(p)
CREATE (p)-[:HAS_TYPE]->(t);

CREATE (:Pet {id: 10, name: 'Mulligan', birth_date: date('1997-02-24')});
MATCH (o:Owner {id: 8}), (t:Type {id: 2}), (p:Pet {id: 10})
CREATE (o)-[:OWNS]->(p)
CREATE (p)-[:HAS_TYPE]->(t);

CREATE (:Pet {id: 11, name: 'Freddy', birth_date: date('2000-03-09')});
MATCH (o:Owner {id: 9}), (t:Type {id: 5}), (p:Pet {id: 11})
CREATE (o)-[:OWNS]->(p)
CREATE (p)-[:HAS_TYPE]->(t);

CREATE (:Pet {id: 12, name: 'Lucky', birth_date: date('2000-06-24')});
MATCH (o:Owner {id: 10}), (t:Type {id: 2}), (p:Pet {id: 12})
CREATE (o)-[:OWNS]->(p)
CREATE (p)-[:HAS_TYPE]->(t);

CREATE (:Pet {id: 13, name: 'Sly', birth_date: date('2002-06-08')});
MATCH (o:Owner {id: 10}), (t:Type {id: 3}), (p:Pet {id: 13})
CREATE (o)-[:OWNS]->(p)
CREATE (p)-[:HAS_TYPE]->(t);

