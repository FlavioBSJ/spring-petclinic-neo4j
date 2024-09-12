CREATE CONSTRAINT FOR (v:Vet) REQUIRE v.id IS UNIQUE;
CREATE INDEX FOR (v:Vet) ON (v.last_name);

CREATE CONSTRAINT FOR (s:Specialty) REQUIRE s.id IS UNIQUE;
CREATE INDEX FOR (s:Specialty) ON (s.name);

CREATE CONSTRAINT FOR (t:Type) REQUIRE t.id IS UNIQUE;
CREATE INDEX FOR (t:Type) ON (t.name);

CREATE CONSTRAINT FOR (o:Owner) REQUIRE o.id IS UNIQUE;
CREATE INDEX FOR (o:Owner) ON (o.last_name);

CREATE CONSTRAINT FOR (p:Pet) REQUIRE p.id IS UNIQUE;
CREATE INDEX FOR (p:Pet) ON (p.name);

CREATE CONSTRAINT FOR (v:Visit) REQUIRE v.id IS UNIQUE;
