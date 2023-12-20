# Python API

## Requirements

You can either install the requirements manually one by one or you can use the following command to
install all of it for you.

```bash
make requirements`
```

### List of requirements

* Python 3 `https://www.python.org/downloads/`
* PyEnv `https://pyenv.run`
* Pip-tools `https://github.com/jazzband/pip-tools`

## Commands

```bash
make requirements # Optional, to install project requirements
make setup # Setup project with dependencies and etc...
make run # Run project
make install dep=<dependency name> # Install a new python dependency
make uninstall dep=<dependency name> # Uninstall dependency
make clean # Clean up project
```

## Environment variables

Create an `.env` in the root path, you can copy the sample `.env.development` file for it.