# kaggleのpython環境をベースにする
FROM gcr.io/kaggle-images/python:v120

# ライブラリの追加インストール
RUN pip install -U pip && \
    pip install fastprogress japanize-matplotlib