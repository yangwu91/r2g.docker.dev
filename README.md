
# R2g Docker

![docker](https://img.shields.io/docker/cloud/build/yangwu91/r2g.docker.test?logo=docker&style=plastic) ![License](https://img.shields.io/github/license/yangwu91/r2g.alpha?logo=open-source-initiative&style=plastic)

<div align=center><img src="https://raw.githubusercontent.com/yangwu91/r2g.alpha/master/docs/icon.png" alt="icon"/></div>

### 

**R2g**, short for **reads to genes**, is a Python-based light-weight pipeline to find and assemble target homologous genes in species with poor genome assemblies or even without genome assemblies. Average personal computers without high-end specs nor tons of sequencing data stored can run it adequately. 

You can find source code of the r2g project [here](https://github.com/yangwu91/r2g).

This docker integrates required third-party applications and the r2g itself, which is easy and ready to go.

## Running the images
### Print detailed usages
```bash
docker run -it --dns 8.8.8.8 -v /dev/shm:/dev/shm -v /dir/to/your/folder:/opt/data yangwu91/r2g:latest --help
```
To avoid the applications crashing inside a docker container, the option `-v /dev/shm:/dev/shm` is recommended to be used, or tune the value `--shm-size=8g` in your specific cases.

In the command, the option `-v /dir/to/your/folder:/opt/data` will mount your folder `/dir/to/your/folder` onto the docker.

### An example command

```
docker run -it --shm-size=8g --dns 8.8.8.8 -v /dir/to/your/folder:/opt/data yangwu91/r2g:latest -o /opt/data/OUTPUT -s SRXNNNNNN -q /dir/to/your/folder/QUERY.fasta --cut 80,50 -p blastn
```
Finally, you can find the results in the folder `/dir/to/your/folder/OUTPUT`.