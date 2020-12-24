# EMG

## 概要
EMG のデーターを PSTORE に変換するプログラム

## インストール

```sh
# インストール
gem install specific_install
gem specific_install -l "git://github.com/himeyama/emg.git"
```

## Gemfile
```sh
gem "emg", github: "himeyama/emg", branch: :main
```


## コマンド
```sh
convert_emg ファイル名
convert_emgs ディレクトリ名
```

## Ruby で使う
```ruby
#!/usr/bin/env ruby
require "bundler"
Bundler.require
require "emg"
include Emg

a = EMG.assign "***.pstore"
a.to_a
```

## 開発

```ruby
# ビルド
bundle exec rake build
```