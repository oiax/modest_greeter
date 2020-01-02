# ModestGreeter

これは『Elixir/Phoenix初級①（第3版）』の学習用 Phoenix アプリケーションです。

## 稼働条件

* Docker 18 以上
* Docker Compose 1.24 以上

## コンテナの構築

```text
% git clone -b no-ecto https://github.com/oiax/phx-compose.git ex-v01
% cd ex-v01
% bin/setup.sh
```

## コンテナの起動

```text
% bin/start.sh
```

## アプリケーションのインストール

```text
% bin/login.sh
$ git clone -b master3 https://github.com/oiax/modest_greeter.git
$ cd modest_greeter
$ mix deps.get
$ mix deps.compile
$ cd assets; npm i; cd ..
```

## アプリケーションの起動

```text
$ mix phx.server
```

## 動作確認

ブラウザで http://localhost:4000 を開いてください。
