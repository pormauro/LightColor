Attribute VB_Name = "Actualizar"
'Constantes
Public Const CantCanalesDMX As Integer = 512
Public Const CantProgramas As Byte = 38
Public Const CantPasosProgramas As Byte = 20
Public Const CantMasters As Byte = 32
Public Const CantPotes As Byte = 24
Public Const CantMasterMacros As Byte = 10
Public Const ContraseñaProgramador As String = "ujm"

'Variables Globales
Public BlackOut As Boolean
Public PlayStop As Boolean 'Play = True    Stop = Fales
Public MasterAbilitado(CantMasters) As Boolean
Public ValorMaster(CantMasters) As Byte
Public ProgramaActual As Byte
Public PasoActual As Byte
Public TiempoPasoAcual As Double
Public AumentoTiempo As Double
Public MacroActual(CantMasterMacros) As Byte '''''''''''' AGREGAR al CARGAR UN EQUIPO
Public ValorDMXActual(CantCanalesDMX) As Byte
Public AcumCrossFader(CantCanalesDMX) As Double
Public AumentoCrossFader(CantCanalesDMX) As Double
Public ArchivoActual As String, NumArchivo As Byte
Public TT2(CantPotes) As New CBalloonToolTip    '//Demo for mouse over tooltip
Public ModoProgramador As Boolean
Public AcumContraseñaProgramador As String
Public FreezeActivado(CantCanalesDMX) As Boolean
Public FreezeValor(CantCanalesDMX) As Byte
Public AUXSalida As Integer
Public NumEtiqueta As Byte

'Archivo
Public Escala(CantCanalesDMX) As Single
Public Posicion(CantCanalesDMX) As Integer
Public EtiquetaPrograma(CantProgramas) As String
Public EtiquetaMasters(CantMasters) As String
Public AsignacionCanal(CantCanalesDMX) As Byte
Public Cross(CantCanalesDMX) As Boolean
Public Invertido(CantCanalesDMX) As Boolean
Public Macros(CantCanalesDMX, CantidadMaxMacros) As Byte
Public EtiquetaCanal(CantCanalesDMX) As String
Public FondoPote(CantCanalesDMX) As Byte
Public UltimoPaso(CantProgramas) As Byte
Public TiempoPaso(CantProgramas, CantPasosProgramas) As Byte
Public MartizDMX(CantProgramas, CantPasosProgramas, CantCanalesDMX) As Byte

'Editor
Public Sub ActualizarEditor()
If PasoActual = 1 And PlayStop = False Then
    Editor.Command3.Enabled = True
Else
    Editor.Command3.Enabled = False
End If
Editor.Label5.Caption = ProgramaActual
Editor.Text1.Text = PasoActual
Editor.Text2.Text = UltimoPaso(ProgramaActual)
Editor.Text3.Text = EtiquetaPrograma(ProgramaActual)
Editor.Label7 = TiempoPaso(ProgramaActual, PasoActual) / 20 & " Seg."
If PlayStop = False Then
    Editor.Command1.BackColor = vbRed
    Editor.VScroll1.Enabled = True
    Editor.VScroll2.Enabled = True
    Editor.HScroll1.Enabled = True
Else
    Editor.Command1.BackColor = &H8000000F
    Editor.VScroll1.Enabled = False
    Editor.VScroll2.Enabled = False
    Editor.HScroll1.Enabled = False
End If

End Sub

'Programas
Public Sub ActualizarProgramas()
For i = 1 To CantProgramas
    Programas.Command1(i - 1).Caption = EtiquetaPrograma(i)
Next i
End Sub


Public Sub ActualizarMasters()
    For i = 0 To CantMasters - CantMasterMacros - 1
        Masters.Label2(i).Caption = ValorMaster(i)
    Next i
    Masters.Label4.Caption = EtiquetaCanal(Masters.VScroll3.Value) 'Muestro la etiqueta de lo que se va a congelar
    Masters.Text1.Text = Masters.VScroll3.Value 'Muestro el canal
    Masters.Label5.Caption = FreezeValor(Masters.VScroll3.Value) 'Muestro el valor del canal
End Sub

Public Sub CargarEtiquetaMasters()
    EtiquetaMasters(0) = "OFF"
    EtiquetaMasters(1) = "Dimmer"
    EtiquetaMasters(2) = "Velocidad Motor"
    EtiquetaMasters(3) = "Rota Gobo"
    EtiquetaMasters(4) = "Prisma"
    EtiquetaMasters(5) = "Rota Prisma"
    EtiquetaMasters(6) = "Foco"
    EtiquetaMasters(7) = "Iris"
    EtiquetaMasters(8) = "LED Dimmer"
    EtiquetaMasters(9) = "Flash Dimmer"
    EtiquetaMasters(10) = ">W"
    EtiquetaMasters(11) = "1"
    EtiquetaMasters(12) = "2"
    EtiquetaMasters(13) = "3"
    EtiquetaMasters(14) = ">C"
    EtiquetaMasters(15) = ">Y"
    EtiquetaMasters(16) = ">M"
    EtiquetaMasters(17) = ">R"
    EtiquetaMasters(18) = ">G"
    EtiquetaMasters(19) = ">B"
    EtiquetaMasters(20) = "LED R"
    EtiquetaMasters(21) = "LED G"
    EtiquetaMasters(22) = "LED B"
    EtiquetaMasters(23) = "Shutter"
    EtiquetaMasters(24) = "Color"
    EtiquetaMasters(25) = "Gobo"
    EtiquetaMasters(26) = "Gobos Fijos"
    EtiquetaMasters(27) = "Reset"
    EtiquetaMasters(28) = "LED Shutter"
    EtiquetaMasters(29) = "LED Programas"
    EtiquetaMasters(30) = "Flash Shutter"
    EtiquetaMasters(31) = "Maquina de Humo"
    EtiquetaMasters(32) = ""
End Sub

Public Sub ApuntarMasterTabla(Función As Byte)
    NumEtiqueta = 0
    Select Case Función
        Case 23: 'Shutter
            NumEtiqueta = 3
        Case 24: 'Color
            NumEtiqueta = 6
        Case 25: 'Gobos
            NumEtiqueta = 7
        Case 26: 'Gobos Fijos
            NumEtiqueta = 11
        Case 27: 'Reset
            NumEtiqueta = 14
        Case 28: 'LED Shutter
            NumEtiqueta = 25
        Case 29: 'LED Programas
            NumEtiqueta = 27
        Case 30: 'Flash Shutter
            NumEtiqueta = 33
        Case 31: 'Maquina de Humo
            NumEtiqueta = 36
    End Select
End Sub

'Asignar
Public Sub ActualizarAsignar()
    Asignar.Text2.Text = EtiquetaMasters(Asignar.VScroll2)
    If Cross(Asignar.VScroll1.Value) = True Then
        Asignar.Command3.BackColor = &H8000000C
    Else
        Asignar.Command3.BackColor = &H8000000F
    End If
    If Invertido(Asignar.VScroll1.Value) = True Then
        Asignar.Command5.BackColor = &H8000000C
    Else
        Asignar.Command5.BackColor = &H8000000F
    End If
    Asignar.Text3.Text = EtiquetaCanal(Asignar.VScroll1.Value)
    For i = 1 To CantidadMaxMacros
        Asignar.Text4(i - 1) = Macros(Asignar.VScroll1.Value, i - 1)
    Next i
    ApuntarMasterTabla (Asignar.VScroll2)
    For i = 1 To CantidadMaxMacros
        Asignar.Label2(i - 1).Caption = EtiquetasPredeterminadasMacros(NumEtiqueta, i)
    Next i
End Sub

'Consola
Public Function Binario(ByVal Num As Long) As String
    'While num > 0
    For i = 1 To 10
        Binario = Num Mod 2 & Binario
        Num = Num \ 2
    Next i
    'Wend
End Function

Public Sub ActualizarConsola()
    For i = 0 To CantPotes - 1
        Consola.Label1(i).Caption = MartizDMX(ProgramaActual, PasoActual, Consola.Slider2.Value + i)
        Consola.Slider1(i) = 255 - MartizDMX(ProgramaActual, PasoActual, Consola.Slider2.Value + i)
        Consola.Label2(i).Caption = Consola.Slider2.Value + i
        TT2(i).Title = EtiquetaCanal(Consola.Slider2.Value + i)
        TT2(i).TipText = "Canal " & Consola.Slider2.Value + i
        TT2(i).CreateToolTip Consola.Slider1(i).hwnd
        TT2(i).VisibleTime = 650000
        
        Select Case FondoPote(Consola.Slider2.Value + i)
            Case 1:
                SetSolidColor Consola.Slider1(i).hwnd, &HFFFFFF
            Case 2:
                SetSolidColor Consola.Slider1(i).hwnd, &HFF&
            Case 3:
                SetSolidColor Consola.Slider1(i).hwnd, &H80FF&
            Case 4:
                SetSolidColor Consola.Slider1(i).hwnd, &HFFFF&
            Case 5:
                SetSolidColor Consola.Slider1(i).hwnd, &HFF00&
            Case 6:
                SetSolidColor Consola.Slider1(i).hwnd, &HFFFF00
            Case 7:
                SetSolidColor Consola.Slider1(i).hwnd, &HFF0000
            Case 8:
                SetSolidColor Consola.Slider1(i).hwnd, &HFF0080
            Case 9:
                SetSolidColor Consola.Slider1(i).hwnd, &HFF00FF
        End Select
        
      '
       ' If FondoPote(Consola.Slider2.Value + I) = True Then
       '     SetSolidColor Consola.Slider1(I).hwnd, &HC0C0C0
       ' Else
       '     SetSolidColor Consola.Slider1(I).hwnd, &HE0E0E0
       ' End If
    Next i
End Sub

Public Sub AbrirArchivo()
    NumArchivo = FreeFile
    Open ArchivoActual For Input As #NumArchivo
    
        For P = 1 To CantProgramas
            For PP = 1 To CantPasosProgramas
                For C = 1 To CantCanalesDMX
                    Line Input #NumArchivo, aux
                    MartizDMX(P, PP, C) = aux
                Next C
                Line Input #NumArchivo, aux
                TiempoPaso(P, PP) = aux
            Next PP
            Line Input #NumArchivo, aux
            EtiquetaPrograma(P) = Mid(aux, 2, Len(aux) - 2)
            Line Input #NumArchivo, aux
            UltimoPaso(P) = aux
        Next P
        
        For C = 1 To CantCanalesDMX
            Line Input #NumArchivo, aux
            Escala(C) = aux / 100
            Line Input #NumArchivo, aux
            Posicion(C) = aux
            Line Input #NumArchivo, aux
            AsignacionCanal(C) = aux
            Line Input #NumArchivo, aux
            Cross(C) = aux
            Line Input #NumArchivo, aux
            Invertido(C) = aux
            Line Input #NumArchivo, aux
            EtiquetaCanal(C) = Mid(aux, 2, Len(aux) - 2)
            Line Input #NumArchivo, aux
            FondoPote(C) = aux
            For D = 0 To CantidadMaxMacros
                Line Input #NumArchivo, aux
                Macros(C, D) = aux
            Next D
        Next C
        For C = 1 To CantMasters
            Line Input #NumArchivo, aux
            EtiquetaMasters(C) = Mid(aux, 2, Len(aux) - 2)
        Next C

    Close #NumArchivo
    Contenedor.Caption = "Light Color v1.1 - " & ArchivoActual
    ProgramaActual = 1
    PasoActual = 1
    Editor.VScroll1.Value = 1
    Editor.VScroll2.Value = UltimoPaso(ProgramaActual)
    Editor.HScroll1.Value = TiempoPaso(ProgramaActual, PasoActual)
    Editor.Text3.Text = EtiquetaPrograma(ProgramaActual)
    ActualizarEditor
    ActualizarProgramas
    Asignar.VScroll1.Value = 1
    ActualizarAsignar
    ActualizarMasters
End Sub

Public Sub GuardarArchivo()
    NumArchivo = FreeFile
    Open ArchivoActual For Output As #NumArchivo

        For P = 1 To CantProgramas
            For PP = 1 To CantPasosProgramas
                For C = 1 To CantCanalesDMX
                    Write #NumArchivo, MartizDMX(P, PP, C)
                Next C
                Write #NumArchivo, TiempoPaso(P, PP)
            Next PP
            Write #NumArchivo, EtiquetaPrograma(P)
            Write #NumArchivo, UltimoPaso(P)
        Next P
        
        For C = 1 To CantCanalesDMX
            Write #NumArchivo, Escala(C) * 100
            Write #NumArchivo, Posicion(C)
            Write #NumArchivo, AsignacionCanal(C)
            Write #NumArchivo, Cross(C)
            Write #NumArchivo, Invertido(C)
            Write #NumArchivo, EtiquetaCanal(C)
            Write #NumArchivo, FondoPote(C)
            For D = 0 To CantidadMaxMacros
                Write #NumArchivo, Macros(C, D)
            Next D
        Next C
        For C = 1 To CantMasters
            Write #NumArchivo, EtiquetaMasters(C)
        Next C

    Close #NumArchivo
    Contenedor.Caption = "Light Color v1.1 - " & ArchivoActual
End Sub

Public Function BorrarCanal(Chanel As Integer)
    AsignacionCanal(Chanel) = 0
    Cross(Chanel) = False
    Invertido(Chanel) = False
    EtiquetaCanal(Chanel) = ""
    FondoPote(Chanel) = 1
    Escala(Chanel) = 1
    Posicion(Chanel) = 127
    For AAA = 1 To CantProgramas
        For BBB = 1 To CantPasosProgramas
            MartizDMX(AAA, BBB, Chanel) = 0
        Next BBB
    Next AAA
    For AAA = 0 To CantidadMaxMacros
        Macros(Chanel, AAA) = 0
    Next AAA
End Function

Public Sub PreValoresMovimientos()
    EtiquetaPrograma(1) = "Centro"
    UltimoPaso(1) = 1
    EtiquetaPrograma(2) = "Cuadrado"
    UltimoPaso(2) = 4
    EtiquetaPrograma(3) = "Ocho"
    UltimoPaso(3) = 4
    EtiquetaPrograma(4) = "Triangulo"
    UltimoPaso(4) = 3
    EtiquetaPrograma(5) = "Pentagono"
    UltimoPaso(5) = 5
    EtiquetaPrograma(6) = "Circulo"
    UltimoPaso(6) = 8
    For A = 2 To 6
        For C = 1 To CantPasosProgramas
            TiempoPaso(A, C) = 30
        Next C
    Next A
End Sub

Public Sub AtrasarPrograma(N_Prog As Byte, Cant_Desp As Byte, Channel As Integer)
    Dim i As Byte, AUXValorDMX As Byte
    If 0 < Cant_Desp Then
        If 1 < UltimoPaso(N_Prog) Then
            AUXValorDMX = MartizDMX(N_Prog, 1, Channel)
            For i = 1 To UltimoPaso(N_Prog) - 1
                MartizDMX(N_Prog, i, Channel) = MartizDMX(N_Prog, i + 1, Channel)
            Next i
            MartizDMX(N_Prog, 1, Channel) = AUXValorDMX
        End If
    End If
End Sub

Public Sub AdelantarPrograma(N_Prog As Byte, Cant_Desp As Byte, Channel As Integer)
    Dim i As Byte, AUXValorDMX As Byte
    If 0 < Cant_Desp Then
        If 1 < UltimoPaso(N_Prog) Then
            AUXValorDMX = MartizDMX(N_Prog, UltimoPaso(N_Prog), Channel)
            For i = 1 To UltimoPaso(N_Prog) - 1
                MartizDMX(N_Prog, UltimoPaso(N_Prog) - i, Channel) = MartizDMX(N_Prog, i + 1, Channel) ''''''''''''''''
            Next i
            MartizDMX(N_Prog, 1, Channel) = AUXValorDMX
        End If
    End If
End Sub

