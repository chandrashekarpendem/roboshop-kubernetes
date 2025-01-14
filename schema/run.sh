source /parameters-store/params
mkdir /code
cd /code
git clone https://github.com/chandrashekarpendem/$COMPONENT.git .
if [ $? -ne 0 ] ; then
  echo clone failed
  exit 1
fi

cd /code/schema
if [ $SCHEMA_TYPE == "mongodb" ]; then
  curl -L -o  rds-combined-ca-bundle.pem  https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem

  mongo --ssl --host ${DOCDB_ENDPOINT} --sslCAFile rds-combined-ca-bundle.pem --username ${DOCDB_USER} --password ${DOCDB_PASS} < /code/schema/$COMPONENT.js
elif [ $SCHEMA_TYPE == "mysql" ]; then
  mysql -h${DB_HOST} -u${DB_USER} -p${DB_PASS} < /code/schema/${COMPONENT}.sql
fi