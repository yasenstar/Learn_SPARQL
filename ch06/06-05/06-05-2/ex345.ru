# filename: ex345.ru

PREFIX  d:  <http://learningsparql.com/ns/data#>
PREFIX  dm: <http://learningsparql.com/ns/demo#>

INSERT {
    GRAPH d:g4 {
        ?s  dm:tag  "sever", "eight" .
    }
}
USING NAMED d:g3
WHERE {
    GRAPH d:g3 {
        ?s dm:tag   "five" .
        ?s dm:tag   "six" .
    }
}