#!/bin/bash
# Analyse des logs
echo "Usage: ./scripts/analyse.sh --top 5"

par_heure() {
  echo "=== Requetes par heure ===" >> rapport.txt
