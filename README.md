TDDBC for Ruby with test-unit
====================================

これは、TDDBCのRuby向けtest-unitプロジェクトです。

## 動作確認環境
* ruby 2.0.0p195

## セットアップ
```bash
gem install bundler
bundle install
```

ruby test/sample_test.rbを実行して

```bash
$ ruby test/sample_test.rb
Loaded suite test/sample_test
Started
.

Finished in 0.001069 seconds.

1 tests, 1 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed

935.45 tests/s, 935.45 assertions/s
```

のようにテストが正常終了すればOKです。

## ライブラリ
### [guard](https://github.com/guard/guard)
`guard` コマンドを実行すると入力待ちの状態になるので、あとはファイルが変更される度にテストが実行されます

OSごとに下記のソフトを入れるとテスト結果がOS毎の通知欄に表示されます

#### Windows
notifu: http://www.paralint.com/projects/notifu/

#### Mac
growl: http://growl.info/
growlnotify: http://growl.info/downloads#generaldownloads

#### 他Unix系(Linux, FreeBSD, OpenBSD and Solaris)
libnotify: https://developer.gnome.org/libnotify/

