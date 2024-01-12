# amd64 or arm64
ARG arch=amd64

FROM --platform=linux/${arch} continuumio/miniconda3:22.11.1

WORKDIR /workspace

# ===== Install via CONDA =====
RUN conda install -y --channel=conda-forge --strict-channel-priority \
	contextily \
	geocube \
	geopandas==0.12.2 \
	imageio \
	jupyterlab \
	mapclassify \
	matplotlib \
	matplotlib-scalebar \
	meshio \
	networkx \
	notebook \
	openpyxl \
	plotly \
	pvlib \
	pysolar \
	python==3.10 \
	pyvista \
	pywavelets \
	rasterio \
	scikit-learn \
	scipy \
	seaborn \
	windrose \
	xlrd \
	xlwt \
	&& conda clean -ya

# ===== Install via PIP =====
RUN pip3 install -U --no-cache-dir \
	dijkstar \
	pythermalcomfort \
	suntimes

# ===== Install apt =====
RUN apt update && \
	apt install -y \
		ffmpeg \
		libfontconfig1 \
		libgl1-mesa-glx \
		libsm6 \
		libxext6 \
		libxrender1 \
		xvfb

# ===== Install t4gpd =====
# COPY ./t4gpd-0.8.0.tar.gz /workspace
# RUN pip install t4gpd-0.8.0.tar.gz
# RUN rm --force t4gpd-0.8.0.tar.gz

RUN pip3 install -U --no-cache-dir t4gpd==0.8.0

# ===== Check =====
# CMD python -c "import t4gpd; print(f'Version de t4gpd : {t4gpd.__version__}')"
# CMD [ "/bin/bash" ]

EXPOSE 8888
CMD ["bash", "-c", "jupyter-lab --ip='*' --port=8888 --no-browser --allow-root"]
