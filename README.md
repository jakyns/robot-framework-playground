# Robot Framework Playground
---

## Dependencies

- Python 3.7.x or higher
- [Pipfile](https://github.com/pypa/pipfile)
- [geckodriver](https://github.com/mozilla/geckodriver) or
  [chromedriver](https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver)
  

## Installation

Initiate virtual environment and generate Pipfile and Pipfile.lock by running:

```sh
pipenv lock
```

Install dependencies and get into virtual environment.

```sh
pipenv install && pipenv shell
```

## Run test suite


```sh
robot tests/*
```
