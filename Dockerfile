FROM oraclelinux:8 AS ja_JP

RUN dnf -y upgrade \
  && dnf -y install glibc-langpack-ja \
  && dnf clean all \
  && ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

ENV LANG ja_JP.UTF-8

FROM ja_JP AS eucJP
RUN dnf -y install glibc-locale-source \
  && dnf clean all \
  && localedef -c -i ja_JP -f EUC-JP ja_JP.eucJP
