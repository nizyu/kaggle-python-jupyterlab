## What is this?

KaggleをやってみたところWebから使えるノートブックが結構ストレスフルだったのでローカルでお手軽にコンペティションを開始できるように作りました

## How to use


1. requirements.txtに予め必要なライブラリを記入しておく
1. $ docker build . -t hogehoge
1. $ docker run --rm -u $(id -u) -p 8888:8888 -v $(pwd)/scripts hogehoge:latest (挑戦したいコンペティション)
1. URLが表示されるのでブラウザでアクセス


## その他

上記の起動のさせ方であればscriptsディレクトリ内にコードが同期されるのでローカルのvimで触ったりもできます。(inputデータが見えないので実行はJupyterから)
proxy対応したいけどまだできてない
