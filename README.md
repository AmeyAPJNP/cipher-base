# Cipher Base

 - Creator: Akhil Nair <Akhil.Nair@amey.co.uk>
 - Maintainer: Akhil Nair <Akhil.Nair@amey.co.uk>

**WARNING: This is a public repo!**

This is a public repository houses the `Dockerfile` for the `Cipher`, installing only open source requirements.

The image is based from `AkhilNairAmey/sparklyr-docker`, an open source image for `sparklyr` and `rstudio-server`.

The installed requirements in `cipher-base` include:
 - `pip`: Python package manager
   - Installed python packages are found in `requirements.txt`
 - `docker-machine`: Resource provisioner and manager
 - `awscli`: Amazon Web Services command line interface
 - R dependencies (versioning and install method liable to change)
