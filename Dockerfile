FROM pytorch/pytorch:2.2.0-cuda11.8-cudnn8-devel

RUN pip install jupyter ipykernel

RUN python -m ipykernel install --user --name docker-kernel --display-name "LLM (Docker)"

WORKDIR /workspace

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]