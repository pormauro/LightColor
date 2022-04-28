VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form AgregarEquipo 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Agregar Equipos"
   ClientHeight    =   1575
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   2775
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   1575
   ScaleWidth      =   2775
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command1 
      Caption         =   "Finalizar"
      Height          =   255
      Left            =   240
      TabIndex        =   7
      Top             =   1200
      Width           =   2415
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   1800
      TabIndex        =   5
      Text            =   "0"
      Top             =   840
      Width           =   855
   End
   Begin MSComDlg.CommonDialog CommonDialog2 
      Left            =   0
      Top             =   1080
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   1800
      TabIndex        =   3
      Text            =   "1"
      Top             =   480
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1800
      TabIndex        =   2
      Text            =   "1"
      Top             =   120
      Width           =   855
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   4080
      Top             =   2520
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label1 
      Caption         =   "Canales entre equipos"
      Height          =   195
      Left            =   120
      TabIndex        =   6
      Top             =   840
      Width           =   1575
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "Asignar a master"
      Height          =   195
      Left            =   120
      TabIndex        =   4
      Top             =   2400
      Width           =   1170
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "CanalInicial"
      Height          =   195
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   810
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Cantidad de equipos"
      Height          =   195
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1455
   End
End
Attribute VB_Name = "AgregarEquipo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
    CommonDialog1.Filter = "Equipo de Iluminación (*.LIB)|*.LIB"
    CommonDialog1.InitDir = App.Path & "\Equipos"

    CommonDialog1.DialogTitle = "Seleccione un Equipo para Agregar"
    CommonDialog1.ShowOpen
    If CommonDialog1.FileName <> "" Then
        'abrir archivo
        ArchivoActualEquipo = CommonDialog1.FileName
        NumArchivo = FreeFile
        Open ArchivoActualEquipo For Input As #NumArchivo
            Line Input #NumArchivo, aux
            AUXNombre = Mid(aux, 2, Len(aux) - 2)
            Line Input #NumArchivo, aux
            AUXCantidadCanales = aux
            For K = 1 To CantMaxCanales
                Line Input #NumArchivo, aux
                AUXTipoCanal(K) = aux
                Line Input #NumArchivo, aux
                AUXOtro(K) = Mid(aux, 2, Len(aux) - 2)
                Line Input #NumArchivo, aux
                AUXInvertido(K) = aux
                For J = 1 To CantidadMaxMacros
                    Line Input #NumArchivo, aux
                    AUXMacros(K, J) = aux
                Next J
            Next K
            Line Input #NumArchivo, aux
            AUXPorsPAN = aux
            Line Input #NumArchivo, aux
            AUXPorsTILT = aux
        Close #NumArchivo
        
        Dim NumCanal As Integer, ClrCanal As Byte
        
        If CantCanalesDMX >= (Text1.Text) * AUXCantidadCanales + Text2.Text - 1 Then
            For e = 0 To Text1.Text - 1
                ClrCanal = e - Int(e / 8) * 8 + 2
                For f = 1 To AUXCantidadCanales
                    NumCanal = Text2.Text + (e * (AUXCantidadCanales + Text3.Text) + f - 1)
                    BorrarCanal (NumCanal)
                    FondoPote(NumCanal) = ClrCanal
                    For J = 1 To CantidadMaxMacros
                        Macros(NumCanal, J - 1) = AUXMacros(f, J)
                    Next J
                    If 0 < AUXTipoCanal(f) Then
                        EtiquetaCanal(NumCanal) = AUXNombre & "(" & e + 1 & ") - " & TablaTipoCanal(AUXTipoCanal(f)) 'Le coloco una etiqueta Predetrminada
                    Else
                        EtiquetaCanal(NumCanal) = AUXNombre & "(" & e + 1 & ") - " & AUXOtro(f) 'Le coloco una etiqueta puesta por el usuario
                    End If
                    Cross(NumCanal) = CrossTipoCanal(AUXTipoCanal(f))
                    Invertido(NumCanal) = AUXInvertido(f)
                    AsignacionCanal(NumCanal) = NumeroMasterTipoCanal(AUXTipoCanal(f))
                    Select Case AUXTipoCanal(f)
                        Case 1:
                            MartizDMX(1, 1, NumCanal) = 127
                            
                            MartizDMX(2, 1, NumCanal) = 0
                            MartizDMX(2, 2, NumCanal) = 0
                            MartizDMX(2, 3, NumCanal) = 255
                            MartizDMX(2, 4, NumCanal) = 255
                            
                            MartizDMX(3, 1, NumCanal) = 0
                            MartizDMX(3, 2, NumCanal) = 255
                            MartizDMX(3, 3, NumCanal) = 0
                            MartizDMX(3, 4, NumCanal) = 255
                            
                            MartizDMX(4, 1, NumCanal) = 0
                            MartizDMX(4, 2, NumCanal) = 255
                            MartizDMX(4, 3, NumCanal) = 127
                            
                            MartizDMX(5, 1, NumCanal) = 167
                            MartizDMX(5, 2, NumCanal) = 23
                            MartizDMX(5, 3, NumCanal) = 23
                            MartizDMX(5, 4, NumCanal) = 167
                            MartizDMX(5, 5, NumCanal) = 255
                         
                            MartizDMX(6, 1, NumCanal) = 217
                            MartizDMX(6, 2, NumCanal) = 127
                            MartizDMX(6, 3, NumCanal) = 37
                            MartizDMX(6, 4, NumCanal) = 0
                            MartizDMX(6, 5, NumCanal) = 37
                            MartizDMX(6, 6, NumCanal) = 127
                            MartizDMX(6, 7, NumCanal) = 217
                            MartizDMX(6, 8, NumCanal) = 254
                            
                            Escala(NumCanal) = AUXPorsPAN / 100
                            
                        Case 2:
                            MartizDMX(1, 1, NumCanal) = 127
                            
                            MartizDMX(2, 1, NumCanal) = 0
                            MartizDMX(2, 2, NumCanal) = 255
                            MartizDMX(2, 3, NumCanal) = 255
                            MartizDMX(2, 4, NumCanal) = 0
                            
                            MartizDMX(3, 1, NumCanal) = 0
                            MartizDMX(3, 2, NumCanal) = 255
                            MartizDMX(3, 3, NumCanal) = 255
                            MartizDMX(3, 4, NumCanal) = 0
                            
                            MartizDMX(4, 1, NumCanal) = 0
                            MartizDMX(4, 2, NumCanal) = 0
                            MartizDMX(4, 3, NumCanal) = 255
                            
                            MartizDMX(5, 1, NumCanal) = 249
                            MartizDMX(5, 2, NumCanal) = 202
                            MartizDMX(5, 3, NumCanal) = 52
                            MartizDMX(5, 4, NumCanal) = 5
                            MartizDMX(5, 5, NumCanal) = 127
                         
                            MartizDMX(6, 1, NumCanal) = 217
                            MartizDMX(6, 2, NumCanal) = 254
                            MartizDMX(6, 3, NumCanal) = 217
                            MartizDMX(6, 4, NumCanal) = 127
                            MartizDMX(6, 5, NumCanal) = 37
                            MartizDMX(6, 6, NumCanal) = 0
                            MartizDMX(6, 7, NumCanal) = 37
                            MartizDMX(6, 8, NumCanal) = 127
                            'AsignacionCanal(NumCanal) = 17
                            Escala(NumCanal) = AUXPorsTILT / 100
                    End Select
                        If AUXTipoCanal(f) = 1 Or AUXTipoCanal(f) = 2 Then
                            Dim CantDiv2 As Single, CantDiv2Int As Byte
                            Dim G As Byte, H As Byte
                            CantDiv2 = e / 2
                            CantDiv2Int = Int(CantDiv2)
                            For G = 2 To 6
                                If CantDiv2 <> CantDiv2Int Then 'Si es impar, invierto los canales
                                    For H = 1 To UltimoPaso(G)
                                        MartizDMX(G, H, NumCanal) = 255 - MartizDMX(G, H, NumCanal)
                                    Next H
                                End If
                                Call AtrasarPrograma(G, CantDiv2Int, NumCanal)
                            Next G
                        End If
                Next f
            Next e
        Else
            MsgBox "Se sobrepaso los 512 Canales. No se agregó ningún equípo!"
        End If
    Else
       MsgBox "No se seleccionó ningún Equipo"
    End If
    
    Dim AUXEtiq As Byte
    Dim EtiquetaAnterior As String
    Dim Color As Boolean
    
    Color = False
    
    For u = 1 To CantCanalesDMX
        cant = InStr(EtiquetaCanal(u), "-")
        If cant = 0 Then
            lalala = ""
        Else
            lalala = Mid(EtiquetaCanal(u), 1, cant - 1)
        End If
        If lalala <> lalalamenosuno Then
            If Color = True Then
                Color = False
            Else
                Color = True
            End If
        End If
       ' FondoPote(u) = Color
        lalalamenosuno = lalala
        
    Next u
    
    
    ActualizarMasters
    Asignar.VScroll1.Value = 1
    ActualizarConsola
    Unload Me

End Sub

Private Sub Form_Load()
    Consola.Enabled = False
    Asignar.Enabled = False
 '   Monitor.Enabled = False
    Programas.Enabled = False
    Editor.Enabled = False
    Masters.Enabled = False
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Consola.Enabled = True
    Asignar.Enabled = True
 '   Monitor.Enabled = True
    Programas.Enabled = True
    Editor.Enabled = True
    Masters.Enabled = True
End Sub

