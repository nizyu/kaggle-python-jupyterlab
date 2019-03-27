FROM python:3

env KAGGLE_USERNAME=dummy
env KAGGLE_KEY=dummy
env KAGGLE_COMPETITION=titanic

WORKDIR /home/jupyter

COPY requirements.txt ./
RUN useradd jupyter \
  && pip install --no-cache-dir -r requirements.txt \
  && mkdir -p /home/jupyter/work/inputs /home/jupyter/work/note \
  && chown -R jupyter /home/jupyter

USER jupyter
EXPOSE 8888
VOLUME /home/jupyter/work/note

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
