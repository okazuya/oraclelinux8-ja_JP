# oraclelinux8-ja_JP
oraclelinux8(Docker Official Image)で日本語を扱えるようにする。
また、タイムゾーンを日本標準時に変更する。

### 日本語(UTF-8)に対応したイメージをビルド
```
# docker build -t ol8:ja_JP --target ja_JP -f Dockerfile .
```

### 上記をベースにEUC-JPにも対応したイメージをビルド
```
# docker build -t ol8:eucJP --target eucJP -f Dockerfile .
```
