# List.skill

## サイト概要
自分の趣味・特技を持っている人が共通の趣味、特技を持った人と共有できる 情報サイトです。サイトの内容は、レシピ投稿とイベント告知投稿ができるます。 レシピ投稿は、自分だけのオリジナルレシピを画像付きで投稿し、他のユーザが コメントやいいねを押したりすることができます。EVENT投稿は、イベントの紹介 作品の画像を投稿でき、開催場所を、オンライトと指定した開催地のどちらかを 選択することができます。オンライン開催は指定のURLを記入し、開催地選択は、 住所を記入することで、地図を表示することができます。

### サイトテーマ
趣味、技術や特技を共通するコミュニティサイト

### テーマを選んだ理由
コロナで、今家で過ごすことが多く家でもできることをすることが
多くなり、場所を作って誰かに見せる機会が少ない人やコストをかけずに
腕試ししたい人が共有できるサイトを作りたいと考えたからです。

### ターゲットユーザ
・自分のオリジナルレシピを見てほしい人
・共通の趣味、特技の人とつながりたい人
・イベントを開催したい人
・個展を開きたいが、予算が限られる人
・コロナで人との触れ合える機会が減り、なかなか共有のコミュニティーがない人

### 主な利用シーン
予算が限られたり、場所がないときにオンラインイベント上でイベントを開催し、 自分だけのレシピを考案し、見てほしいときにオリジナルレシピを投稿できます。 また、展示会やセミナーの告知だけしたいときにも、イベントの紹介とともに投稿できます。
## 設計書
<https://docs.google.com/spreadsheets/d/1qYvVRN4L5XIUrlaI7d6E4F8IVz3cFrPI/edit#gid=1092636736>
-アプリケーション設計
<https://docs.google.com/spreadsheets/d/1NzdYXp-f89stMQ1RLLFMWMxU5vzR4qWz3nvKbsAhJz0/edit#gid=0>
-テーブル定義書

<https://app.diagrams.net/#G1kAGvuKywtjtmHBS72tJDOW8B4OjrZC1Y>
-ER図

<https://app.diagrams.net/#G1vPhaJo3T19FQNumsyMomaFhvOOxNwARZ>
-ワイヤーフレーム

## チャレンジ要素一覧

<https://docs.google.com/spreadsheets/d/1UcRWy13Jv-aG20-0RGiC1UxNTCZh2f787uEExx16-kE/edit#gid=0>

## 機能一覧
- いいね機能
- コメント機能
- 画像アップロード機能（複数含む）
- 管理者機能
- サインイン/ログイン/ログアウト
- 地図表記
- 新規投稿機能
- 編集機能
- 消去機能
- ジャンル投稿機能（管理者側）
- ユーザー一覧機能
- 退会機能
- ページネーム機能
- マイページ機能
- 投稿一覧機能
- ジャンル機能


## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：MySQL
- IDE：Cloud9
- Gem：devise
- フロントエンド: CSSフレームワーク：BootStrap
- 本番サーバ環境: AWS(EC2,RDS,EIP)
- 地図投稿（google API）

## 使用素材
- ぱくたそ
- O-DAN
- morguefile
- Font Free
