#!/bin/bash

read -p "Choose an option (1-6): " choice

case $choice in
  1)
  echo "1. Kilograms to Pounds"
    read -p "Enter weight in kilograms: " kg
    result=$(echo "$kg * 2.205" | bc -l)
    echo "$kg kilograms = $result pounds"
    ;;
  2)
  echo "2. Pounds to Kilograms"
    read -p "Enter weight in pounds: " lb
    result=$(echo "$lb / 2.205" | bc -l)
    echo "$lb pounds = $result kilograms"
    ;;
  3)
  echo "3. Meters to Miles"
    read -p "Enter distance in meters: " m
    result=$(echo "$m / 1609.34" | bc -l)
    echo "$m meters = $result miles"
    ;;
  4)
  echo "4. Miles to Meters"
    read -p "Enter distance in miles: " mi
    result=$(echo "$mi * 1609.34" | bc -l)
    echo "$mi miles = $result meters"
    ;;
  5)
  echo "5. Litres to Gallons"
    read -p "Enter volume in litres: " l
    result=$(echo "$l * 0.264172" | bc -l)
    echo "$l litres = $result gallons"
    ;;
  6)
   echo "6. Gallons to Litres"
    read -p "Enter volume in gallons: " g
    result=$(echo "$g / 0.264172" | bc -l)
    echo "$g gallons = $result litres"
    ;;
  *)
    echo "Invalid option. Please choose between 1 and 6 or Thank You."
    ;;
esac
