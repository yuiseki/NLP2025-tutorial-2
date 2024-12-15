---
title: 地理情報と言語処理 実践入門
marp: true
theme: default
paginate: true
footer: 言語処理学会第31回年次大会（NLP2025）チュートリアル資料
style: |
  section.title > h2, section.title > h3 {
    text-align: center;
  }
  section div.mermaid {
    all: unset;
    display: flex;
    align-items: center;
    align-content: center;
    justify-content: center;
    z-index: 1000;
  }
---

<script type="module">
import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10.0.0/dist/mermaid.esm.min.mjs';
mermaid.initialize({
  startOnLoad: true,
  sequence: {
    diagramMarginX: 50,
    diagramMarginY: 30,
    boxTextMargin: 5,
    mirrorActors:true,
    height: 24,
    topPadding: 10
  },
});
window.addEventListener('vscode.markdown.updateContent', function() { mermaid.init() });
</script>

<!-- _class: lead -->

# 地理情報と言語処理 実践入門

**松村結衣（yuiseki）**

株式会社 Helpfeel, Gyazo プロダクトマネージャー
UN Open GIS Initiative, WG7, UN Smart Maps Group

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
- この研究分野の面白さ・奥深さ、やりがい、可能性を伝える
- この研究分野のコミュニティの紹介をする

---

## チュートリアルの内容

- 導入（5 分）
- デモ（10 分）
- ハンズオン（45 分）
- 研究紹介（15 分）
- まとめ（5 分）
- 質疑応答（10 分）

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

## ハンズオンのゴール

- 地理情報技術と言語処理技術（LLM、生成 AI 含む）を組み合わせて試行錯誤ができる環境を用意して実際に動かす
- ハンズオンを通じて、デモの裏側で使われている技術要素と組み合わせ方が理解できる
- 必要に応じて地理情報技術の概念や用語を解説する

---

<!-- _class: title -->

## ハンズオン

---

## ハンズオンの内容

- 001: 地名抽出とジオコーディング（5 分）
- 002: 複数地名抽出と経路探索（5 分）
- 003: Overpass API と Few-Shot Prompt（5 分）
  - 003-001: Overpass API による地域情報取得
  - 003-002: Few-Shot Prompt
- 004: DuckDB と SQL による地理空間情報データ分析, SQL RAG（5 分）
  - 004-001: DuckDB と SQL による地理空間情報データ分析
  - 004-002: SQL RAG
- 005: ラスタータイルとキャプショニング（5 分）
- 006: ベクトルタイルと地図スタイルカスタマイズ（5 分）
- 999: GIS 特化 生成 AI のファインチューニング（15 分）

---

<!-- _class: title -->

## 001: 地名抽出とジオコーディング

---

## 001: 地名抽出とジオコーディング

### ゴール

「生成 AI で自然言語から地名を抽出し、Nominatim API を使ってジオコーディングする」

### ステップ

- 生成 AI で自然言語から地名を抽出
- Nominatim API でジオコーディング
- GeoJSON にして地図上に可視化

---

## 001: 地名抽出とジオコーディング シーケンス図

<div class="mermaid">
sequenceDiagram
    participant User as 人間
    participant System as システム
    participant AI as 生成AI
    participant Nominatim as Nominatim API
    User->>System: 自然言語を入力
    System-->>AI: 地名抽出を指示
    AI-->>System: 抽出した地名を出力
    System-->>Nominatim: 地名でAPIを呼び出す
    Nominatim-->>System: 呼び出し結果
    System->>User: 結果を地図上に表示
</div>

---

<!-- _class: title -->

## 002: 複数地名抽出と経路探索

---

## 002: 複数地名抽出と経路探索

### ゴール

「生成 AI で自然言語から複数地名を抽出し、Valhalla API で経路探索を行う」

### ステップ

- 生成 AI で複数地名を抽出
- Nominatim API でジオコーディング
- Valhalla API で経路探索
- GeoJSON で地図上に可視化

---

## 002: 複数地名抽出と経路探索 シーケンス図

<div class="mermaid" style="height: 25vh; transform: scale(0.9);">
sequenceDiagram
    participant User as 人間
    participant System as システム
    participant AI as 生成AI
    participant Nominatim as Nominatim API
    participant Valhalla as Valhalla API
    User->>System: 自然言語を入力
    System-->>AI: 出発地と目的地のペアを抽出
    AI-->>System: 抽出した出発地と目的地を出力
    System-->>Nominatim: 出発地でAPIを呼び出す
    Nominatim-->>System: 出発地の座標
    System-->>Nominatim: 目的地でAPIを呼び出す
    Nominatim-->>System: 目的地の座標
    System-->>Valhalla: 出発地と目的地の座標で経路探索
    Valhalla-->>System: 経路探索結果
    System->>User: 結果を地図として表示
</div>

---

<!-- _class: title -->

## 003: Overpass API と Few-Shot Prompt

- 003-001: Overpass API による地域情報取得
- 003-002: Few-Shot Prompt

---

## 003-001: Overpass API による地域情報取得

### ゴール

「生成 AI を使って自然言語から Overpass QL を出力し、 Overpass API で地域情報を取得する」

### ステップ

- 生成 AI で Overpass QL を出力
- Overpass API で地域情報を取得
- GeoJSON で地図上に可視化

---

## 003-001: Overpass API による地域情報取得 シーケンス図

<div class="mermaid">
sequenceDiagram
    participant User as 人間
    participant System as システム
    participant AI as 生成AI
    participant Overpass as Overpass
    User->>System: 自然言語を入力
    System-->>AI: Overpass QL を出力するように指示
    AI-->>System: Overpass QL を出力
    System-->>Overpass: Overpass API を呼び出す
    Overpass-->>System: Overpass API の呼び出し結果
    System->>User: 結果を地図上に表示
</div>

---

## 003-002: Few-Shot Prompt

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

## 003-002: Few-Shot Prompt シーケンス図

<div class="mermaid" style="height: 25vh; transform: scale(0.8);">
sequenceDiagram
    participant User as 人間
    participant System as システム
    participant AI as 生成AI
    participant Overpass as Overpass API
    System-->>System: ExamplesをEmbeddingしておく
    User->>System: 自然言語を入力
    System-->>AI: 入力をEmbeddingに変換させる
    AI-->>System: Embeddingを出力
    System-->>System: Embeddingが距離的に近いExamplesを探す
    System-->>AI: Examplesに基づきFew ShotでOverpass QLを出力する指示
    AI-->>System: Overpass QLを出力
    System-->>Overpass: Overpass API を呼び出す
    Overpass-->>System: Overpass API 呼び出し結果
    System->>User: 結果を地図上に表示
</div>

---

<!-- _class: title -->

## 004: DuckDB と SQL RAG

- 004-001: DuckDB と SQL による地理空間情報データ分析
- 004-002: SQL RAG

---

## 004-001: DuckDB と SQL による地理空間情報データ分析

---

## 004-002: SQL RAG

---

<!-- _class: title -->

## 005: ラスタータイルとキャプショニング

---

## 005: ラスタータイルとキャプショニング

---

<!-- _class: title -->

## 006: ベクトルタイルと地図スタイルカスタマイズ

---

## 006: ベクトルタイルと地図スタイルカスタマイズ

---

<!-- _class: title -->

## 999: GIS 特化 AI のファインチューニング

---

## 999: GIS 特化 AI のファインチューニング

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
