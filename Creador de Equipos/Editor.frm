VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form EditorEquipos 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Editor de Equipos"
   ClientHeight    =   6615
   ClientLeft      =   150
   ClientTop       =   780
   ClientWidth     =   5655
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6615
   ScaleWidth      =   5655
   StartUpPosition =   3  'Windows Default
   Begin VB.VScrollBar TILTp 
      Height          =   255
      Left            =   2400
      Max             =   1
      Min             =   100
      TabIndex        =   60
      Top             =   480
      Value           =   100
      Width           =   255
   End
   Begin VB.VScrollBar PANp 
      Height          =   255
      Left            =   1080
      Max             =   1
      Min             =   100
      TabIndex        =   59
      Top             =   480
      Value           =   100
      Width           =   255
   End
   Begin VB.TextBox Text2 
      Enabled         =   0   'False
      Height          =   285
      Left            =   2040
      TabIndex        =   56
      Text            =   "100"
      Top             =   480
      Width           =   375
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   285
      Left            =   720
      TabIndex        =   55
      Text            =   "100"
      Top             =   480
      Width           =   375
   End
   Begin VB.Frame Frame2 
      BorderStyle     =   0  'None
      Caption         =   "Frame2"
      Height          =   6015
      Left            =   120
      TabIndex        =   53
      Top             =   6600
      Width           =   5415
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   12
      Left            =   3840
      TabIndex        =   51
      Text            =   "255"
      Top             =   6240
      Width           =   375
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   12
      Left            =   4200
      Max             =   0
      Min             =   255
      TabIndex        =   50
      Top             =   6240
      Width           =   255
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   11
      Left            =   3840
      TabIndex        =   48
      Text            =   "255"
      Top             =   5880
      Width           =   375
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   11
      Left            =   4200
      Max             =   0
      Min             =   255
      TabIndex        =   47
      Top             =   5880
      Width           =   255
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   0
      Left            =   3840
      TabIndex        =   35
      Text            =   "255"
      Top             =   1920
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   1
      Left            =   3840
      TabIndex        =   34
      Text            =   "255"
      Top             =   2280
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   2
      Left            =   3840
      TabIndex        =   33
      Text            =   "255"
      Top             =   2640
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   3
      Left            =   3840
      TabIndex        =   32
      Text            =   "255"
      Top             =   3000
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   4
      Left            =   3840
      TabIndex        =   31
      Text            =   "255"
      Top             =   3360
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   5
      Left            =   3840
      TabIndex        =   30
      Text            =   "255"
      Top             =   3720
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   6
      Left            =   3840
      TabIndex        =   29
      Text            =   "255"
      Top             =   4080
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   7
      Left            =   3840
      TabIndex        =   28
      Text            =   "255"
      Top             =   4440
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   8
      Left            =   3840
      TabIndex        =   27
      Text            =   "255"
      Top             =   4800
      Width           =   375
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   9
      Left            =   3840
      TabIndex        =   26
      Text            =   "255"
      Top             =   5160
      Width           =   375
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   0
      Left            =   4200
      Max             =   0
      Min             =   255
      TabIndex        =   25
      Top             =   1920
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   1
      Left            =   4200
      Max             =   0
      Min             =   255
      TabIndex        =   24
      Top             =   2280
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   2
      Left            =   4200
      Max             =   0
      Min             =   255
      TabIndex        =   23
      Top             =   2640
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   3
      Left            =   4200
      Max             =   0
      Min             =   255
      TabIndex        =   22
      Top             =   3000
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   4
      Left            =   4200
      Max             =   0
      Min             =   255
      TabIndex        =   21
      Top             =   3360
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   5
      Left            =   4200
      Max             =   0
      Min             =   255
      TabIndex        =   20
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   6
      Left            =   4200
      Max             =   0
      Min             =   255
      TabIndex        =   19
      Top             =   4080
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   7
      Left            =   4200
      Max             =   0
      Min             =   255
      TabIndex        =   18
      Top             =   4440
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   8
      Left            =   4200
      Max             =   0
      Min             =   255
      TabIndex        =   17
      Top             =   4800
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   9
      Left            =   4200
      Max             =   0
      Min             =   255
      TabIndex        =   16
      Top             =   5160
      Width           =   255
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Index           =   10
      Left            =   4200
      Max             =   0
      Min             =   255
      TabIndex        =   15
      Top             =   5520
      Width           =   255
   End
   Begin VB.TextBox Text4 
      Enabled         =   0   'False
      Height          =   285
      Index           =   10
      Left            =   3840
      TabIndex        =   14
      Text            =   "255"
      Top             =   5520
      Width           =   375
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   360
      Top             =   3000
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame1 
      Caption         =   "Configuración de Canales"
      Height          =   975
      Left            =   120
      TabIndex        =   5
      Top             =   840
      Width           =   5415
      Begin VB.CommandButton Command1 
         Caption         =   "Invertir"
         Height          =   255
         Left            =   4560
         Style           =   1  'Graphical
         TabIndex        =   54
         Top             =   600
         Width           =   735
      End
      Begin VB.TextBox TextOtro 
         Height          =   285
         Left            =   840
         TabIndex        =   12
         Text            =   "TextOtro"
         Top             =   600
         Width           =   3615
      End
      Begin VB.VScrollBar VScroll4 
         Height          =   255
         Left            =   5040
         Max             =   0
         Min             =   23
         TabIndex        =   11
         Top             =   240
         Value           =   20
         Width           =   255
      End
      Begin VB.TextBox TextTipoCanal 
         Enabled         =   0   'False
         Height          =   285
         Left            =   2760
         TabIndex        =   10
         Text            =   "TextTipoCanal"
         Top             =   240
         Width           =   2295
      End
      Begin VB.VScrollBar CanalActual 
         Height          =   255
         Left            =   1320
         Max             =   1
         Min             =   1
         TabIndex        =   8
         Top             =   240
         Value           =   1
         Width           =   255
      End
      Begin VB.TextBox NCanal 
         Enabled         =   0   'False
         Height          =   285
         Left            =   600
         TabIndex        =   7
         Text            =   "NCanal"
         Top             =   240
         Width           =   735
      End
      Begin VB.Label Labela 
         AutoSize        =   -1  'True
         Caption         =   "Generico"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   13
         Top             =   600
         Width           =   645
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Tipo de Canal"
         Height          =   195
         Left            =   1680
         TabIndex        =   9
         Top             =   240
         Width           =   990
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Canal"
         Height          =   195
         Left            =   120
         TabIndex        =   6
         Top             =   240
         Width           =   405
      End
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   255
      Left            =   5280
      Max             =   1
      Min             =   32
      TabIndex        =   4
      Top             =   480
      Value           =   1
      Width           =   255
   End
   Begin VB.TextBox CantCanales 
      Enabled         =   0   'False
      Height          =   285
      Left            =   4560
      TabIndex        =   3
      Text            =   "CantCanales"
      Top             =   480
      Width           =   735
   End
   Begin VB.TextBox TextNombre 
      Height          =   285
      Left            =   720
      TabIndex        =   0
      Text            =   "TextNombre"
      Top             =   120
      Width           =   4815
   End
   Begin VB.Label Label7 
      Caption         =   "TILT %"
      Height          =   255
      Left            =   1440
      TabIndex        =   58
      Top             =   480
      Width           =   615
   End
   Begin VB.Label Label5 
      Caption         =   "PAN %"
      Height          =   255
      Left            =   120
      TabIndex        =   57
      Top             =   480
      Width           =   615
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
      Left            =   1200
      TabIndex        =   52
      Top             =   6240
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
      Left            =   1200
      TabIndex        =   49
      Top             =   5880
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
      Left            =   1200
      TabIndex        =   46
      Top             =   1920
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
      Left            =   1200
      TabIndex        =   45
      Top             =   2280
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
      Left            =   1200
      TabIndex        =   44
      Top             =   3000
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
      Left            =   1200
      TabIndex        =   43
      Top             =   3360
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
      Left            =   1200
      TabIndex        =   42
      Top             =   3720
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
      Left            =   1200
      TabIndex        =   41
      Top             =   4080
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
      Left            =   1200
      TabIndex        =   40
      Top             =   4440
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
      Left            =   1200
      TabIndex        =   39
      Top             =   4800
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
      Left            =   1200
      TabIndex        =   38
      Top             =   5160
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
      Left            =   1200
      TabIndex        =   37
      Top             =   2640
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
      Index           =   10
      Left            =   1200
      TabIndex        =   36
      Top             =   5520
      Width           =   2625
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Cantidad de canales"
      Height          =   195
      Left            =   3000
      TabIndex        =   2
      Top             =   480
      Width           =   1455
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre"
      Height          =   195
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   555
   End
   Begin VB.Menu mArchivo 
      Caption         =   "Archivo"
      Begin VB.Menu mAbrir 
         Caption         =   "Abrir"
         Shortcut        =   ^A
      End
      Begin VB.Menu mGuardar 
         Caption         =   "Guardar"
         Shortcut        =   ^G
      End
      Begin VB.Menu mSalir 
         Caption         =   "Salir"
         Shortcut        =   ^S
      End
   End
End
Attribute VB_Name = "EditorEquipos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub CanalActual_Change()
    For I = 1 To CantidadMaxMacros
        VScroll3(I - 1).Value = MacrosEquipo(CanalActual.Value, I)
    Next I
    Actualizar1
End Sub

Private Sub Command1_Click()
    If Invertir(CanalActual.Value) = True Then
        Invertir(CanalActual.Value) = False
    Else
        Invertir(CanalActual.Value) = True
    End If
    Actualizar1
End Sub

Private Sub Form_Load()
    'Seteo el CommonDialog1
    CommonDialog1.Filter = "Equipo de Iluminación (*.LIB)|*.LIB"
    CommonDialog1.InitDir = App.Path & "\Equipos"
    VScroll4.Min = CantidadTipoCanal
    
    CargarTablaTipoCanal
    ArchivoNuevo
    Actualizar1
End Sub

Private Sub mAbrir_Click()
    CommonDialog1.DialogTitle = "Seleccione un Equipo para Abrir"
    CommonDialog1.ShowOpen
    If CommonDialog1.FileName <> "" Then
        'abrir archivo
        ArchivoActualEditor = CommonDialog1.FileName
        NumArchivo = FreeFile
        Open ArchivoActualEditor For Input As #NumArchivo
            Line Input #NumArchivo, aux
            Nombre = Mid(aux, 2, Len(aux) - 2)
            Line Input #NumArchivo, aux
            CantidadCanales = aux
            For K = 1 To CantMaxCanales
                Line Input #NumArchivo, aux
                TipoCanal(K) = aux
                Line Input #NumArchivo, aux
                Otro(K) = Mid(aux, 2, Len(aux) - 2)
                Line Input #NumArchivo, aux
                Invertir(K) = aux
                For J = 1 To CantidadMaxMacros
                    Line Input #NumArchivo, aux
                    MacrosEquipo(K, J) = aux
                Next J
            Next K
            Line Input #NumArchivo, aux
            PorsPAN = aux
            EditorEquipos.PANp = PorsPAN
            Line Input #NumArchivo, aux
            PorsTILT = aux
            EditorEquipos.TILTp = PorsTILT
            EditorEquipos.CanalActual.Value = 1
        Close #NumArchivo
    Else
       MsgBox "No se seleccionó ningún Equipo"
    End If
    Actualizar1
End Sub

Private Sub mGuardar_Click()

    
    CommonDialog1.DialogTitle = "Seleccione un Equipo o Nombre para Guardar"
    CommonDialog1.ShowSave
    If CommonDialog1.FileName <> "" Then
        'guardar archivo
        ArchivoActualEditor = CommonDialog1.FileName
        NumArchivo = FreeFile
        Open ArchivoActualEditor For Output As #NumArchivo
            Write #NumArchivo, Nombre
            Write #NumArchivo, CantidadCanales
            For K = 1 To CantMaxCanales
                Write #NumArchivo, TipoCanal(K)
                Write #NumArchivo, Otro(K)
                Write #NumArchivo, Invertir(K)
                For J = 1 To CantidadMaxMacros
                    Write #NumArchivo, MacrosEquipo(K, J)
                Next J
            Next K
        Write #NumArchivo, PorsPAN
        Write #NumArchivo, PorsTILT
        Close #NumArchivo
    Else
       MsgBox "No se seleccionó ningún archivo"
    End If
End Sub

Private Sub mSalir_Click()
    Unload Me
End Sub

Private Sub PANp_Change()
    PorsPAN = PANp.Value
    Actualizar1
End Sub

Private Sub TextNombre_Change()
    Nombre = TextNombre.Text
    Actualizar1
End Sub

Private Sub TextOtro_Change()
    Otro(CanalActual.Value) = TextOtro.Text
    Actualizar1
End Sub

Private Sub TILTp_Change()
    PorsTILT = TILTp
    Actualizar1
End Sub

Private Sub VScroll2_Change()
    CantidadCanales = VScroll2.Value
    CanalActual.Value = 1
    CanalActual.Min = CantidadCanales
    Actualizar1
End Sub

Private Sub VScroll3_Change(Index As Integer)
    MacrosEquipo(CanalActual.Value, Index + 1) = VScroll3(Index).Value
    Actualizar1
End Sub

Private Sub VScroll4_Change()
    TipoCanal(CanalActual.Value) = VScroll4.Value
    Actualizar1
End Sub
