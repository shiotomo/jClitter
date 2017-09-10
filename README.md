# jClitter
CLI用Twitterクライアント

## 使用言語
- Ruby 2.4.1

## 名前の由来
宝石(Ruby)を使ったCLI用Twitterクライアントという意味で命名しました。  

- j : jewelry, json  
- Cli : CLI, client  
- tter : twitter  

## jClitterとは
jClitterは、コマンドライン上でTwitterをするためのTwitterクライアントです。  
コマンドラインのような使い勝手でお使いいただけます。  
jClitterのコマンドは以下にあるコマンドリストを確認してください。  

## 使用方法
git cloneをした後に以下のコマンドを実行してください。
```
bundle install --path vendor/bundle
```

使用する際は以下のコマンドを実行してください
```
bundle exec ruby main.rb
```

以下のようなプロンプトが出現したら成功です
```
自分のユーザーID@jClitter$
```

初めて使用した場合には以下のようなプロンプトが出現すると思います。
```
consumer_key => 
```
指示されたとおりにKeyを入力してください。  
その後、3回Keyの入力を促すプロンプトが出現すると思いますが、指示通りに入力してください。

## コマンドリスト
```
コマンド 第一引数(内容) 第二引数(オプション)
```
- tweet  
ツイートする際に使うコマンドです。  
第一引数の内容がツイートされます。  

- timeline, tl  
TLを表示するコマンドです。  
引数は必要としません。  

- usertl  
第一引数に指定したユーザーのTLを表示するコマンドです。  
第二引数に正整数を入力すると、表示するツイートの個数を指定できます。  

- keyedit  
Keyを変更したい時に使うコマンドです。  
本当に変更していいのか聞かれるので、yかYを入力すると変更できます。  
引数は必要としません。

- myprof  
自分のプロフィールを表示するコマンドです。  
引数は必要としません。  

- prof  
第一引数に指定したユーザーのプロフィールを表示するコマンドです。   
第一引数にユーザーIDを指定します。

- follow  
第一引数に指定したユーザーをフォローします。

- unfollow  
第一引数に指定したユーザーをアンフォローします。

## 今度の予定
- コマンドの追加
- プログラムの修正

## 備考

