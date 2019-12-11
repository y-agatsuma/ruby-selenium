
# ruby-selenium

# 概要
[docker+selenium環境@Python](https://github.com/sikkimtemi/selenium)のRubyバージョンです。

## 事前準備
Dockerをインストールして、dockerコマンドとdocker-composeコマンドが使用できるようにしてください。

## 使い方
インストールと起動方法
```
$ git clone https://github.com/y-agatsuma/ruby-selenium.git
$ cd ruby-selenium
$ docker-compose up -d
```
正常に起動できていれば下記のようになります。

```
$ docker-compose ps
Name               Command           State           Ports
-----------------------------------------------------------------------
chrome         /opt/bin/entry_point.sh   Up      0.0.0.0:5901->5900/tcp
ruby           tail -f /dev/null         Up
selenium-hub   /opt/bin/entry_point.sh   Up      0.0.0.0:4444->4444/tcp
```

## 終了方法
```
$ docker-compose down
```

## サンプルスクリプトの実行
```
$ docker exec -it ruby /root/script/sample.rb
```
実行するとYahoo!にアクセスしてスクリーンショットを取得します。 
script/screenshotディレクトリに画像ファイルが保存されます。

## selenium grid consoleへの接続
http://localhost:4444/grid/console

## サンプルスクリプトの実行後のスクリーンショットをホスト環境にコピー
https://qiita.com/gologo13/items/7e4e404af80377b48fd5
```
$ docker cp CONTAINERID:IMAGE_DIR HOST_DIR
# Ex.
$ docker cp 15d71e79d0d1:/root/script/screenshot/20191211120138.png ./
```

## VNC接続によるデバッグ
VNCで接続するとブラウザの動きを確認しながらデバッグすることができます。Docker環境のIPアドレスにVNC(デフォルトは5900番ポート)でアクセスした上で、サンプルスクリプトを実行してみてください。デフォルトのパスワードは"secret"です。

