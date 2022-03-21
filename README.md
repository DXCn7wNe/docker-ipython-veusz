# Docker Veusz with IPython 

## Overview
Start visualization a scientific plot with "Veusz" using "docker compose".
The image used in this repo is "ubuntu:20.04".

## How to use this image
```bash
docker compose run --rm app [ipython3|veusz]
```
or
```bash
docker compose up -d
docker compose exec app [ipython3|veusz]
```
