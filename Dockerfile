ARG BASE_CONTAINER=jupyter/datascience-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Ryan Francis Eudy"

ARG PYTHON_VERSION=3.7

# install TensorFlow to ds notebook

# Install Tensorflow
RUN conda install --quiet --yes \
    'tensorflow==2.4.1' && \
    conda clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
