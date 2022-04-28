VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   ClientHeight    =   9720
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4815
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   9720
   ScaleWidth      =   4815
   ShowInTaskbar   =   0   'False
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   15
      Left            =   120
      TabIndex        =   62
      Top             =   9360
      Width           =   4095
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   14
      Left            =   120
      TabIndex        =   58
      Top             =   8760
      Width           =   4095
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   13
      Left            =   120
      TabIndex        =   54
      Top             =   8160
      Width           =   4095
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   12
      Left            =   120
      TabIndex        =   50
      Top             =   7560
      Width           =   4095
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   11
      Left            =   120
      TabIndex        =   46
      Top             =   6960
      Width           =   4095
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   10
      Left            =   120
      TabIndex        =   42
      Top             =   6360
      Width           =   4095
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   9
      Left            =   120
      TabIndex        =   38
      Top             =   5760
      Width           =   4095
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   8
      Left            =   120
      TabIndex        =   34
      Top             =   5160
      Width           =   4095
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   7
      Left            =   120
      TabIndex        =   30
      Top             =   4560
      Width           =   4095
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   6
      Left            =   120
      TabIndex        =   26
      Top             =   3960
      Width           =   4095
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   5
      Left            =   120
      TabIndex        =   22
      Top             =   3360
      Width           =   4095
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   4
      Left            =   120
      TabIndex        =   18
      Top             =   2760
      Width           =   4095
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   3
      Left            =   120
      TabIndex        =   14
      Top             =   2160
      Width           =   4095
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   2
      Left            =   120
      TabIndex        =   10
      Top             =   1560
      Width           =   4095
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   1
      Left            =   120
      TabIndex        =   6
      Top             =   960
      Width           =   4095
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   2
      Top             =   360
      Width           =   4095
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   15
      Left            =   4320
      TabIndex        =   63
      Top             =   9360
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   15
      Left            =   120
      TabIndex        =   61
      Top             =   9120
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   15
      Left            =   720
      TabIndex        =   60
      Top             =   9120
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   14
      Left            =   4320
      TabIndex        =   59
      Top             =   8760
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   14
      Left            =   120
      TabIndex        =   57
      Top             =   8520
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   14
      Left            =   720
      TabIndex        =   56
      Top             =   8520
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   13
      Left            =   4320
      TabIndex        =   55
      Top             =   8160
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   13
      Left            =   120
      TabIndex        =   53
      Top             =   7920
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   13
      Left            =   720
      TabIndex        =   52
      Top             =   7920
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   12
      Left            =   4320
      TabIndex        =   51
      Top             =   7560
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   12
      Left            =   120
      TabIndex        =   49
      Top             =   7320
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   12
      Left            =   720
      TabIndex        =   48
      Top             =   7320
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   11
      Left            =   4320
      TabIndex        =   47
      Top             =   6960
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   11
      Left            =   120
      TabIndex        =   45
      Top             =   6720
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   11
      Left            =   720
      TabIndex        =   44
      Top             =   6720
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   10
      Left            =   4320
      TabIndex        =   43
      Top             =   6360
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   10
      Left            =   120
      TabIndex        =   41
      Top             =   6120
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   10
      Left            =   720
      TabIndex        =   40
      Top             =   6120
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   9
      Left            =   4320
      TabIndex        =   39
      Top             =   5760
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   9
      Left            =   120
      TabIndex        =   37
      Top             =   5520
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   9
      Left            =   720
      TabIndex        =   36
      Top             =   5520
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   8
      Left            =   4320
      TabIndex        =   35
      Top             =   5160
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   8
      Left            =   120
      TabIndex        =   33
      Top             =   4920
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   8
      Left            =   720
      TabIndex        =   32
      Top             =   4920
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   7
      Left            =   4320
      TabIndex        =   31
      Top             =   4560
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   7
      Left            =   120
      TabIndex        =   29
      Top             =   4320
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   7
      Left            =   720
      TabIndex        =   28
      Top             =   4320
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   6
      Left            =   4320
      TabIndex        =   27
      Top             =   3960
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   6
      Left            =   120
      TabIndex        =   25
      Top             =   3720
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   6
      Left            =   720
      TabIndex        =   24
      Top             =   3720
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   5
      Left            =   4320
      TabIndex        =   23
      Top             =   3360
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   5
      Left            =   120
      TabIndex        =   21
      Top             =   3120
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   5
      Left            =   720
      TabIndex        =   20
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   4
      Left            =   4320
      TabIndex        =   19
      Top             =   2760
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   4
      Left            =   120
      TabIndex        =   17
      Top             =   2520
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   4
      Left            =   720
      TabIndex        =   16
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   3
      Left            =   4320
      TabIndex        =   15
      Top             =   2160
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   3
      Left            =   120
      TabIndex        =   13
      Top             =   1920
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   3
      Left            =   720
      TabIndex        =   12
      Top             =   1920
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   2
      Left            =   4320
      TabIndex        =   11
      Top             =   1560
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   2
      Left            =   120
      TabIndex        =   9
      Top             =   1320
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   2
      Left            =   720
      TabIndex        =   8
      Top             =   1320
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   1
      Left            =   4320
      TabIndex        =   7
      Top             =   960
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   1
      Left            =   120
      TabIndex        =   5
      Top             =   720
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   1
      Left            =   720
      TabIndex        =   4
      Top             =   720
      Width           =   1215
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   0
      Left            =   4320
      TabIndex        =   3
      Top             =   360
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "512"
      Height          =   195
      Index           =   0
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre de canal"
      Height          =   195
      Index           =   0
      Left            =   720
      TabIndex        =   0
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
