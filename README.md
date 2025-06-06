# NLP2025-tutorial-2: 地理情報と言語処理 実践入門

## 概要

言語と地理は人間の営みの中で密接に関わり合い，その融合による研究は新たな発見の可能性を切り開いている．言語処理技術と地理情報技術を組み合わせた研究はこれまでにも多くの成果を生み出してきたが，双方の専門知識や実践経験が必要となることが，分野融合的な取り組みを深めるうえでの課題となっている．そこで本チュートリアルは，言語研究者向けに，地理情報技術の専門的な概念や手法を紹介しつつ，言語処理技術を活用した地理情報の可視化や解析の事例を実践的なハンズオンを通じて紹介する．特に生成 AI による言語処理技術を多様な地理情報 API・データセット・ライブラリと組み合わせる事例の紹介を重視する．この分野融合領域の概要と可能性や課題に触れることを通じて，研究分野の更なる活性化のきっかけとしたい．

## ディレクトリ構造

- [SLIDE.md](SLIDE.md)
  - 本チュートリアルのスライド
- [TIMELINE.md](TIMELINE.md)
  - 関連論文と関連プロジェクトのタイムライン概要
- [TIMELINE_PAPER.md](TIMELINE_PAPER.md)
  - 関連論文のタイムライン
- [TIMELINE_PROJECT.md](TIMELINE_PROJECT.md)
  - 関連プロジェクトのタイムライン
- [SETUP_Common.md](SETUP_Common.md)
  - 各環境共通のセットアップ手順
- [SETUP_VSCode.md](SETUP_VSCode.md)
  - Visual Studio Code のセットアップ手順
- [SETUP_Docker.md](SETUP_Docker.md)
  - Docker を利用したハンズオン環境セットアップ手順
- [SETUP_WSL2_Ubuntu.md](SETUP_WSL2_Ubuntu.md)
  - WSL2 Ubuntu と Miniconda を利用したハンズオン環境セットアップ手順
- `001/`
  - 生成 AI による Overpass QL の出力
  - Overpass API による地域情報の取得
  - OvenStreetMap のデータ構造
    - nwr: Node, Way, Relation
  - GeoJSON: 複数の Point データの可視化
  - More
    - Example Selector と Few-Shot Prompt
- `002/`
  - DuckDB のセットアップ
  - Natural Earth とは
  - 生成 AI による SQL の出力
  - DuckDB と SQL による地理空間情報データ分析
  - GeoJSON: MultiPolygon データの可視化
  - More
    - SQL RAG による地理空間情報データ分析・質問応答システム
- `003/`
  - ベクトルタイルとは
    - Maplibre Style Spec と style.json とは
  - style.json による地図のカスタマイズ
  - 生成 AI による style.json の出力
  - charites の紹介
- `999/`
  - `001/`
    - 生成 AI による地名抽出
    - Nominatim API によるジオコーディング
    - GeoJSON: Point データの可視化
  - `002/`
    - 生成 AI による複数の地名抽出
    - Valhalla API による経路探索
    - GeoJSON: LineString データの可視化
  - `003/`
    - ラスタータイルとは
    - 地理院タイル 全国最新写真（シームレス） の紹介
    - ラスタータイルの結合
    - 生成 AI による空中写真画像のキャプショニング
