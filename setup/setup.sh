#!/bin/sh
# create directory to store virtual environment setup
mkdir -p $HOME/github/venv

# create a python venv
python3 -m venv $HOME/github/venv/data_warehouse_project

# activate virtual environment
source $HOME/github/venv/data_warehouse_project/bin/activate

# install dbt package
pip install $(cat requirements.txt | grep "dbt-bigquery==")
