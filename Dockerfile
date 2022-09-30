# kaggleのpython環境をベースにする
FROM gcr.io/kaggle-images/python:v120

# ライブラリの追加インストール
RUN pip install -U pip && \
    pip install fastprogress japanize-matplotlib isort black jupyterlab_code_formatter jupyterlab_tabnine

# starshipの導入
RUN curl -sS https://starship.rs/install.sh | sh -s -- --yes && \
    echo eval "$(starship init bash)" >> ~/.bashrc