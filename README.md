# Merritt UI Locust Tests

This library is part of the [Merritt Preservation System](https://github.com/CDLUC3/mrt-doc).

## Purpose

This code enables load testing of the Merritt UI.

## Prerequisites

- Install pyenv
- Install python 3.12+ vi pyenv
- pip install locust
- pip install bs4

## To run as guest user

```
locust
```

## To run as a test user (use test credentials from SSM)

```
MERRITTUSER=user MERRITTPASS=pass locust
```