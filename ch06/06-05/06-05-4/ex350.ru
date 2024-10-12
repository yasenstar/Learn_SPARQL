# filename: ex348.ru

PREFIX  d:  <http://learningsparql.com/ns/data#>

WITH d:g2
DELETE {
    ?s ?p "cinco" .
}
INSERT {
    ?s ?p "five" .
}
WHERE {
    ?s ?p "cinco" .
}