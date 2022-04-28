VERSION 5.00
Begin VB.Form Asignar 
   BorderStyle     =   0  'None
   Caption         =   "Asignar"
   ClientHeight    =   7575
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3495
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   7575
   ScaleWidth      =   3495
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command5 
      Caption         =   "Invertido"
      Height          =   255
      Left            =   2640
      Style           =   1  'Graphical
      TabIndex        =   53
      Top             =   840
      Width           =   735
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   12
      Left            =   2760
      TabIndex        =   50
      Text            =   "255"
      Top             =   6000
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   11
      Left            =   2760
      TabIndex        =   49
      Text            =   "255"
      Top             =   5640
      Width           =   375
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   12
      Left            =   3120
      Max             =   0
      Min             =   255
      TabIndex        =   48
      Top             =   6000
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   11
      Left            =   3120
      Max             =   0
      Min             =   255
      TabIndex        =   47
      Top             =   5640
      Width           =   255
   End
   Begin VB.CommandButton Command2 
      Height          =   255
      Left            =   1560
      TabIndex        =   46
      Top             =   6960
      Width           =   375
   End
   Begin VB.CommandButton Command1 
      Height          =   255
      Left            =   1560
      TabIndex        =   45
      Top             =   6480
      Width           =   375
   End
   Begin VB.HScrollBar HScroll2 
      Height          =   255
      Left            =   120
      Max             =   383
      Min             =   -127
      TabIndex        =   43
      Top             =   7200
      Value           =   127
      Width           =   3255
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Left            =   120
      Max             =   200
      TabIndex        =   41
      Top             =   6720
      Value           =   100
      Width           =   3255
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   10
      Left            =   2760
      TabIndex        =   39
      Text            =   "255"
      Top             =   5280
      Width           =   375
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   10
      Left            =   3120
      Max             =   0
      Min             =   255
      TabIndex        =   38
      Top             =   5280
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   9
      Left            =   3120
      Max             =   0
      Min             =   255
      TabIndex        =   37
      Top             =   4920
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   8
      Left            =   3120
      Max             =   0
      Min             =   255
      TabIndex        =   36
      Top             =   4560
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   7
      Left            =   3120
      Max             =   0
      Min             =   255
      TabIndex        =   35
      Top             =   4200
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   6
      Left            =   3120
      Max             =   0
      Min             =   255
      TabIndex        =   34
      Top             =   3840
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   5
      Left            =   3120
      Max             =   0
      Min             =   255
      TabIndex        =   33
      Top             =   3480
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   4
      Left            =   3120
      Max             =   0
      Min             =   255
      TabIndex        =   32
      Top             =   3120
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   3
      Left            =   3120
      Max             =   0
      Min             =   255
      TabIndex        =   31
      Top             =   2760
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   2
      Left            =   3120
      Max             =   0
      Min             =   255
      TabIndex        =   30
      Top             =   2400
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   1
      Left            =   3120
      Max             =   0
      Min             =   255
      TabIndex        =   29
      Top             =   2040
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   0
      Left            =   3120
      Max             =   0
      Min             =   255
      TabIndex        =   28
      Top             =   1680
      Width           =   255
   End
   Begin VB.VScrollBar VScroll1 
      Height          =   375
      Left            =   120
      Max             =   1
      Min             =   512
      TabIndex        =   26
      Top             =   120
      Value           =   1
      Width           =   255
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   9
      Left            =   2760
      TabIndex        =   24
      Text            =   "255"
      Top             =   4920
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   8
      Left            =   2760
      TabIndex        =   22
      Text            =   "255"
      Top             =   4560
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   7
      Left            =   2760
      TabIndex        =   20
      Text            =   "255"
      Top             =   4200
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   6
      Left            =   2760
      TabIndex        =   18
      Text            =   "255"
      Top             =   3840
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   5
      Left            =   2760
      TabIndex        =   16
      Text            =   "255"
      Top             =   3480
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   4
      Left            =   2760
      TabIndex        =   14
      Text            =   "255"
      Top             =   3120
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   3
      Left            =   2760
      TabIndex        =   12
      Text            =   "255"
      Top             =   2760
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   2
      Left            =   2760
      TabIndex        =   11
      Text            =   "255"
      Top             =   2400
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   1
      Left            =   2760
      TabIndex        =   9
      Text            =   "255"
      Top             =   2040
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   0
      Left            =   2760
      TabIndex        =   7
      Text            =   "255"
      Top             =   1680
      Width           =   375
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Agregar Equipos"
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Top             =   1200
      Width           =   3255
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   120
      TabIndex        =   5
      Text            =   "Text3"
      Top             =   840
      Width           =   2535
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H8000000C&
      Caption         =   "Cross Fader"
      Height          =   375
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   120
      Width           =   975
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   375
      Left            =   3120
      Max             =   0
      Min             =   26
      TabIndex        =   2
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox Text2 
      Enabled         =   0   'False
      Height          =   375
      Left            =   2280
      TabIndex        =   1
      Text            =   "OFF"
      Top             =   120
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Text            =   "1"
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   12
      Left            =   120
      TabIndex        =   52
      Top             =   6000
      Width           =   2625
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   11
      Left            =   120
      TabIndex        =   51
      Top             =   5640
      Width           =   2625
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Posición"
      Height          =   195
      Left            =   120
      TabIndex        =   44
      Top             =   6960
      Width           =   600
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Escala"
      Height          =   195
      Left            =   120
      TabIndex        =   42
      Top             =   6480
      Width           =   480
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   10
      Left            =   120
      TabIndex        =   40
      Top             =   5280
      Width           =   2625
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   2
      Left            =   120
      TabIndex        =   27
      Top             =   2400
      Width           =   2625
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   9
      Left            =   120
      TabIndex        =   25
      Top             =   4920
      Width           =   2625
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   8
      Left            =   120
      TabIndex        =   23
      Top             =   4560
      Width           =   2625
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   7
      Left            =   120
      TabIndex        =   21
      Top             =   4200
      Width           =   2625
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   6
      Left            =   120
      TabIndex        =   19
      Top             =   3840
      Width           =   2625
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   5
      Left            =   120
      TabIndex        =   17
      Top             =   3480
      Width           =   2625
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   4
      Left            =   120
      TabIndex        =   15
      Top             =   3120
      Width           =   2625
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   3
      Left            =   120
      TabIndex        =   13
      Top             =   2760
      Width           =   2625
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   1
      Left            =   120
      TabIndex        =   10
      Top             =   2040
      Width           =   2625
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   0
      Left            =   120
      TabIndex        =   8
      Top             =   1680
      Width           =   2625
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Etiqueta del Canal"
      Height          =   195
      Left            =   120
      TabIndex        =   4
      Top             =   600
      Width           =   1290
   End
End
Attribute VB_Name = "Asignar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Combo1_Change()
Combo1.ListIndex
End Sub

Private Sub Command1_Click()
    HScroll1.Value = 100
End Sub

Private Sub Command2_Click()
    HScroll2.Value = 127
End Sub

Private Sub Command3_Click()
    If Cross(VScroll1.Value) = True Then
        Cross(VScroll1.Value) = False
    Else
        Cross(VScroll1.Value) = True
    End If
    ActualizarAsignar
End Sub

Private Sub Command4_Click()
  '  AgregarEquipo.Text1 = 1
  '  AgregarEquipo.Text2 = 1
    If PlayStop = False Then
        AgregarEquipo.Show
    End If
End Sub

Private Sub Command5_Click()
    If Invertido(VScroll1.Value) = True Then
        Invertido(VScroll1.Value) = False
    Else
        Invertido(VScroll1.Value) = True
    End If
    ActualizarAsignar
End Sub

Private Sub Form_Load()
    VScroll2.Min = CantMasters
    For I = 1 To CantidadMaxMacros
        Asignar.VScroll3(I - 1).Value = Macros(Asignar.VScroll1.Value, I - 1)
    Next I
    Call VScroll1_Change
    ActualizarAsignar
End Sub

Private Sub HScroll1_Change()
    Escala(VScroll1.Value) = HScroll1.Value / 100
End Sub

Private Sub HScroll1_Scroll()
    Call HScroll1_Change
End Sub

Private Sub HScroll2_Change()
    Posicion(VScroll1.Value) = HScroll2.Value
End Sub

Private Sub HScroll2_Scroll()
    Call HScroll2_Change
End Sub

Private Sub Text3_Change()
    EtiquetaCanal(VScroll1.Value) = Text3.Text
    ActualizarAsignar
    ActualizarConsola
End Sub

'Macros(Asignar.VScroll1.Value, Index + 1) = Asignar.Text4(Index)

Private Sub VScroll1_Change()
    Text1.Text = VScroll1.Value
    VScroll2.Value = AsignacionCanal(VScroll1.Value)
    HScroll1.Value = Escala(VScroll1.Value) * 100
    HScroll2.Value = Posicion(VScroll1.Value)
    For I = 1 To CantidadMaxMacros
        Asignar.VScroll3(I - 1).Value = Macros(Asignar.VScroll1.Value, I - 1)
    Next I
    ActualizarAsignar
End Sub

Private Sub VScroll2_Change()
    AsignacionCanal(VScroll1.Value) = VScroll2.Value
    ActualizarAsignar
End Sub

Private Sub VScroll3_Change(Index As Integer)
    Macros(VScroll1.Value, Index) = VScroll3(Index).Value
    ActualizarAsignar
End Sub
