### 以下がinstall済みであること。
- Git
- Docker Desktot

### 
#### demoアプリケーションを作成
1. 以下の構成のアプリケーションを作成する。
   ```
   .
   ├ src
   │ └ index.html
   └ Dockerfile
   ```
2. 動作確認。
   1. docker imageの作成
      ```
      docker build -t cicd-demo-app .
      ```
   
   2. docker imageを動かす。
      ```
      docker run --rm -p 80:80 fargatetest:latest
      ```
   3. アクセスしてみる。
      ```
      http://localhost
      ```
3. git hubにpushする。
   1. repositoryを作成
      ```
      Your repositories > New > Create repository
      ```
   2. pushする。
      ```
      git init
      git add .
      git commit -m "first commit"
      git branch -M master
      git remote add origin https://github.com/${gitのアカウント名}/${repository名}.git
      ```
    
