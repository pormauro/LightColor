VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "comctl32.ocx"
Begin VB.Form Editor 
   BorderStyle     =   0  'None
   Caption         =   "Editor"
   ClientHeight    =   3840
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3510
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3840
   ScaleWidth      =   3510
   ShowInTaskbar   =   0   'False
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Left            =   3120
      Max             =   2
      Min             =   16
      TabIndex        =   19
      Top             =   3480
      Value           =   2
      Width           =   255
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   480
      TabIndex        =   18
      Text            =   "Text4"
      Top             =   3480
      Width           =   2655
   End
   Begin ComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   120
      TabIndex        =   16
      Top             =   2040
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   450
      _Version        =   327682
      Appearance      =   1
      Max             =   200
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Left            =   120
      Max             =   255
      Min             =   1
      TabIndex        =   14
      Top             =   1680
      Value           =   1
      Width           =   3255
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   120
      TabIndex        =   10
      Top             =   2640
      Width           =   3255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   375
      Left            =   3120
      Max             =   1
      Min             =   20
      TabIndex        =   6
      Top             =   960
      Value           =   1
      Width           =   255
   End
   Begin VB.TextBox Text2 
      Enabled         =   0   'False
      Height          =   375
      Left            =   2400
      TabIndex        =   5
      Text            =   "Text2"
      Top             =   960
      Width           =   735
   End
   Begin VB.VScrollBar VScroll1 
      Height          =   375
      Left            =   2040
      Max             =   1
      Min             =   20
      TabIndex        =   4
      Top             =   960
      Value           =   1
      Width           =   255
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   375
      Left            =   1320
      TabIndex        =   3
      Text            =   "Text1"
      Top             =   960
      Width           =   735
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Copiar Tiempo"
      Height          =   495
      Left            =   2400
      TabIndex        =   2
      Top             =   120
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Copiar  a Sig Paso"
      Height          =   495
      Left            =   1320
      TabIndex        =   1
      Top             =   120
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Pausa"
      Height          =   495
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label Label9 
      Caption         =   "Etiquetas Masters"
      Height          =   255
      Left            =   120
      TabIndex        =   20
      Top             =   3240
      Width           =   2295
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "Label8"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   120
      TabIndex        =   17
      Top             =   3480
      Width           =   720
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   3360
      Y1              =   3120
      Y2              =   3120
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "Label7"
      Height          =   195
      Left            =   2520
      TabIndex        =   15
      Top             =   1440
      Width           =   480
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "Tiempo de Paso"
      Height          =   195
      Left            =   120
      TabIndex        =   13
      Top             =   1440
      Width           =   1155
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   120
      TabIndex        =   12
      Top             =   960
      Width           =   150
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Nro Prog"
      Height          =   195
      Left            =   120
      TabIndex        =   11
      Top             =   720
      Width           =   630
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Etiqueta de Programa"
      Height          =   195
      Left            =   120
      TabIndex        =   9
      Top             =   2400
      Width           =   1530
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Ultimo Paso"
      Height          =   195
      Left            =   2400
      TabIndex        =   8
      Top             =   720
      Width           =   840
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Paso"
      Height          =   195
      Left            =   1320
      TabIndex        =   7
      Top             =   720
      Width           =   360
   End
End
Attribute VB_Name = "Editor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If PlayStop = False Then
    PlayStop = True
Else
    PlayStop = False
End If
TiempoPasoAcual = 0
PasoActual = 1
Editor.VScroll1 = 1
ActualizarEditor
End Sub

Private Sub Command2_Click()
    If PasoActual <> CantPasosProgramas Then
        For I = 1 To CantCanalesDMX
            MartizDMX(ProgramaActual, PasoActual + 1, I) = MartizDMX(ProgramaActual, PasoActual, I)
        Next I
        TiempoPaso(ProgramaActual, PasoActual + 1) = TiempoPaso(ProgramaActual, PasoActual)
        PasoActual = PasoActual + 1
        Editor.VScroll1 = PasoActual
    End If
End Sub

Private Sub Command3_Click()
    For I = 1 To CantPasosProgramas
        TiempoPaso(ProgramaActual, I) = TiempoPaso(ProgramaActual, PasoActual)
    Next I
End Sub

Private Sub Form_Load()
    Call VScroll3_Change
End Sub

Private Sub HScroll1_Change()
    TiempoPasoAcual = 0
    ProgressBar1.Value = 0
    TiempoPaso(ProgramaActual, PasoActual) = HScroll1.Value
    ActualizarEditor
End Sub

Private Sub HScroll1_Scroll()
    HScroll1_Change
End Sub

Private Sub Text3_Change()
    EtiquetaPrograma(ProgramaActual) = Text3.Text
    ActualizarProgramas
End Sub

Private Sub Text4_Change()
    EtiquetaMasters(VScroll3.Value) = Text4.Text
End Sub

Private Sub VScroll1_Change()
    PasoActual = VScroll1.Value
    HScroll1.Value = TiempoPaso(ProgramaActual, PasoActual)
    ActualizarEditor
    ActualizarConsola
End Sub

Private Sub VScroll2_Change()
    UltimoPaso(ProgramaActual) = VScroll2.Value
    ActualizarEditor
End Sub

Private Sub VScroll3_Change()
    Label8.Caption = Chr(64 + VScroll3.Value)
    Text4.Text = EtiquetaMasters(VScroll3.Value)
End Sub
