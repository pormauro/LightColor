VERSION 5.00
Begin VB.Form Borrar 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Limpiar Canales"
   ClientHeight    =   960
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   2520
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   960
   ScaleWidth      =   2520
   ShowInTaskbar   =   0   'False
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   720
      TabIndex        =   4
      Top             =   480
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Borrar"
      Height          =   735
      Left            =   1560
      TabIndex        =   1
      Top             =   120
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   720
      TabIndex        =   0
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Hasta"
      Height          =   195
      Left            =   120
      TabIndex        =   3
      Top             =   480
      Width           =   420
   End
   Begin VB.Label Label1 
      Caption         =   "Desde"
      Height          =   195
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   465
   End
End
Attribute VB_Name = "Borrar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim iBorrar As Integer
If Int(Text1.Text) < Int(Text2.Text) Then
    For iBorrar = Int(Text1.Text) To Int(Text2.Text)
        Call BorrarCanal(iBorrar)
    Next iBorrar
    
    ActualizarAsignar
    ActualizarEditor
    ActualizarConsola
    Unload Me
Else
    MsgBox "Corregir valores"
End If
End Sub

