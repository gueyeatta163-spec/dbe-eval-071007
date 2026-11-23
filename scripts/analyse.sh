#!/bin/bash
# Analyse des logs
echo "Usage: ./scripts/analyse.sh --top 5"
echo "Exemple: ./scripts/analyse.sh --top 5"

par_heure() {
  echo "=== Requetes par heure ===" >> rapport.txt
  grep -o "[0-9][0-9]:" logs.txt | sort | uniq -c >> rapport.txt
}
par_heure
