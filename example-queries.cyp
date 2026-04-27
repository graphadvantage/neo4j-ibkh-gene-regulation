// find genes in common between lupus and macular degeneration
MATCH p=(d1:Disease WHERE d1.name CONTAINS "lupus")-[:ASSOCIATED_WITH]->(g:Gene)
      <-[:ASSOCIATED_WITH]-(d2:Disease WHERE d2.name CONTAINS "macular degen")
RETURN p

// find the ones that are impacted by Hydroxychloroquine (common prescription for SLE due by Rhuematologists)
MATCH p=(d1:Disease WHERE d1.name CONTAINS "lupus")-[:ASSOCIATED_WITH]->(g:Gene)
      <-[:ASSOCIATED_WITH]-(d2:Disease WHERE d2.name CONTAINS "macular degen")
    , p2=(d1)<-[:TREATS]-(dr:Drug WHERE dr.name STARTS WITH "Hydroxychloroquine")-[]-(g)
RETURN p, p2

// find alternative medications that are not linked to macular degeneration
MATCH p=(dr:Drug)-[:TREATS]->(disease:Disease WHERE disease.name="systemic lupus erythematosus")
WHERE NOT EXISTS {MATCH (dr)-[]->(g:Gene)<-[:ASSOCIATED_WITH]-(d2:Disease WHERE d2.name CONTAINS "macular degen")}
RETURN dr.name LIMIT 100