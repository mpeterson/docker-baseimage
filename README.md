# mpeterson/base
## Features
  * Allow to override or add files to the image when building it.
  * UTF-8 (en_US.UTF-8)
  * APT Optimizations:
    * Allows HTTPS apt
    * Enabled Universe and Multiverse
    * Only download needed languages
    * Deletes apt cache after each install to mantain the image minimal
    * Speeds up DPKG by enabling ```force-unsafe-io```
  * Common used tools installed by default
  * CA Certificates installed

## Usage
```bash
sudo docker run -d mpeterson/base
```

### Override files
In the case that the user wants to add files or override them in the image it can be done stated on this section. This is particularly useful for example to add a cronjob or add certificates.

Since docker 0.10 removed the command ```docker insert``` the image needs to be built from source.

For this a folder ```overrides/``` inside the path ```image/``` can be created. All files from there will be copied to the root of the system. So, for example, putting the following file ```image/overrides/etc/ssl/certs/cloud.crt``` would result in that file being put on ```/etc/ssl/certs/cloud.crt``` on the final image.

After that just run ```sudo make``` and the image will be created.
