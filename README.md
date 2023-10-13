# t4gpd-docker

Docker image creation repository for the t4gpd plugin.

Thanks to [B. Beaucamp](https://github.com/bbeaucamp) for his very useful help.

## To test this Docker image, proceed as follows

### Clone the repository and move into the corresponding directory

> git clone https://github.com/thomas-leduc/t4gpd-docker.git

> cd t4gpd-docker

### Clone the image at first launch

- On MacOS or linux platforms:

> docker create --name t4gpd -p 8888:8888 -v "$(pwd)":/workspace ghcr.io/thomas-leduc/t4gpd-ed:0.8.0

- At Windows DOS prompt:

> docker create --name t4gpd -p 8888:8888 -v %cd%:/workspace ghcr.io/thomas-leduc/t4gpd-ed:0.8.0

- At Windows PowerShell prompt:

> docker create --name t4gpd -p 8888:8888 -v ${PWD}:/workspace ghcr.io/thomas-leduc/t4gpd-ed:0.8.0

### If you have already cloned the image, you just need to launch the corresponding container as follows

> docker start t4gpd -a

### To access the Jupyter server, open the url provided in console in a browser

> http://127.0.0.1:8888/lab?token=&lt;&lt;&lt; TOKEN NUMBER &gt;&gt;&gt;

### To stop the container, proceed as follows

> docker stop t4gpd
