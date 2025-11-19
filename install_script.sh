#!/bin/bash
# Complete installation script for unified IDP analysis environment
# Handles GitHub dependencies correctly

echo "=========================================="
echo "Creating IDP Analysis Environment"
echo "=========================================="

# Step 1: Create conda environment with base packages
echo "Step 1: Creating base conda environment..."
conda create -n idp_analysis python=3.9 -y

# Activate the environment
eval "$(conda shell.bash hook)"
conda activate idp_analysis

# Step 2: Install core scientific packages
echo "Step 2: Installing scientific packages..."
conda install -c conda-forge numpy=1.23.5 pandas=1.5.3 scipy=1.10.1 matplotlib=3.7.1 seaborn=0.12.2 jupyter openpyxl -y

# Step 3: Install GitHub dependencies in correct order
echo "Step 3: Installing nardini (localCIDER dependency)..."
pip install git+https://github.com/mshinn23/nardini.git

echo "Step 4: Installing parrot (SPARROW dependency)..."
pip install git+https://github.com/idptools/parrot.git

echo "Step 5: Installing localCIDER..."
pip install localcider

echo "Step 6: Installing SPARROW..."
pip install git+https://github.com/idptools/sparrow.git

# Step 8: Verify installations
echo ""
echo "=========================================="
echo "Verifying installations..."
echo "=========================================="

python -c "from localcider.sequenceParameters import SequenceParameters; print('✓ localCIDER installed successfully')" && \
python -c "from sparrow import Protein; print('✓ SPARROW installed successfully')" && \

echo "To activate this environment, run:"
echo "  conda activate idp_analysis"
echo ""
echo "To test the unified analysis script:"
echo "  python unified_IDP_analysis.py"
echo ""
