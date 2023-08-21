## Tutorials 

### Reinstall Nvidia driver in case of an issue

1. Purge the driver
   ```bash
   sudo apt-get --purge remove "*cublas*" "cuda*" "nsight*"
   sudo apt-get --purge remove "*nvidia*"
   sudo rm -rf /usr/local/cuda*
   sudo apt purge cuda*
   sudo apt-get remove --purge nvidia\*
   sudo apt-get autoremove
   ```

2. Download .run file & Install New Driver, use "update all" in case of override question popping up 
   ```
   sudo sh cuda-*.run --override
   ```

3. Hold the driver to prevent issues with unattended upgrades
   ```bash
   sudo apt-mark hold nvidia-driver-<driver-version>
   ```
