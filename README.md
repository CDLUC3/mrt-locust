# Merritt UI Locust Tests

This library is part of the [Merritt Preservation System](https://github.com/CDLUC3/mrt-doc).

## Purpose

This code enables load testing of the Merritt UI.

## Prerequisites

- Install pyenv
- Install python 3.12+ using pyenv
- pip install locust
- pip install bs4

## To run as guest user

```
locust
```

## To run as a test user (use test credentials from SSM)

```
export MERRITTUSER=$(aws ssm get-parameter --name /uc3/mrt/dev/integ-tests/for-stage/user --query Parameter.Value --output text)
export MERRITTPASS=$(aws ssm get-parameter --name /uc3/mrt/dev/integ-tests/for-stage/password --with-decryption --query Parameter.Value --output text)
locust
locust --headless -u 10 -t 1m -H https://merritt-stage.cdlib.org --only-summary -L ERROR --csv out.csv --reset-stats --json > out.json
jq .[] | select(.num_failures>0) | {name: .name, fail: .num_failures}
```


## Prod Default
```
export MERRITTUSER=$(aws ssm get-parameter --name /uc3/mrt/dev/integ-tests/for-prod/user --query Parameter.Value --output text)
export MERRITTPASS=$(aws ssm get-parameter --name /uc3/mrt/dev/integ-tests/for-prod/password --with-decryption --query Parameter.Value --output text)
locust
```

Login: 1.459 / 9.6
Choose: 1.75 / 5.4


## Readonly 
```
export MERRITTUSER=$(aws ssm get-parameter --name /uc3/mrt/dev/integ-tests/for-prod/user-ro --query Parameter.Value --output text)
export MERRITTPASS=$(aws ssm get-parameter --name /uc3/mrt/dev/integ-tests/for-prod/password-ro --with-decryption --query Parameter.Value --output text)
locust
```

Login: 2.8 / 15.0
Choose: 1.7 / 15.0