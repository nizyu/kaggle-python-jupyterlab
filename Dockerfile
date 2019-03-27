FROM python:3

env KAGGLE_USERNAME=dummy
env KAGGLE_KEY=dummy

WORKDIR /home/jupyter

COPY requirements.txt ./
RUN useradd jupyter \
  && pip install --no-cache-dir -r requirements.txt \
  && mkdir -p /home/jupyter/work/inputs /home/jupyter/work/scripts \
  && chown -R jupyter /home/jupyter

USER jupyter
EXPOSE 8888
VOLUME /home/jupyter/work/scripts

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
