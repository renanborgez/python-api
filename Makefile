# Makefile for Python project

# Define minimum Python interpreter
PYTHON = python3

# Define virtual environment directory
VENV_DIR = .venv

# Define venv Python interpreter
VENV_PYTHON = $(VENV_DIR)/bin/python3

# Define project dependencies
DEPENDENCIES = dependencies.txt

# Target: Install dev requirements
requirements:
	@echo "Installing requirements..."
	sh requirements.sh

# Target: Set up the virtual environment and install all dependencies
setup:
	$(PYTHON) -m venv $(VENV_DIR)
	. $(VENV_DIR)/bin/activate
	$(VENV_PYTHON) -m pip install -r $(DEPENDENCIES)

# Target: Install a specific dependency and update requirements.txt
install:
	@echo "Installing $(dependency)..."
	$(VENV_PYTHON) -m pip install $(dependency)
	$(VENV_PYTHON) -m pip freeze > $(DEPENDENCIES)
	@echo "$(dependency) installed and added to $(DEPENDENCIES)"

uninstall:
	@echo "Uninstalling $(dependency)..."
	pip-autoremove $(dependency) -y

# Target: Run the Python project
run:
	$(PYTHON) src/app.py

# Target: Clean up
clean:
	rm -rf $(VENV_DIR)
	find . -name "*.pyc" -exec rm -f {} \;

# Phony targets
.PHONY: setup install uninstall run clean
