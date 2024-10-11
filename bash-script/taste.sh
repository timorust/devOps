#!/bin/bash
echo "What you like test? (Spicy, Sweetie, Salty, Sour)"
read taste

case "$taste" in
  "Spicy")
    echo "Spicy!"
    ;;
  "Sweetie")
    echo "Sweete!"
    ;;
  "Salty")
    echo "NO! Salty!"
    ;;
  "Sour")
    echo "Sour"
    ;;
  *)
    echo "Not correct choice!"
    ;;
esac
