## 概要

Kaggleをやってみたところ公式から利用できるカーネルが勝手にリフレッシュされたりして結構ストレスフルだったのでローカルでお手軽にコンペティションを開始できるようなものを作成しました  
これを使うと指定したコンペティションのデータをローカルに取得しつつpipライブラリの用意とJupyterの起動までを自動化してくれます

ただ、kernelとかの概念がよくわかってないのでjupyter周りのセットアップが適当になってます

## 使い方

1. KaggleにログインしてAPIトークンを発行し、環境変数にセットしておく
1. requirements.txtに予め必要なライブラリを記入しておく
1. $ docker build . -t kaggle-python-local
1. $ docker run -e HTTP_PROXY -e KAGGLE_USERNAME -e KAGGLE_KEY -e KAGGLE_COMPETITION=`[挑戦したいコンペティション]` -u $(id -u) -p 8888:8888 -v $(pwd)/note kaggle-python-local:latest
1. URLが表示されるのでブラウザでアクセス


## その他

上記の起動のさせ方であればnoteディレクトリ内にコードが同期されるのでローカルのエディタから触って編集できたりもします。(inputデータが見えないので実行はJupyterから)
