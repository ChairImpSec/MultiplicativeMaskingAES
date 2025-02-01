# One More Motivation to Use Evaluation Tools<br>  This Time for Hardware Multiplicative Masking of AES

This repository contains the source code and results related to the article titled [*One More Motivation to Use Evaluation Tools, This Time for Hardware Multiplicative Masking of AES*](www.empty.com).

## Short Description

This work focuses on the security evaluation of the CHES 2018 paper titled [*Multiplicative Masking for AES in Hardware*](https://tches.iacr.org/index.php/TCHES/article/view/7282). Using the [PROLEAD tool](https://github.com/ChairImpSec/PROLEAD), we analyzed vulnerabilities in the Kronecker delta function under the glitch-extended and glitch + transition-extended probing models. Our findings revealed critical leakage caused by randomness optimization. To address this, we proposed and validated optimized solutions to ensure first-order security.

This repository provides the implementation the proposed designs, evaluation scripts, and PROLEAD's results supporting our conclusions.

## Repository Structure

There are two main folders in this repository:

### **Sbox_d1**  
This folder contains the first-order implementation of the AES Sbox in three sub-folders:  
1. **Original form**: The original implementation of the proposed Sbox from [*Multiplicative Masking for AES in Hardware*](https://tches.iacr.org/index.php/TCHES/article/view/7282).  
2. **Glitch-robust**: The Sbox structure with the proposed randomness optimization, ensuring no leakage under the glitch-extended probing model.  
3. **Glitch- and transition-robust**: The Sbox structure with the proposed randomness optimization, ensuring no leakage under both glitch-extended and transition-extended probing models.  

### **Kronecker_d2**  
This folder contains the first-order implementation of the Kronecker delta function with the proposed randomness optimization. Based on the PROLEAD report, this implementation exhibits no leakage.

## Contact and Support

For questions or comments, please contact **Hemin Rahimi** at [rahimihemin@gmail.com](mailto:rahimihemin@gmail.com).

## Publication

[*One More Motivation to Use Evaluation Tools, This Time for Hardware Multiplicative Masking of AES*](www.empty.com).
