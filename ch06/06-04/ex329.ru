# filename: ex329.ru

PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX xl:  <http://www.w3.org/2008/05/skos-xl#>
PREFIX dc:  <http://purl.org/dc/elements/1.1/>

DELETE {
    ?concept skos:prefLabel ?labelString .
}
INSERT {
    ?newURI a   xl:Label ;
            xl:literalForm  ?labelString ;
            dc:source   ?dcSource .
    ?concept xl:prefLabel ?newURI .
}
WHERE {
    ?concept skos:prefLabel ?labelString .
    BIND (URI(CONCAT("http://learningsparql.com/ns/data#", ENCODE_FOR_URI(str(?labelString))))
    AS ?newURI)
    BIND (URI(CONCAT("http://en.wikipedia.org/wiki/", ENCODE_FOR_URI(str(?labelString))))
    AS ?dcSource)
}