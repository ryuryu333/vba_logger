Attribute VB_Name = "Logger_SingletonManager"
' Logger_SingletonManager.bas
Option Explicit

Private pLogger As Logger_Facade

' �O���[�o������A�N�Z�X���邽�߂̊֐�
Public Function MyLogger() As Logger_Facade
    If pLogger Is Nothing Then
        Err.Raise vbObjectError, "Logger_SingletonManager.MyLogger", "Logger������������Ă��܂���B���NewMyLogger�����s���Ă��������B"
    End If
    Set MyLogger = pLogger
End Function

Public Function NewMyLogger() As Logger_Facade
    Set pLogger = New Logger_Facade
    Set NewMyLogger = pLogger
End Function

Public Sub ReleaseMyLogger()
    Set pLogger = Nothing
End Sub
