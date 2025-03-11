# NLP2025-tutorial-2: 環境構築

## 環境変数の設定

```bash
cp .env.example .env
```

```bash
code .env
```

## Google Gemini API Key の入手

- https://aistudio.google.com/ をブラウザで開く
- `Get API Key` をクリック
  - https://aistudio.google.com/apikey に画面遷移するはず
- `API キーを生成` をクリック
- 生成された API キーをクリップボードにコピー
- `.env` ファイル内の `GOOGLE_API_KEY` の値を書き換える
