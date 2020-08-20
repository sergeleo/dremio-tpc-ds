#!/bin/bash

WORKERS='twenty2'

echo "First Run"

./jmeter -n -t ~/DremioTestPlanTPC-DS-metadatarefresh.jmx

./jmeter -n -t ~/DremioTestPlanTPC-DS.jmx

mv DremioSummary-tpc-ds.csv 'DremioSummary-tpc-ds-'$WORKERS'-workers-first.csv'

echo "Second Run"

./jmeter -n -t ~/DremioTestPlanTPC-DS.jmx

mv DremioSummary-tpc-ds.csv 'DremioSummary-tpc-ds-'$WORKERS'-workers-second.csv'

echo "Done"
