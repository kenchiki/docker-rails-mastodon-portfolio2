# マストドンで作成するポートフォリオをdockerで動かす

```sh
# コンテナを作る
docker-compose up -d

# up -dした後にdockerfile修正したらbuildコマンド
# docker-compose build --no-cache にするとキャッシュを使わない
docker-compose build

# bundle install永続化するとすごく遅くなるのではDockerfileで行う（他のコマンドは比較的早いので下記で実行）
# railsはコンテナ名
docker-compose run --rm web yarn install
docker-compose run --rm web rake db:setup
```

# 新たにnode_module追加したい場合

```sh
docker-compose run --rm web yarn add vue
```
