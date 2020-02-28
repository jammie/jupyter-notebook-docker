FROM ubuntu:18.04
RUN apt update
RUN apt install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install jupyter
EXPOSE 8976/tcp
ENTRYPOINT ["jupyter", "notebook", "--no-browser", "--ip=0.0.0.0", "--port=8976", "--allow-root"]
