FROM continuumio/miniconda3:4.10.3p0-alpine

RUN pip install --upgrade pip
RUN pip install fair

RUN conda install jupyterlab
RUN apk add --no-cache git

COPY notebooks /home/notebooks

CMD jupyter lab --ip 0.0.0.0 --port=${PORT:=80} --no-browser --allow-root --notebook-dir=/home/notebooks
