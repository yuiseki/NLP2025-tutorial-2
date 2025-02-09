---
title: 地理情報と言語処理 実践入門
marp: true
theme: default
paginate: true
footer: 言語処理学会第31回年次大会（NLP2025）チュートリアル資料
style: |
  section {
    margin-top: 0;
    padding-top: 0;
    color: rgb(80, 80, 80);
  }
  section h1, section h2 {
    color: rgb(0, 158, 219);
  }
  section.title > h2, section.title > h3 {
    text-align: center;
    color: rgb(0, 158, 219);
  }
---

<!-- _class: lead -->

# 地理情報と言語処理 実践入門

**松村結衣（yuiseki）**

株式会社 Helpfeel, Gyazo プロダクトマネージャー
UN Open GIS Initiative, WG7, UN Smart Maps Group

---

## チュートリアルの内容

- 導入（5 分）
- デモ（10 分）
- ハンズオン（45 分）
- 研究紹介（15 分）
- まとめ（5 分）
- 質疑応答（10 分）

---

## 自己紹介 (1)

- 名前
  - 松村結衣（yuiseki）
- 出身大学
  - 慶應義塾大学 政策・メディア研究科
    - 修士論文「街に着目した Twitter 上のメッセージ分析について」(2010)
- 所属
  - 株式会社 Helpfeel, Gyazo プロダクトマネージャー
  - UN Open GIS Initiative, DWG7: UN Smart Maps Group

---

## 自己紹介 (2)

### 株式会社 Helpfeel

- 言語処理や生成 AI を積極的に活用したプロダクトの開発
  - Gyazo
  - Cosense (formerly Scrapbox)
  - Helpfeel
- Gyazo のプロダクトマネージャーを担当
  - Gyazo は画像、動画、音声、テキストを組み合わせたプロダクト
    - マルチモーダルに関心を持っている

---

## 自己紹介 (3)

### UN Open GIS Initiative

- 国連本部 地理空間情報課 (UN Geospatial) が主導している取り組み
  - 国連を **オープンソースソフトウェア** で支える
    - 現状: Microsoft Azure, Esri ArcGIS, Mapbox
- DWG7 (Domain Working Group 7) : UN Smart Maps Group に所属
  - GIS を中心とした最新技術を調査・研究・開発
    - 例: Raspberry Pi、ベクトルタイル、Web3、PMTiles、生成 AI
  - 月例会議での報告
  - 国連職員向けの Webinar を不定期で開催

---

## チュートリアルのゴール

### 言語研究分野で地理情報を扱う研究がさらに盛り上がってほしい

- 言語＋地理という領域で様々な研究アイデアが探求され発表される
  - それを見て刺激を受けて私が捗る

### そのために私にできること

- 必要な情報や知識を伝える、実践的なツールやスキルを伝える
- この分野の面白さ・奥深さ、やりがい、可能性を伝える
- この分野のコミュニティの紹介をする

---

## チュートリアルを通じて伝えたいこと

- 地理情報技術のオープンデータや API やライブラリの使い方
- 生成 AI をソフトウェアシステムのパーツとして扱うテクニック
- この 2 つの組み合わせ

---

<!-- _class: title -->

## デモ

### https://trident.yuiseki.net/

---

## デモ：自然言語指示に基づいた地理情報の取得と可視化

- https://trident.yuiseki.net/

---

## デモ：自然言語による地理情報 DB に対する質問応答

- https://trident.yuiseki.net/duckdb

---

## デモ：自然言語指示に基づいた地図スタイルの変更

- https://trident.yuiseki.net/charites

---

<!-- _class: title -->

## ハンズオン

---

## ハンズオンのゴール

- 地理情報技術と言語処理技術（LLM、生成 AI 含む）を組み合わせて試行錯誤ができる環境を用意して実際に動かす
- ハンズオンを通じて、デモの裏側で使われている技術要素と組み合わせ方が理解できる
- 必要に応じて地理情報技術の概念や用語を解説する

---

## ハンズオンの内容

- 001: Overpass API と Few-Shot Prompt （5 分）
  - 001-001: Overpass API による地域情報取得
  - 001-002: Few-Shot Prompt
- 002: DuckDB と SQL による地理空間情報データ分析, SQL RAG （5 分）
  - 002-001: DuckDB と SQL による地理空間情報データ分析
  - 002-002: SQL RAG
- 003: ベクトルタイルと地図スタイルカスタマイズ（5 分）

---

<!-- _class: title -->

## 001: Overpass API と Few-Shot Prompt

- 001-001: Overpass API による地域情報取得
- 001-002: Few-Shot Prompt

---

## 001-001: Overpass API による地域情報取得

### ゴール

「生成 AI を使って自然言語から Overpass QL を出力し、 Overpass API で地域情報を取得する」

### ステップ

- 生成 AI で Overpass QL を出力
- Overpass API で地域情報を取得
- GeoJSON で地図上に可視化

---

## 001-001: Overpass API による地域情報取得 図

ここに図が入る

---

## 001-002: Few-Shot Prompt

### ゴール

「生成 AI に Examples を与えて Few-Shot Prompt で Overpass QL を出力する」

### ステップ

- Examples を Embedding しておく
- 生成 AI に自然言語を入力
- Embedding に変換する
- Embedding が距離的に近い Examples を探す
- Examples に基づき Few Shot で Overpass QL を出力する
- Overpass API で地域情報を取得
- GeoJSON で地図上に可視化

---

## 001-002: Few-Shot Prompt 図

ここに図が入る

---

<!-- _class: title -->

## 002: DuckDB と SQL RAG

- 002-001: DuckDB と SQL による地理空間情報データ分析
- 002-002: SQL RAG

---

## 002-001: DuckDB と SQL による地理空間情報データ分析

### ゴール

「生成 AI を使って自然言語から SQL を出力し、DuckDB で地理空間情報データ分析を行う」

### ステップ

- DuckDB でデータベースを作成
- 生成 AI でテーブルスキーマと自然言語から SQL を出力
- DuckDB で SQL を実行
- 結果を GeoJSON で地図上に可視化

---

## 002-002: SQL RAG

### ゴール

「生成 AI に SQL データベースの情報を踏まえて質問応答させる」

### ステップ

- DuckDB でデータベースを作成
- 生成 AI で自然言語の質問に答えるための SQL を出力
- DuckDB で SQL を実行
- 自然言語の質問と SQL 実行結果を組み合わせて回答を生成

---

<!-- _class: title -->

## 003: ベクトルタイルと地図スタイルカスタマイズ

---

## 003: ベクトルタイルと地図スタイルカスタマイズ

---

<!-- _class: title -->

## 閑話休題

---

<!-- _class: title -->

## 自然言語と人工言語

---

## 自然言語と人工言語

- 人工言語
  - Overpass QL
  - SQL
  - Maplibre Style Spec

---

<!-- _class: title -->

## 研究紹介

---

## 研究紹介 (1)

### 取り上げたい過去の研究

- ChatGeoPT (2023-03)
- Voyager (2023-05)

---

## 研究紹介 (2)

### 近年の研究動向

- 自律エージェントの研究が盛り上がっている
  - 特に、 QGIS プラグインが非常に盛り上がっている

---

## 研究紹介 (3)

### 研究分野の課題

- 定量的なタスク定義やベンチマークが足りない
  - 競争するべき
    - 参考事例
      - Chatbot Arena
      - WebDev Arena
- オープンなデータセットが足りない
  - OSAID 1.0 においてはデータセットがオープンであることを推奨している

---

<!-- _class: title -->

## まとめ

---

## まとめ

- aaa

---

<!-- _class: title -->

## 質疑応答
