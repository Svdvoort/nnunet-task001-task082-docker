FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-runtime

RUN pip install \
    nnunet==1.7.0

RUN mkdir -p /nnUNet_raw_data_base/nnUNet_raw_data/
RUN mkdir /nnUNet_preprocessed/
RUN mkdir /nnUNet_trained_models/

ENV nnUNet_raw_data_base = "/nnUNet_raw_data_base/"
ENV nnUNet_preprocessed="/nnUNet_preprocessed/"
ENV RESULTS_FOLDER="/nnUNet_trained_models/"

RUN nnUNet_download_pretrained_model Task001_BrainTumour
RUN nnUNet_download_pretrained_model Task082_BraTS2020
