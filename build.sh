#!/usr/bin/env bash

python3 generate_table.py
pytest test_generate_table.py -v