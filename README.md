## What is this?

Kaggleをやってみたところ公式から利用できるカーネルが勝手にリフレッシュされたりして結構ストレスフルだったのでローカルでお手軽にコンペティションを開始できるようなものを作成しました  
これを使うと指定したコンペティションのデータをローカルに取得しつつpipライブラリの用意とJypeterの起動までを自動化してくれます

ただ、kernelとかの概念がよくわかってないのでjupyter周りのセットアップが適当になってます

## How to use

1. KaggleにログインしてAPIトークンを発行し、環境変数にセットしておく
1. requirements.txtに予め必要なライブラリを記入しておく
1. $ docker build . -t kaggle-python-local
1. $ docker run -e KAGGLE_USERNAME -e KAGGLE_KEY -u $(id -u) -p 8888:8888 -v $(pwd)/note kaggle-python-local:latest ``[挑戦したいコンペティション]``
1. URLが表示されるのでブラウザでアクセス


## その他

上記の起動のさせ方であればnoteディレクトリ内にコードが同期されるのでローカルのvimで触ったりもできます。(inputデータが見えないので実行はJupyterから)

proxy対応したいけどまだできてない
