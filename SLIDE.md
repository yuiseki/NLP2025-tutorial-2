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
---

<!-- _class: lead -->

# 地理情報と言語処理 実践入門

**松村結衣（yuiseki）**

株式会社 Helpfeel, Gyazo プロダクトマネージャー
UN Open GIS Initiative, WG7, UN Smart Maps Group

---

## 自己紹介

- 名前
  - 松村結衣（yuiseki）
- 出身大学
  - 慶應義塾大学 政策・メディア研究科
- 所属
  - 株式会社 Helpfeel, Gyazo プロダクトマネージャー
  - UN Open GIS Initiative, WG7, UN Smart Maps Group

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

「生成 AI で地名を抽出し、Nominatim API を使ってジオコーディングする」

### ステップ

- 生成 AI で地名を抽出
- Nominatim API でジオコーディング
- GeoJSON で地図上に可視化

---

<!-- _class: title -->

## 002: 複数地名抽出と経路探索

---

## 002: 複数地名抽出と経路探索

### ゴール

「生成 AI で複数地名を抽出し、Valhalla API で経路探索を行う」

### ステップ

- 生成 AI で複数地名を抽出
- Nominatim API でジオコーディング
- Valhalla API で経路探索
- GeoJSON で地図上に可視化

---

<!-- _class: title -->

## 003: Overpass API と Few-Shot Prompt

---

## 003-001: Overpass API による地域情報取得

### ゴール

「生成 AI を使って自然言語から Overpass QL を出力し、 Overpass API で地域情報を取得する」

### ステップ

- 生成 AI で Overpass QL を出力
- Overpass API で地域情報を取得
- GeoJSON で地図上に可視化

---

<!-- _class: title -->

## 004: DuckDB と SQL による地理空間情報データ分析, SQL RAG

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

<!-- _class: title -->

## まとめ

---

## まとめ

- aaa

---

<!-- _class: title -->

## 質疑応答
