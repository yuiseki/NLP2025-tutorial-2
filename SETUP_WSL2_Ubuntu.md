# NLP2025-tutorial-2: 環境構築 WSL2 Ubuntu

## Anaconda または Miniconda のダウンロード

```bash
curl -o ./tmp/Miniconda3-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
```

## Anaconda または Miniconda のインストール

```bash
bash ./tmp/Miniconda3-latest-Linux-x86_64.sh
```

## Anaconda または Miniconda による仮想環境の作成

```bash
conda create -n nlp2025-t2 python=3.11 -y

```

## 仮想環境の切り替え

```bash
conda activate nlp2025-t2
```

## 仮想環境で依存関係をインストール

```bash
pip install -r requirements.txt
```
