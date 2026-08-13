# poclab

## プロジェクト概要
### 目的
- 本プロジェクトは、PoC（Proof of Concept）ラボとして、様々なシステムのインフラを管理するコードベースを構築することを目的としています。

#### 主要な機能
<!-- TODO: 主要な機能を箇条書きで記載する。 -->

## 技術スタック
### インフラストラクチャ
#### VM
- プロビジョニング: Terraform
- 構成管理: Ansible

#### コンテナ
- オーケストレーション: Kubernetes
- デプロイメント: Helm, Helmfile

## コーディング規約
<!-- TODO: 共通のコーディング規約を記載する。 -->

## ディレクトリ構造
<!-- TODO: 以下は想定構成。将来構成が確定したら修正する。 -->
```
poclab/
├── infra/
│   ├── ansible/
│   │   ├── CLAUDE.md
│   │   └── README.md
│   ├── helm/
│   │   ├── CLAUDE.md
│   │   └── README.md
│   └── terraform/
│       ├── CLAUDE.md
│       └── README.md
├── .devcontainer/                      # Devcontainer 定義
│   ├── ansible/
│   ├── helm/
│   └── terraform/
├── .github/
│   ├── workflows/                      # CI/CD パイプライン
│   └── instructions/                   # 固有のコーディング規約・プロンプト定義
├── CLAUDE.md
└── README.md
```

## リソース
<!-- TODO: 開発スクリプト、MCPサーバー、自動化ツールの利用方法について記載する -->
