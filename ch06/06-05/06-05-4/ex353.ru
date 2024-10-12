# filename: ex353.ru

PREFIX ab:  <http://learningsparql.com/ns/addressbook#>
PREFIX d:   <http://learningsparql.com/ns/data#>
PREFIX g:   <http://learningsparql.com/graphs/>

DROP GRAPH g:courses ;

INSERT DATA {
    GRAPH courses {
        d:course34 ab:courseTitle   "Modeling Data with RDFS and OWL" .
        d:course71  ab:courseTitle  "Enhancing Websites with RDFs" .
        d:course59  ab:courseTitle  "Using SPARQL with non-RDF Data" .
        d:course85  ab:courseTitle  "Updating Data with SPARQL" .
        d:course86 ab:courseTitle   "Querying and Updating Named Graphs" .
    }
}