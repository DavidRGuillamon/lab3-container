#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH -o RESULTADOS.txt
#SBATCH -J LAB3_DRG
#SBATCH --chdir=/home/alumno15/lab3-container
#SBATCH --error=ERRORES_DRG_LAB3
#SBATCH --mail-type=END
#SBATCH --mail-user=d.ruizguillamon@um.es

echo "Ejecutando script k-mer13 en Python."
(time ./data/k-mer13.py) 2>&1
echo "======================================="
echo "======================================="
echo "Ejecutando script k-mer13 en C++."
(time ./data/k-mer13) 2>&1
echo "======================================="
echo "======================================="
echo "Ejecutando script k-mer14 en Python."
(time ./data/k-mer14.py) 2>&1
echo "======================================="
echo "======================================="
echo "Ejecutando script k-mer14 en C++."
(time ./data/k-mer14) 2>&1
echo "======================================="
echo "Trabajo terminado." 
