# Better OBS

This project bundles a set of OBS add-ons to expand upon the software's default functionalities. Note that old versions of OBS might not work with these plugins.  
The add-on selection is the following:
* **[OBS VirtualCam](https://github.com/Fenrirthviti/obs-virtual-cam)** (2.0.5): Allows users to turn the OBS feed into a virtual camera.
* **[Move transition](https://github.com/exeldro/obs-move-transition)** (2.5.4): Fancy premade transitions for OBS.
* **[obs-asio](https://github.com/Andersama/obs-asio)** (3.1.0): Allows the use of ASIO sound devices within OBS.

To install, run the `setup.cmd` file from the **_setup_** folder as administrator or copy (and replace if needed) the **_bin_**, **_data_** and the **_obs-plugins_** folders to OBS Studio's location, which by default is located at:
```
C:\Program Files\obs-studio
```

If OBS is installed in a different folder then `setup.cmd` will not work as intended (it will not not install the plugins), in which case there are two main workaroungs:
  * Move the aforementioned folders to the pertinent location.
  * Modify the `Functions.psm1` file from the **_setup_** folder and edit the `$dir` variable with the pertinent location.