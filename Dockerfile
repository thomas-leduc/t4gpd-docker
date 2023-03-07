FROM continuumio/miniconda3:22.11.1

WORKDIR /workspace

RUN conda config --env --add channels conda-forge
RUN conda config --env --set channel_priority strict

RUN conda install python=3.10 geopandas=0.12.2 jupyterlab matplotlib notebook scikit-learn xlrd openpyxl imageio rasterio networkx PyWavelets pysolar windrose geocube mapclassify seaborn plotly matplotlib-scalebar pyvista contextily xlwt

RUN pip install Dijkstar suntimes pythermalcomfort
RUN pip install t4gpd

EXPOSE 8888
CMD ["bash", "-c", "jupyter-lab --ip='*' --port=8888 --no-browser --allow-root"]
