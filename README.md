# Merritt UI Locust Tests

This library is part of the [Merritt Preservation System](https://github.com/CDLUC3/mrt-doc).

## Purpose

This code enables load testing of the Merritt UI using [Locust](https://locust.io/)

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
```


## Automated Builds
See the [buildspec.yml](buildspec.yml) for an example of a scripted execution of this tool.