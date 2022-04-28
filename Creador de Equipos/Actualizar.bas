Attribute VB_Name = "ActualizarEditorEquipos"
Public Const CantMaxCanales As Byte = 32
Public Const CantidadMaxEquipos As Byte = 255
Public Const CantidadMaxMacros As Byte = 13
Public Const CantidadTipoCanal As Byte = 37

Public Nombre As String
Public CantidadCanales As Byte
Public TipoCanal(CantMaxCanales) As Byte
Public Otro(CantMaxCanales) As String
Public Invertir(CantMaxCanales) As Boolean
Public MacrosEquipo(CantMaxCanales, CantidadMaxMacros) As Byte
Public PorsPAN As Byte, PorsTILT As Byte

Public AUXNombre As String
Public AUXCantidadCanales As Byte
Public AUXTipoCanal(CantMaxCanales) As Byte
Public AUXOtro(CantMaxCanales) As String
Public AUXInvertido(CantMaxCanales) As Boolean
Public AUXMacros(CantMaxCanales, CantidadMaxMacros) As String
Public ArchivoActualEquipo As String
Public AUXPorsTILT As Byte, AUXPorsPAN As Byte


Public ArchivoActualEditor As String
Public TablaTipoCanal(CantidadTipoCanal) As String
Public CantidadVisibeMacros(CantidadTipoCanal) As Byte
Public EtiquetasPredeterminadasMacros(CantidadTipoCanal, CantMaxCanales) As String
Public CrossTipoCanal(CantidadTipoCanal) As Boolean
Public NumeroMasterTipoCanal(CantidadTipoCanal) As Byte


Public Sub CargarTablaTipoCanal()
    Dim Index As Byte
    TablaTipoCanal(0) = "Generico"
    CrossTipoCanal(0) = False
    NumeroMasterTipoCanal(0) = 0
    CantidadVisibeMacros(0) = 0
    TablaTipoCanal(1) = "PAN"
    CrossTipoCanal(1) = True
    NumeroMasterTipoCanal(1) = 0
    CantidadVisibeMacros(1) = 0
    TablaTipoCanal(2) = "TILT"
    CrossTipoCanal(2) = True
    NumeroMasterTipoCanal(2) = 0
    CantidadVisibeMacros(2) = 0
    TablaTipoCanal(3) = "Shutter(Obturador)"
    CrossTipoCanal(3) = False
    NumeroMasterTipoCanal(3) = 23
    CantidadVisibeMacros(3) = 6
    EtiquetasPredeterminadasMacros(3, 1) = "Abierto"
    EtiquetasPredeterminadasMacros(3, 2) = "Flash 4"
    EtiquetasPredeterminadasMacros(3, 3) = "Flash 3"
    EtiquetasPredeterminadasMacros(3, 4) = "Flash 2"
    EtiquetasPredeterminadasMacros(3, 5) = "Flash 1"
    EtiquetasPredeterminadasMacros(3, 6) = "Cerrado"
    TablaTipoCanal(4) = "Dimmer"
    CrossTipoCanal(4) = False
    NumeroMasterTipoCanal(4) = 1
    CantidadVisibeMacros(4) = 0
    TablaTipoCanal(5) = "Velocidad Motor"
    CrossTipoCanal(5) = False
    NumeroMasterTipoCanal(5) = 2
    CantidadVisibeMacros(5) = 0
    TablaTipoCanal(6) = "Color"
    CrossTipoCanal(6) = False
    NumeroMasterTipoCanal(6) = 24
    CantidadVisibeMacros(6) = CantidadMaxMacros
    EtiquetasPredeterminadasMacros(6, 1) = "Rojo"
    EtiquetasPredeterminadasMacros(6, 2) = "Naranja"
    EtiquetasPredeterminadasMacros(6, 3) = "Amarillo"
    EtiquetasPredeterminadasMacros(6, 4) = "Verde"
    EtiquetasPredeterminadasMacros(6, 5) = "Cyan"
    EtiquetasPredeterminadasMacros(6, 6) = "Azul"
    EtiquetasPredeterminadasMacros(6, 7) = "Violeta"
    EtiquetasPredeterminadasMacros(6, 8) = "Magenta"
    EtiquetasPredeterminadasMacros(6, 9) = "Blanco"
    EtiquetasPredeterminadasMacros(6, 10) = "Negro"
    EtiquetasPredeterminadasMacros(6, 11) = "Rota Color 3"
    EtiquetasPredeterminadasMacros(6, 12) = "Rota Color 2"
    EtiquetasPredeterminadasMacros(6, 13) = "Rota Color 1"
    TablaTipoCanal(7) = "Gobo"
    CrossTipoCanal(7) = False
    NumeroMasterTipoCanal(7) = 25
    CantidadVisibeMacros(7) = CantidadMaxMacros
    TablaTipoCanal(8) = "Rota Gobo"
    CrossTipoCanal(8) = False
    NumeroMasterTipoCanal(8) = 3
    CantidadVisibeMacros(8) = 0
    TablaTipoCanal(9) = "Prisma"
    CrossTipoCanal(9) = False
    NumeroMasterTipoCanal(9) = 4
    CantidadVisibeMacros(9) = 0
    TablaTipoCanal(10) = "Rota Prisma"
    CrossTipoCanal(10) = False
    NumeroMasterTipoCanal(10) = 5
    CantidadVisibeMacros(10) = 0
    TablaTipoCanal(11) = "Gobos Fijos"
    CrossTipoCanal(11) = False
    NumeroMasterTipoCanal(11) = 26
    CantidadVisibeMacros(11) = CantidadMaxMacros
    TablaTipoCanal(12) = "Foco"
    CrossTipoCanal(12) = False
    NumeroMasterTipoCanal(12) = 6
    CantidadVisibeMacros(12) = 0
    TablaTipoCanal(13) = "Iris"
    CrossTipoCanal(13) = False
    NumeroMasterTipoCanal(13) = 7
    CantidadVisibeMacros(13) = 0
    TablaTipoCanal(14) = "Reset"
    CrossTipoCanal(14) = False
    NumeroMasterTipoCanal(14) = 27
    CantidadVisibeMacros(14) = 2
    EtiquetasPredeterminadasMacros(14, 1) = "Resetear"
    EtiquetasPredeterminadasMacros(14, 2) = "Correr"
    TablaTipoCanal(15) = "Rojo"
    CrossTipoCanal(15) = True
    NumeroMasterTipoCanal(15) = 17
    CantidadVisibeMacros(15) = 0
    TablaTipoCanal(16) = "Verde"
    CrossTipoCanal(16) = True
    NumeroMasterTipoCanal(16) = 18
    CantidadVisibeMacros(16) = 0
    TablaTipoCanal(17) = "Azul"
    CrossTipoCanal(17) = True
    NumeroMasterTipoCanal(17) = 19
    CantidadVisibeMacros(17) = 0
    TablaTipoCanal(18) = "Cian"
    CrossTipoCanal(18) = True
    NumeroMasterTipoCanal(18) = 14
    CantidadVisibeMacros(18) = 0
    TablaTipoCanal(19) = "Amarillo"
    CrossTipoCanal(19) = True
    NumeroMasterTipoCanal(19) = 15
    CantidadVisibeMacros(19) = 0
    TablaTipoCanal(20) = "Magenta"
    CrossTipoCanal(20) = True
    NumeroMasterTipoCanal(20) = 16
    CantidadVisibeMacros(20) = 0
    TablaTipoCanal(21) = "Blanco"
    CrossTipoCanal(21) = True
    NumeroMasterTipoCanal(21) = 10
    CantidadVisibeMacros(21) = 0
    TablaTipoCanal(22) = "S/U"
    CrossTipoCanal(22) = False
    NumeroMasterTipoCanal(22) = 0
    CantidadVisibeMacros(22) = 0
    TablaTipoCanal(23) = "S/U"
    CrossTipoCanal(23) = False
    NumeroMasterTipoCanal(23) = 0
    CantidadVisibeMacros(23) = 0
    TablaTipoCanal(24) = "S/U"
    CrossTipoCanal(24) = False
    NumeroMasterTipoCanal(24) = 0
    CantidadVisibeMacros(24) = 0
    TablaTipoCanal(25) = "LED Shutter"
    CrossTipoCanal(25) = False
    NumeroMasterTipoCanal(25) = 28
    CantidadVisibeMacros(25) = 6
    EtiquetasPredeterminadasMacros(25, 1) = "Abierto"
    EtiquetasPredeterminadasMacros(25, 2) = "Flash 4"
    EtiquetasPredeterminadasMacros(25, 3) = "Flash 3"
    EtiquetasPredeterminadasMacros(25, 4) = "Flash 2"
    EtiquetasPredeterminadasMacros(25, 5) = "Flash 1"
    EtiquetasPredeterminadasMacros(25, 6) = "Cerrado"
    TablaTipoCanal(26) = "LED Dimmer"
    CrossTipoCanal(26) = False
    NumeroMasterTipoCanal(26) = 8
    CantidadVisibeMacros(26) = 0
    TablaTipoCanal(27) = "LED Programas"
    CrossTipoCanal(27) = False
    NumeroMasterTipoCanal(27) = 29
    CantidadVisibeMacros(27) = CantidadMaxMacros
    TablaTipoCanal(28) = "LED Rojo"
    CrossTipoCanal(28) = True
    NumeroMasterTipoCanal(28) = 20
    CantidadVisibeMacros(28) = 0
    TablaTipoCanal(29) = "LED Verde"
    CrossTipoCanal(29) = True
    NumeroMasterTipoCanal(29) = 21
    CantidadVisibeMacros(29) = 0
    TablaTipoCanal(30) = "LED Azul"
    CrossTipoCanal(30) = True
    NumeroMasterTipoCanal(30) = 22
    CantidadVisibeMacros(30) = 0
    TablaTipoCanal(31) = "S/U"
    CrossTipoCanal(31) = False
    NumeroMasterTipoCanal(31) = 0
    CantidadVisibeMacros(31) = 0
    TablaTipoCanal(32) = "S/U"
    CrossTipoCanal(32) = False
    NumeroMasterTipoCanal(32) = 0
    CantidadVisibeMacros(32) = 0
    TablaTipoCanal(33) = "Flash Shutter"
    CrossTipoCanal(33) = False
    NumeroMasterTipoCanal(33) = 30
    CantidadVisibeMacros(33) = 6
    EtiquetasPredeterminadasMacros(33, 1) = "Flash 5"
    EtiquetasPredeterminadasMacros(33, 2) = "Flash 4"
    EtiquetasPredeterminadasMacros(33, 3) = "Flash 3"
    EtiquetasPredeterminadasMacros(33, 4) = "Flash 2"
    EtiquetasPredeterminadasMacros(33, 5) = "Flash 1"
    EtiquetasPredeterminadasMacros(33, 6) = "Cerrado"
    TablaTipoCanal(34) = "Flash Dimmer"
    CrossTipoCanal(34) = False
    NumeroMasterTipoCanal(34) = 9
    CantidadVisibeMacros(34) = 0
    TablaTipoCanal(35) = "S/U"
    CrossTipoCanal(35) = False
    NumeroMasterTipoCanal(35) = 0
    CantidadVisibeMacros(35) = 0
    TablaTipoCanal(36) = "Maquina de Humo"
    CrossTipoCanal(36) = False
    NumeroMasterTipoCanal(36) = 31
    CantidadVisibeMacros(36) = 2
    EtiquetasPredeterminadasMacros(36, 1) = "Disparar"
    EtiquetasPredeterminadasMacros(36, 2) = "Calentar"
    TablaTipoCanal(37) = "S/U"
    CrossTipoCanal(37) = False
    NumeroMasterTipoCanal(37) = 0
    CantidadVisibeMacros(37) = 0
End Sub

Public Sub ArchivoNuevo()
    Nombre = ""
    CantidadCanales = 1
    For i = 1 To CantMaxCanales
        TipoCanal(i) = 0
        Otro(i) = ""
        Invertir(i) = False
        For J = 1 To CantidadMaxMacros
            MacrosEquipo(i, J) = 0
        Next J
    Next i
    PorsPAN = 100: PorsTILT = 100
    EditorEquipos.PANp.Value = PorsPAN
    EditorEquipos.TILTp.Value = PorsTILT
    EditorEquipos.CanalActual.Value = 1
End Sub

Public Sub Actualizar1()
    EditorEquipos.TextNombre.Text = Nombre
    EditorEquipos.CantCanales.Text = CantidadCanales
    EditorEquipos.VScroll2.Value = CantidadCanales
    EditorEquipos.NCanal = EditorEquipos.CanalActual.Value
    EditorEquipos.VScroll4.Value = TipoCanal(EditorEquipos.CanalActual.Value)
    EditorEquipos.Text1.Text = PorsPAN
    EditorEquipos.Text2.Text = PorsTILT
    If Invertir(EditorEquipos.CanalActual.Value) = True Then
        EditorEquipos.Command1.BackColor = &H8000000C
    Else
        EditorEquipos.Command1.BackColor = &H8000000F
    End If
    For i = 1 To CantidadMaxMacros
        EditorEquipos.Text4(i - 1).Text = MacrosEquipo(EditorEquipos.CanalActual.Value, i)
    Next i
    EditorEquipos.TextTipoCanal = TablaTipoCanal(TipoCanal(EditorEquipos.CanalActual.Value)) 'Nombre del Canal
    EditorEquipos.Frame2.top = 1920 + CantidadVisibeMacros(TipoCanal(EditorEquipos.CanalActual.Value)) * 360 'Tapo los macros que no uso
    For i = 1 To CantidadMaxMacros
        EditorEquipos.Label2(i - 1).Caption = EtiquetasPredeterminadasMacros(TipoCanal(EditorEquipos.CanalActual.Value), i)
    Next i
    If TipoCanal(EditorEquipos.CanalActual.Value) = 0 Then
        EditorEquipos.TextOtro = Otro(EditorEquipos.CanalActual.Value)
        EditorEquipos.TextOtro.Visible = True
    Else
        EditorEquipos.TextOtro.Visible = False
    End If
    EditorEquipos.TextOtro.Text = Otro(EditorEquipos.CanalActual.Value)
End Sub

