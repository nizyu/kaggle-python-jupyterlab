## What is this?

This is a Docker image for joining Kaggle's competition from JypyterLab running locally.

## How to use.

1. Get Kaggle token from your account page. [kaggle-api](https://github.com/Kaggle/kaggle-api)
1. Exec below command. 
1. Open the URL displayed on the console. 

```shell
$ export KAGGLE_USERNAME=[your username]
$ export KAGGLE_KEY=[your key]
$ docker run -e KAGGLE_USERNAME -e KAGGLE_KEY -e KAGGLE_COMPETITION=[compatition name] -p 8888:8888 kaggle-python-lab
```

## Options

### Download data behind proxy

This image can override HTTP_PROXY environment variable.

```shell
$ docker run -e HTTP_PROXY -e HTTPS_PROXY -e KAGGLE_USERNAME -e KAGGLE_KEY -e KAGGLE_COMPETITION=[compatition name] -p 8888:8888 kaggle-python-lab
```

### Install pip package

You can install packages when `docker run`.

```shell
$ docker run -e KAGGLE_USERNAME -e KAGGLE_KEY -e KAGGLE_COMPETITION=[compatition name] -v [path to requirements.txt]:/home/jupyter/requirements.txt -p 8888:8888 kaggle-python-lab
```

OR

You can install packages on Jupyter lab.

```jupyter
! pip install --user jupyter [package name]
```

### Access your scripts from host OS.

You can mount jupyter workspace.

```shell
$ docker run -e KAGGLE_USERNAME -e KAGGLE_KEY -e KAGGLE_COMPETITION=[compatition name] -v [path to host directry] -p 8888:8888 kaggle-python-lab
```
