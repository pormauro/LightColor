VERSION 5.00
Begin VB.Form Presentacion 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   5850
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   8205
   Icon            =   "Presentacion.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Presentacion.frx":30EA
   ScaleHeight     =   5850
   ScaleWidth      =   8205
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   5000
      Left            =   120
      Top             =   120
   End
End
Attribute VB_Name = "Presentacion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    ARRANCA = False
    Timer1.Enabled = True
    ' inicialiso el dispositivo
    OpenDmx.init
    ' Me comunico con el PIC // Me comunico con la EVE para darle mucho amor
    OpenDmx.Llave
    ' set startcode to zero
    OpenDmx.startcode = 0
    Timer1.Interval = 40000
End Sub

Private Sub Timer1_Timer()
    If ARRANCA = False Then
        End
    Else
        Unload Me
        Contenedor.Show
    End If
End Sub
