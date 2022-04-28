VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.MDIForm Contenedor 
   BackColor       =   &H8000000C&
   Caption         =   "Light Color v1.1"
   ClientHeight    =   3780
   ClientLeft      =   225
   ClientTop       =   855
   ClientWidth     =   5715
   Icon            =   "MDIForm1.frx":0000
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   720
      Top             =   120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Timer Timer1 
      Interval        =   50
      Left            =   120
      Top             =   120
   End
   Begin VB.Menu mArchivo 
      Caption         =   "Archivo"
      Begin VB.Menu mAbrir 
         Caption         =   "Abrir"
         Shortcut        =   {F2}
      End
      Begin VB.Menu mGuardar 
         Caption         =   "Guardar..."
      End
      Begin VB.Menu mGuardarComo 
         Caption         =   "Guardar Como"
      End
      Begin VB.Menu mAgregarEquipos 
         Caption         =   "Agregar Equipos"
         Shortcut        =   {F8}
      End
      Begin VB.Menu mEditorEquipos 
         Caption         =   "Editor de Equipos"
      End
      Begin VB.Menu mBorrar 
         Caption         =   "Limpiar Canales"
      End
      Begin VB.Menu mSalir 
         Caption         =   "Salir"
      End
   End
   Begin VB.Menu mEdicion 
      Caption         =   "Edición"
      Enabled         =   0   'False
   End
   Begin VB.Menu mDestildarFreeze 
      Caption         =   "Descongelar Todo"
   End
   Begin VB.Menu mBlackOut 
      Caption         =   "BlackOut OFF"
   End
End
Attribute VB_Name = "Contenedor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub mAgregarEquipos_Click()
    If PlayStop = False Then
        AgregarEquipo.Show
    End If
End Sub

Private Sub mDestildarFreeze_Click()
    For i = 1 To CantMaxCanales
        FreezeActivado(i) = False
    Next i
    Masters.Check2.Value = 0
    ActualizarMasters
End Sub

Private Sub mGuardarComo_Click()
    CommonDialog1.DialogTitle = "Seleccione un SHOW o Nombre para Guardar"
    CommonDialog1.ShowSave
    If CommonDialog1.FileName <> "" Then
        'guardar archivo
        ArchivoActual = CommonDialog1.FileName
        GuardarArchivo
    Else
       MsgBox "No se seleccionó ningún archivo"
    End If
End Sub

Private Sub mAbrir_Click()
    CommonDialog1.DialogTitle = "Seleccione un SHOW para Abrir"
    CommonDialog1.ShowOpen
    If CommonDialog1.FileName <> "" Then
        'abrir archivo
        ArchivoActual = CommonDialog1.FileName
        AbrirArchivo
    Else
       MsgBox "No se seleccionó ningún archivo"
    End If
    ActualizarConsola
End Sub

Private Sub mBlackOut_Click()
    If BlackOut = True Then
        BlackOut = False
        mBlackOut.Caption = "BlackOut OFF"
    Else
        BlackOut = True
        mBlackOut.Caption = "BlackOut ON"
    End If
End Sub

Private Sub mBorrar_Click()
Borrar.Show
End Sub

Private Sub MDIForm_Load()
    CargarEtiquetaMasters
    CargarTablaTipoCanal
    CantidadEquiposActual = 0
    AumentoTiempo = 1
    'Seteo el CommonDialog1
    CommonDialog1.Filter = "Archivo de Show (*.PPL)|*.PPL"
    CommonDialog1.InitDir = App.Path & "\Shows"

    BlackOut = False
    Me.WindowState = 2 'Inica la ventana Maximisada
    'Carga un archivo generico
    For i = 0 To CantCanalesDMX
        Cross(i) = False
        FondoPote(i) = 1
        Escala(i) = 1
        Posicion(i) = 127
    Next i
    
    For i = 1 To CantProgramas
        EtiquetaPrograma(i) = "Programa " & i
        UltimoPaso(i) = 1
        For J = 1 To CantPasosProgramas
            TiempoPaso(i, J) = 1
        Next J
    Next i

    Call PreValoresMovimientos
    
    A = 0
    mEditorEquipos.Visible = False
    mAgregarEquipos.Visible = False
    mGuardar.Visible = False
    mGuardarComo.Visible = False
    mBorrar.Visible = False
    
    Consola.top = Masters.Height + 3 * A
    Consola.left = A
    Consola.Show
    Consola.Visible = False
    Asignar.top = A
    Asignar.left = Programas.Width + Masters.Width
    Asignar.Show
    Asignar.Visible = False
    ProgramaActual = 1: PasoActual = 1
    PalyStop = False
    Programas.Show
    Programas.top = A
    Programas.left = A
    ActualizarProgramas
    Editor.top = Masters.Height + 3 * A
    Editor.left = Consola.Width
    Editor.Show
    Editor.Visible = False
    ActualizarEditor
    Masters.Show
    Masters.top = A
    Masters.left = Programas.Width + 3 * A
    Masters.Command4.Visible = False
    
  '  Monitor.Show

        'Cargo la dirección del ultimo archivo y lo abro
'    NumArchivo = FreeFile
'    Open App.Path & "\Config.con" For Input As #NumArchivo
'        Line Input #NumArchivo, AUX
'        ArchivoActual = Mid(AUX, 2, Len(AUX) - 2)
'        UltimoArchivo = ArchivoActual
'    Close #NumArchivo
'    If ArchivoActual <> "" Then
'        AbrirArchivo
'    End If
End Sub

Private Sub MDIForm_Unload(Cancel As Integer)
    OpenDmx.done
    End
End Sub

Private Sub mEditorEquipos_Click()
EditorEquipos.Show
End Sub

Private Sub mGuardar_Click()
    If ArchivoActual <> "" Then
        GuardarArchivo
    Else
        MsgBox "No se selecciono archivo"
    End If
End Sub

Private Sub mSalir_Click()
    OpenDmx.done
    Unload Me
    End Sub

Private Sub Timer1_Timer()

    'Cargo la trama DMX en la Interface
    Call OpenDmx.set_dmx(ValorDMXActual)
    
    'Envio el paquete desde la interface hacia las luces!
    Call OpenDmx.send
    
    '----------------------------------------------------------------------------------------------------------
    
    Dim i As Integer
    If PlayStop = True Then
        For i = 0 To CantPotes - 1
            Consola.Slider1(i).Enabled = False
        Next i
        Me.BackColor = &H8000000C
        'Calculo AumentoCrossFader(512) y AcumCrossFader(512)
        If TiempoPasoAcual = 0 Then
            For i = 1 To CantCanalesDMX
                If Cross(i) = True Then
                    If PasoActual = UltimoPaso(ProgramaActual) Then
                        'Cuando sea el ultimo paso
                        auxa = MartizDMX(ProgramaActual, 1, i)
                        auxb = MartizDMX(ProgramaActual, PasoActual, i)
                        AumentoCrossFader(i) = (auxa - auxb) / TiempoPaso(ProgramaActual, PasoActual)
                    Else
                        'Cuando dea un paso intermedio
                        auxa = Int(MartizDMX(ProgramaActual, PasoActual + 1, i))
                        auxb = Int(MartizDMX(ProgramaActual, PasoActual, i))
                        AumentoCrossFader(i) = (auxa - auxb) / TiempoPaso(ProgramaActual, PasoActual)
                    End If
                Else
                    'Cuando no tenga cross
                    AumentoCrossFader(i) = 0
                End If
                AcumCrossFader(i) = MartizDMX(ProgramaActual, PasoActual, i)
            Next i
        End If

        'Calculo ValorDMXActual(512) con cross
            For i = 1 To CantCanalesDMX
                AcumCrossFader(i) = AcumCrossFader(i) + AumentoCrossFader(i) * AumentoTiempo
                If Abs(AcumCrossFader(i)) > 255 Then
                    ValorDMXActual(i - 1) = 255
                Else
                    ValorDMXActual(i - 1) = Abs(AcumCrossFader(i))
                End If
            Next i

        'Calculo para la proxima tirada TiempoPasoAcual y PasoActual
        If TiempoPasoAcual >= TiempoPaso(ProgramaActual, PasoActual) - 1 Then
            TiempoPasoAcual = 0
            If PasoActual = UltimoPaso(ProgramaActual) Then
                PasoActual = 1
            Else
                PasoActual = PasoActual + 1
            End If
            Editor.VScroll1.Value = PasoActual
            Editor.HScroll1.Value = TiempoPaso(ProgramaActual, PasoActual)
        Else
            TiempoPasoAcual = TiempoPasoAcual + AumentoTiempo
            If TiempoPaso(ProgramaActual, PasoActual) < TiempoPasoAcual Then TiempoPasoAcual = TiempoPaso(ProgramaActual, PasoActual)
        End If

    Else
        For i = 0 To CantPotes - 1
            Consola.Slider1(i).Enabled = True
        Next i
        Me.BackColor = vbRed
        'Calculo ValorDMXActual(512) para cuando está en Stop
        For i = 1 To CantCanalesDMX
            ValorDMXActual(i - 1) = MartizDMX(ProgramaActual, PasoActual, i) 'valor correspondiente al paso y a la escena(consola)
        Next i
    End If

    'Tambien modifico Escala y Posicion
    For i = 1 To CantCanalesDMX
            pre = ValorDMXActual(i - 1) - 127
            AUXSalida = Int(Escala(i) * pre) + Posicion(i)

            If AUXSalida < 0 Then
                ValorDMXActual(i - 1) = 0
            Else
                If AUXSalida > 255 Then
                    ValorDMXActual(i - 1) = 255
                Else
                    ValorDMXActual(i - 1) = AUXSalida
                End If
            End If
    Next i

    
    'Piso los canales con los masters
    For i = 1 To CantCanalesDMX
        If FreezeActivado(i) = True Then
            ValorDMXActual(i - 1) = FreezeValor(i)
        Else
            If 0 < AsignacionCanal(i) Then
                If MasterAbilitado(AsignacionCanal(i) - 1) = True Then   ' ABCDEFGH Master
                    If AsignacionCanal(i) - 1 < CantMasters - CantMasterMacros Then
                        ValorDMXActual(i - 1) = ValorMaster(AsignacionCanal(i) - 1)
                    Else
                        X = Int(AsignacionCanal(i) - 1 - CantMasters + CantMasterMacros) + 1
                        ValorDMXActual(i - 1) = Macros(i, MacroActual(X))
                    End If
                End If
            End If
        End If
        If Invertido(i) = True Then ValorDMXActual(i - 1) = 255 - ValorDMXActual(i - 1)
    Next i
    
    ' Actualizo la barra de progreso
    Editor.ProgressBar1.Max = TiempoPaso(ProgramaActual, PasoActual)
    Editor.ProgressBar1.Value = Int(TiempoPasoAcual)

    'BlackOut
    If BlackOut = True Then
        For i = 1 To CantCanalesDMX
            ValorDMXActual(i - 1) = 0
        Next i
    End If
    

    
    'Mestreo en el Monitor
  '  Dim A As String
  '  For i = 1 To 512
  '  A = A & ValorDMXActual(i - 1) & " "
  '  Next i
  '  Monitor.Text1.Text = A

End Sub

