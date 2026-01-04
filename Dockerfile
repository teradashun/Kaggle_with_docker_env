FROM python:3.12-slim

# 作業ディレクトリの設定
WORKDIR /app

# 依存ライブラリのコピーとインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# コードのコピー（開発時はマウントするため、ビルド用）
COPY . .