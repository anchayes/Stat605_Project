#!/bin/bash 

header=$(head -n 1 itineraries1.csv)

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "ATL") {print $0} }'| cut -d, -f9,13,14,15,25 |
awk -F, '{ if ($1 == "True") {print $0} }'> airports/ATL2.csv

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "DFW") {print $0} }'| cut -d, -f9,13,14,15,25 |
awk -F, '{ if ($1 == "True") {print $0} }'> airports/DFW2.csv

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "DEN") {print $0} }'| cut -d, -f9,13,14,15,25 |
awk -F, '{ if ($1 == "True") {print $0} }'> airports/DEN2.csv

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "ORD") {print $0} }'| cut -d, -f9,13,14,15,25 |
awk -F, '{ if ($1 == "True") {print $0} }'> airports/ORD2.csv

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "LAX") {print $0} }'| cut -d, -f9,13,14,15,25 |
awk -F, '{ if ($1 == "True") {print $0} }'> airports/LAX2.csv

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "CLT") {print $0} }'| cut -d, -f9,13,14,15,25 |
awk -F, '{ if ($1 == "True") {print $0} }' > airports/CLT2.csv

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "MIA") {print $0} }'| cut -d, -f9,13,14,15,25 |
awk -F, '{ if ($1 == "True") {print $0} }' > airports/MIA2.csv

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "JFK") {print $0} }'| cut -d, -f9,13,14,15,25|
awk -F, '{ if ($1 == "True") {print $0} }' > airports/JFK2.csv

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "EWR") {print $0} }'| cut -d, -f9,13,14,15,25 |
awk -F, '{ if ($1 == "True") {print $0} }' > airports/EWR2.csv

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "SFO") {print $0} }'| cut -d, -f9,13,14,15,25 |
awk -F, '{ if ($1 == "True") {print $0} }'> airports/SFO2.csv

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "DTW") {print $0} }'| cut -d, -f9,13,14,15,25 |
awk -F, '{ if ($1 == "True") {print $0} }'> airports/DTW2.csv

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "BOS") {print $0} }'| cut -d, -f9,13,14,15,25 | 
awk -F, '{ if ($1 == "True") {print $0} }' > airports/BOS2.csv

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "PHL") {print $0} }'| cut -d, -f9,13,14,15,25 |
awk -F, '{ if ($1 == "True") {print $0} }' > airports/PHL2.csv

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "LGA") {print $0} }'| cut -d, -f9,13,14,15,25 |
awk -F, '{ if ($1 == "True") {print $0} }' > airports/LGA2.csv

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "IAD") {print $0} }'| cut -d, -f9,13,14,15,25 |
awk -F, '{ if ($1 == "True") {print $0} }' > airports/IAD2.csv

cat itineraries1.csv |
tail -n +2|
awk -F, '{ if ($4 == "OAK") {print $0} }'| cut -d, -f9,13,14,15,25 |
awk -F, '{ if ($1 == "True") {print $0} }' > airports/OAK2.csv

#ATL, DFW, DEN, ORD, LAX, CLT, MIA, JFK, EWR, SFO, DTW, BOS, PHL, LGA, IAD, OAK.
