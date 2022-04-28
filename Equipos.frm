VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Equipos 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Equipos"
   ClientHeight    =   6135
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   3420
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6135
   ScaleWidth      =   3420
   ShowInTaskbar   =   0   'False
   Begin VB.VScrollBar VScroll3 
      Height          =   375
      Left            =   840
      TabIndex        =   24
      Top             =   4920
      Width           =   375
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   120
      TabIndex        =   23
      Text            =   "Text2"
      Top             =   4920
      Width           =   735
   End
   Begin VB.VScrollBar VScroll1 
      Height          =   255
      Left            =   1920
      TabIndex        =   22
      Top             =   120
      Width           =   255
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   2880
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   17
      Left            =   840
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   21
      Top             =   240
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   16
      Left            =   960
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   20
      Top             =   240
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   15
      Left            =   1080
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   19
      Top             =   240
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   14
      Left            =   1200
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   18
      Top             =   240
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   13
      Left            =   1320
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   17
      Top             =   240
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   12
      Left            =   1440
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   16
      Top             =   240
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   11
      Left            =   1560
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   15
      Top             =   240
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   10
      Left            =   1680
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   14
      Top             =   240
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   9
      Left            =   1800
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   13
      Top             =   240
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   8
      Left            =   840
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   12
      Top             =   120
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   7
      Left            =   960
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   11
      Top             =   120
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   6
      Left            =   1080
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   10
      Top             =   120
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   5
      Left            =   1200
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   9
      Top             =   120
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   4
      Left            =   1320
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   8
      Top             =   120
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   3
      Left            =   1440
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   7
      Top             =   120
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   2
      Left            =   1560
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   6
      Top             =   120
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   1
      Left            =   1680
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   5
      Top             =   120
      Width           =   135
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   135
      Index           =   0
      Left            =   1800
      ScaleHeight     =   135
      ScaleWidth      =   135
      TabIndex        =   4
      Top             =   120
      Width           =   135
   End
   Begin VB.CommandButton Command2 
      Caption         =   "-"
      Height          =   255
      Left            =   480
      TabIndex        =   2
      Top             =   120
      Width           =   255
   End
   Begin VB.CommandButton Command1 
      Caption         =   "+"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   255
   End
   Begin VB.ListBox List1 
      Height          =   4350
      Left            =   120
      MultiSelect     =   2  'Extended
      TabIndex        =   0
      Top             =   480
      Width           =   3135
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Label1"
      Height          =   195
      Left            =   2280
      TabIndex        =   3
      Top             =   120
      Width           =   480
   End
End
Attribute VB_Name = "Equipos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
List1.AddItem List1.ListCount + 1

'    CommonDialog1.Filter = "Equipo de Iluminación (*.LIB)|*.LIB"
 '   CommonDialog1.InitDir = App.Path & "\Equipos"

 '   CommonDialog1.DialogTitle = "Seleccione un Equipo para Agregar"
'    CommonDialog1.ShowOpen
 '   If CommonDialog1.FileName <> "" Then
  '      'abrir archivo
   '     ArchivoActualEquipo = CommonDialog1.FileName
    '    AgregarEquipo.Show
'    Else
 '      MsgBox "No se seleccionó ningún Equipo"
  '  End If

End Sub

Private Sub ListBox1_Click()

End Sub

Private Sub Command2_Click()
List1.RemoveItem List1.ListIndex
End Sub
