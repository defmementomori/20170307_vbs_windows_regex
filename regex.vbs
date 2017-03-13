'*************************************************
'ファイル概要：対象ファイルの文字列を正規表現置換する
'作成者：defmementomori
'実行形式：cscript regex.vbs "引数１" "引数２" "引数３"
'引数１：置換対象ファイルのフルパス
'引数２：書き換え前の文字列（正規表現可能）
'引数３：書き換え後の文字列
'注意　：引数は"で囲ってください
'*************************************************

Dim objFile    ' 対象ファイル
Dim oldText    ' 置換前テキスト
Dim newText    ' 置換後テキスト
Dim objFSO     ' ファイルシステムオブジェクト
Dim objRep     ' 正規表現オブジェクト
Dim repText    ' 置換対象文字列
Dim target_file '
Dim before_str  '
dim after_str   '

target_file = WScript.Arguments(0)
before_str= WScript.Arguments(1)
after_str= WScript.Arguments(2)


Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile(target_file)

' テキストデータ読込
oldText = objFile.ReadAll

' 置換（書き換え後）文字列
repText = after_str
Set objRep = New RegExp
objRep.Multiline = True
' 正規表現パターン(書き換え前)を指定する
objRep.Pattern = before_str
objRep.IgnoreCase = True
objRep.Global = True 

' テキスト変換
newText = objRep.replace(oldText, repText)
objFile.Close

' 書き込み
Set objFile = objFSO.CreateTextFile(target_file)
objFile.WriteLine (newText)
objFile.Close

