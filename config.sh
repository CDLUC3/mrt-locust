MS_LOGIN=8000
MS_RESP=2000
DURATION=2m

if [[ "$LOCUST_TEST_ENV" == "production" ]]
then
  MERRITTURL=https://merritt.cdlib.org
  SSMPATH=/uc3/mrt/dev/integ-tests/for-prod
  USERCOUNT=10
  ARKLIST=ark:/99999/fk4t16pn3j,ark:/99999/fk4xp8q22b
elif [[ "$LOCUST_TEST_ENV" == "preview" ]]
then
  MERRITTURL=https://uc3-mrt-preview-prd.cdlib.org
  SSMPATH=/uc3/mrt/dev/integ-tests/for-prod
  USERCOUNT=10
  ARKLIST=ark:/99999/fk4t16pn3j,ark:/99999/fk4xp8q22b
else
  MERRITTURL=https://merritt-stage.cdlib.org
  SSMPATH=/uc3/mrt/dev/integ-tests/for-stage
  USERCOUNT=6
  ARKLIST=ark:/99999/fk4fv08g3k
fi

if [[ "$LOCUST_MODE" == "readonly" ]]
then
  export MNEMONIC=merritt_demo_pub
  export TESTARKS=
else
  export MERRITTUSER=$(aws ssm get-parameter --name ${SSMPATH}/user --query Parameter.Value --output text)
  export MERRITTPASS=$(aws ssm get-parameter --name ${SSMPATH}/password --with-decryption --query Parameter.Value --output text)
  export MNEMONIC=merritt_demo
  export TESTARKS=$ARKLIST
fi

if [[ "$LOCUST_MODE" == "long" ]]
then
  USERCOUNT=$((USERCOUNT * 3))
  DURATION=10m
fi