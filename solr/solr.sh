#/bin/bash

echo "Init instalation Solr"

docker-compose up -d

docker cp filmscore/ solr_solr_1:/opt/solr/server/solr/mycores/

docker-compose exec -u root solr /bin/sh -c "chown -R solr.solr /opt/solr/server/solr/mycores/filmscore"

