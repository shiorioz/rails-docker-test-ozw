#!/bin/sh

# 本番だけ実行する処理
if [ "${RAILS_ENV}" = "production"]
then
    bundle exec rails assets:precompile
fi

# webサーバを立ち上げる
bundle exec rails s -p ${PORT:-3000} -b 0.0.0.0