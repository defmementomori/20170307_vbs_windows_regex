'*************************************************
'�t�@�C���T�v�F�Ώۃt�@�C���̕�����𐳋K�\���u������
'�쐬�ҁFdefmementomori
'���s�`���Fcscript regex.vbs "�����P" "�����Q" "�����R"
'�����P�F�u���Ώۃt�@�C���̃t���p�X
'�����Q�F���������O�̕�����i���K�\���\�j
'�����R�F����������̕�����
'���Ӂ@�F������"�ň͂��Ă�������
'*************************************************

Dim objFile    ' �Ώۃt�@�C��
Dim oldText    ' �u���O�e�L�X�g
Dim newText    ' �u����e�L�X�g
Dim objFSO     ' �t�@�C���V�X�e���I�u�W�F�N�g
Dim objRep     ' ���K�\���I�u�W�F�N�g
Dim repText    ' �u���Ώە�����
Dim target_file '
Dim before_str  '
dim after_str   '

target_file = WScript.Arguments(0)
before_str= WScript.Arguments(1)
after_str= WScript.Arguments(2)


Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile(target_file)

' �e�L�X�g�f�[�^�Ǎ�
oldText = objFile.ReadAll

' �u���i����������j������
repText = after_str
Set objRep = New RegExp
objRep.Multiline = True
' ���K�\���p�^�[��(���������O)���w�肷��
objRep.Pattern = before_str
objRep.IgnoreCase = True
objRep.Global = True 

' �e�L�X�g�ϊ�
newText = objRep.replace(oldText, repText)
objFile.Close

' ��������
Set objFile = objFSO.CreateTextFile(target_file)
objFile.WriteLine (newText)
objFile.Close

