# t4gpd-docker
Docker image creation repository for the t4gpd plugin

# To test this Docker image, proceed as follows

## Clone the image at first launch

- On MacOS or linux platforms:

> docker create --name t4gpd -p 8888:8888 -v "$(pwd)":/workspace ghcr.io/thomas-leduc/t4gpd-ed:0.5.0

- At Windows / DOS prompt:

> docker create --name t4gpd -p 8888:8888 -v %cd%:/workspace ghcr.io/thomas-leduc/t4gpd-ed:0.5.0

- At Windows powershell prompt:

> docker create --name t4gpd -p 8888:8888 -v ${PWD}:/workspace ghcr.io/thomas-leduc/t4gpd-ed:0.5.0

## If you have already cloned the image, you just need to launch the corresponding container as follows:

> docker start t4gpd -a

## To stop the container, proceed as follows:

> docker stop t4gpd
