#!/usr/bin/env py3

from pprint import pprint
import sys

pprint(sys.version_info)

import psycopg2
import dbt.main

if __name__ == "__main__":
    pprint(sys.version)
    dbt.main.main()