#!/bin/sh
sudo apt install vim 
sudo apt install openssh-server 
wget https://repo.anaconda.com/archive/Anaconda3-2024.10-1-Linux-x86_64.sh
sh Anaconda3-2024.10-1-Linux-x86_64.sh -b

# Set your conda installation path here
CONDA_PATH="$HOME/anaconda3"

# The initialization block to add
INIT_BLOCK="
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup=\"\$('$CONDA_PATH/bin/conda' 'shell.bash' 'hook' 2> /dev/null)\"
if [ \$? -eq 0 ]; then
    eval \"\$__conda_setup\"
else
    if [ -f \"$CONDA_PATH/etc/profile.d/conda.sh\" ]; then
        . \"$CONDA_PATH/etc/profile.d/conda.sh\"
    else
        export PATH=\"$CONDA_PATH/bin:\$PATH\"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
"

echo "$INIT_BLOCK" >> "$HOME/.bashrc"
echo "Conda initialization block added to ~/.bashrc"


sudo apt install git
wget https://developer.download.nvidia.com/compute/cuda/12.1.0/local_installers/cuda_12.1.0_530.30.02_linux.run
sudo sh cuda_12.1.0_530.30.02_linux.run

wget https://developer.download.nvidia.com/compute/cuda/12.6.0/local_installers/cuda_12.6.0_560.28.03_linux.run
sudo sh cuda_12.6.0_560.28.03_linux.run

