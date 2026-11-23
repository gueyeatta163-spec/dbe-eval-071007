#!/bin/bash
# Analyse des logs
echo "Usage: ./scripts/analyse.sh --top 5"
echo "Exemple: ./scripts/analyse.sh --top 5"

par_heure() {
  echo "=== Requetes par heure ===" >> rapport.txt
  cut -d" " -f2 logs.txt | cut -d: -f1 | sort | uniq -c >> rapport.txt
}
par_heure
