CREATE (:Vet {id: 1, first_name: 'John', last_name: 'Doe'});
CREATE (:Specialty {id: 1, name: 'Surgery'});

MATCH (v:Vet {id: 1}), (s:Specialty {id: 1})
CREATE (v)-[:HAS_SPECIALTY]->(s);

CREATE (:Type {id: 1, name: 'Dog'});
CREATE (:Owner {id: 1, first_name: 'Jane', last_name: 'Smith', address: '123 Main St', city: 'Metropolis', telephone: '555-1234'});
CREATE (:Pet {id: 1, name: 'Buddy', birth_date: date('2020-01-01')});

MATCH (o:Owner {id: 1}), (t:Type {id: 1}), (p:Pet {id: 1})
CREATE (o)-[:OWNS]->(p)
CREATE (p)-[:HAS_TYPE]->(t);

CREATE (:Visit {id: 1, visit_date: date('2024-09-01'), description: 'Routine checkup'});
MATCH (p:Pet {id: 1}), (v:Visit {id: 1})
CREATE (p)-[:HAS_VISIT]->(v);
