FROM python:3

ENV KAGGLE_USERNAME=dummy
ENV KAGGLE_KEY=dummy
ENV KAGGLE_COMPETITION=titanic

RUN pip install --no-cache-dir kaggle jupyterlab \
  && groupadd jupyter \
  && useradd -m -g jupyter jupyter \
  && mkdir -p /home/jupyter/work/inputs /home/jupyter/work/note \
  && chown -R jupyter /home/jupyter

USER jupyter

WORKDIR /home/jupyter

VOLUME /home/jupyter/work/note

EXPOSE 8888

COPY ./docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
