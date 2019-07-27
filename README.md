### ツール概要
「regex.vbs」はdosコマンドから  
正規表現の置換を実行する目的で作成したツールです。  
powershellでも置換はできますが、運用要件上、  
動作端末のセキュリティの設定を変更できなかったので  
vbsにて作成しました。  

### 実行環境
下記OSで動作した実績ありです。  
windows7  
windows8.1  
windows10  

### 実行形式
windows dosから下記コマンドを実行します。  
cscript regex.vbs "引数１" "引数２" "引数３"  
引数１：置換対象ファイルのフルパス  
引数２：書き換え前の文字列（正規表現可能）  
引数３：書き換え後の文字列  
注意　：引数は"で囲ってください  

### sample.batについて
本ツールの概要をつかむためにsampleを用意しています。  
宜しければ実行してみてください。  

### 実行方法
1.  本フォルダを適当な場所に配置します  
2. 「sample.bat」を実行します  
3.  実行後、各箇所が置換されます。  
4.  置換箇所を比較確認してください。  
「sample_org」・・・・置換前  
「sample」・・・・・・置換後  

置換の概要をは下記です。  
sample1	文字列置換		「2017」を文字列「2016」に置換  
sample2	メタ文字		「行頭の数字」を文字列「数値」に置換  
sample3	繰り返し表現	IP部分を「xxx.xxx.xxx.xxx」に置換  
sample4	最少一致		行頭から２つめのタブまでを空文字に置換  
sample5	後方参照		行頭がAのIP部分のみを「xxx.xxx.xxx.xxx」に置換  
