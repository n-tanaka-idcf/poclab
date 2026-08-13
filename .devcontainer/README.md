# Devcontainerによる開発環境構築(共通手順)

## 概要

- 本レポジトリにあるファイルの開発と実行を行う環境を、[devcontainer](https://code.visualstudio.com/docs/devcontainers/containers)を使用して構築します。
  - 業務PC(VScode)から開発環境用VM(Linux/Docker)に接続し、 そのVMのコンテナ上に必要なコマンドやライブラリを自動セットアップします。
- 現在devcontainerに対応しているディレクトリは、以下になります。
  - `terraform`(Terraformコード)

## 手順

- 業務PC設定
- 開発環境用VM設定
- 個別手順

## 業務PC設定

### 必須ソフトウェアのインストール

- 以下のソフトウェアをインストールしてください。
  - [VScode](https://code.visualstudio.com/download)
  - [VScodeのRemote Development extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

### SSH設定

- `ssh_config`を編集し、開発環境用VMにSSHでログインできるよう設定してください。
- 可能であれば`ssh-agent`を使用し、VMにログインする際のパスフレーズの入力を省略できる設定をしてください。

## 開発環境用VM設定

### 開発環境用VMログイン

- 業務PCから開発環境用VMに、ログインしてください。

### OSユーザ作成

- 開発と実行を行う人用の個人ユーザを作成してください。
- 業務PCから開発環境用VMにSSH経由で接続できるよう、個人ユーザのauthorized_keysに公開鍵を登録してください。

### Gitインストール

- `git`をインストールしてください。
- 個人ユーザの`user.name`と`user.email`を設定してください。

```console
git config --global user.name <Firstname Lastname>
```

```console
git config --global user.email <username>@idcf.jp
```

### Dockerインストール

- Dockerをインストールしてください。
  - [公式の手順](https://docs.docker.com/engine/install/)
- 個人ユーザがsudoなしでdockerコマンドを実行できるよう設定してください。
  - [公式の手順](https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user)

### レポジトリをクローン

- 本レポジトリを開発環境用VMの任意の場所にクローンしてください。

```console
git clone <this-repository-url>
```

### VScodeで開発環境用VM上のレポジトリを開く

- 業務PC上のVScodeのRemote Developmentの機能を使用し、開発環境用VMに接続してください。
- クローンしたレポジトリをVScodeで開いてください。

### 環境変数用ファイルの用意

- (apps|infra)/.env
  - コンテナビルド時の環境変数を設定してください。

```env
APPUSER_UID=<開発用VMのログインユーザのUID(id -uの実行結果)>
APPUSER_GID=<開発用VMのログインユーザのGID(id -gの実行結果)>
```

## その他

### 初期構築完了後に再度Devcontainerに接続する方法

- VScode上で`F1` -> `Dev Containers: Reopen in Container`を実行してください。
  - その後、`devcontainer名`を選択して下さい。

### Devcontainerから抜ける方法

- VScode上で`F1` -> `Dev Containers: Reopen Folder in SSH`を実行してください。
