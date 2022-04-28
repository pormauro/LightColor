VERSION 5.00
Begin VB.Form Masters 
   BorderStyle     =   0  'None
   Caption         =   "Masters"
   ClientHeight    =   7440
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   11760
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   7440
   ScaleWidth      =   11760
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   9480
      TabIndex        =   287
      Top             =   5520
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.HScrollBar HScroll2 
      Height          =   255
      Left            =   9480
      Max             =   500
      Min             =   1
      TabIndex        =   285
      Top             =   6120
      Value           =   20
      Width           =   2175
   End
   Begin VB.Timer TimerHumo 
      Enabled         =   0   'False
      Left            =   9960
      Top             =   5040
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   9480
      TabIndex        =   281
      Text            =   "5"
      Top             =   4680
      Width           =   615
   End
   Begin VB.Timer TimerReset 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   9480
      Top             =   5040
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H00000000&
      Height          =   255
      Index           =   9
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   279
      Top             =   6720
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   8
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   278
      Top             =   6480
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H00FF00FF&
      Height          =   255
      Index           =   7
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   277
      Top             =   6240
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H00FF0080&
      Height          =   255
      Index           =   6
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   276
      Top             =   6000
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H00FF0000&
      Height          =   255
      Index           =   5
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   275
      Top             =   5760
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H00FFFF00&
      Height          =   255
      Index           =   4
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   274
      Top             =   5520
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H0000FF00&
      Height          =   255
      Index           =   3
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   273
      Top             =   5280
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H0000FFFF&
      Height          =   255
      Index           =   2
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   272
      Top             =   5040
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H000080FF&
      Height          =   255
      Index           =   1
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   271
      Top             =   4800
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H000000FF&
      Height          =   255
      Index           =   0
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   270
      Top             =   4560
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H000000FF&
      Height          =   255
      Index           =   29
      Left            =   8640
      Style           =   1  'Graphical
      TabIndex        =   269
      Top             =   4560
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H000080FF&
      Height          =   255
      Index           =   28
      Left            =   8640
      Style           =   1  'Graphical
      TabIndex        =   268
      Top             =   4800
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H0000FFFF&
      Height          =   255
      Index           =   27
      Left            =   8640
      Style           =   1  'Graphical
      TabIndex        =   267
      Top             =   5040
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H0000FF00&
      Height          =   255
      Index           =   26
      Left            =   8640
      Style           =   1  'Graphical
      TabIndex        =   266
      Top             =   5280
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H00FFFF00&
      Height          =   255
      Index           =   25
      Left            =   8640
      Style           =   1  'Graphical
      TabIndex        =   265
      Top             =   5520
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H00FF0000&
      Height          =   255
      Index           =   24
      Left            =   8640
      Style           =   1  'Graphical
      TabIndex        =   264
      Top             =   5760
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H00FF0080&
      Height          =   255
      Index           =   23
      Left            =   8640
      Style           =   1  'Graphical
      TabIndex        =   263
      Top             =   6000
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H00FF00FF&
      Height          =   255
      Index           =   22
      Left            =   8640
      Style           =   1  'Graphical
      TabIndex        =   262
      Top             =   6240
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   21
      Left            =   8640
      Style           =   1  'Graphical
      TabIndex        =   261
      Top             =   6480
      Width           =   255
   End
   Begin VB.CommandButton ColorFijo2 
      BackColor       =   &H00000000&
      Height          =   255
      Index           =   20
      Left            =   8640
      Style           =   1  'Graphical
      TabIndex        =   260
      Top             =   6720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   31
      Left            =   11760
      TabIndex        =   259
      Top             =   3720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   30
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   258
      Top             =   3720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   29
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   257
      Top             =   3720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   28
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   256
      Top             =   3720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   27
      Left            =   7080
      Style           =   1  'Graphical
      TabIndex        =   255
      Top             =   3720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   26
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   254
      Top             =   3720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   25
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   253
      Top             =   3720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   24
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   252
      Top             =   3720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   23
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   251
      Top             =   3720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   22
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   250
      Top             =   3720
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   129
      Left            =   11760
      Style           =   1  'Graphical
      TabIndex        =   239
      Top             =   3360
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   128
      Left            =   11760
      MaskColor       =   &H8000000E&
      Style           =   1  'Graphical
      TabIndex        =   238
      Top             =   3120
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   127
      Left            =   11760
      Style           =   1  'Graphical
      TabIndex        =   237
      Top             =   2880
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   126
      Left            =   11760
      Style           =   1  'Graphical
      TabIndex        =   236
      Top             =   2640
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   125
      Left            =   11760
      Style           =   1  'Graphical
      TabIndex        =   235
      Top             =   2400
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   124
      Left            =   11760
      Style           =   1  'Graphical
      TabIndex        =   234
      Top             =   2160
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   123
      Left            =   11760
      Style           =   1  'Graphical
      TabIndex        =   233
      Top             =   1920
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   122
      Left            =   11760
      Style           =   1  'Graphical
      TabIndex        =   232
      Top             =   1680
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   121
      Left            =   11760
      Style           =   1  'Graphical
      TabIndex        =   231
      Top             =   1440
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   120
      Left            =   11760
      Style           =   1  'Graphical
      TabIndex        =   230
      Top             =   1200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   119
      Left            =   11760
      Style           =   1  'Graphical
      TabIndex        =   229
      Top             =   960
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   118
      Left            =   11760
      Style           =   1  'Graphical
      TabIndex        =   228
      Top             =   720
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   117
      Left            =   11760
      Style           =   1  'Graphical
      TabIndex        =   227
      Top             =   480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   116
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   226
      Top             =   3360
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   115
      Left            =   10200
      MaskColor       =   &H8000000E&
      Style           =   1  'Graphical
      TabIndex        =   225
      Top             =   3120
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   114
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   224
      Top             =   2880
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   113
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   223
      Top             =   2640
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   112
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   222
      Top             =   2400
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   111
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   221
      Top             =   2160
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   110
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   220
      Top             =   1920
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   109
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   219
      Top             =   1680
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   108
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   218
      Top             =   1440
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   107
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   217
      Top             =   1200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   106
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   216
      Top             =   960
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "O"
      Height          =   255
      Index           =   105
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   215
      Top             =   720
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "P"
      Height          =   255
      Index           =   104
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   214
      Top             =   480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   103
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   213
      Top             =   3360
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   102
      Left            =   9720
      MaskColor       =   &H8000000E&
      Style           =   1  'Graphical
      TabIndex        =   212
      Top             =   3120
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   101
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   211
      Top             =   2880
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   100
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   210
      Top             =   2640
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   99
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   209
      Top             =   2400
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   98
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   208
      Top             =   2160
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   97
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   207
      Top             =   1920
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "N"
      Height          =   255
      Index           =   96
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   206
      Top             =   1680
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "B"
      Height          =   255
      Index           =   95
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   205
      Top             =   1440
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "V"
      Height          =   255
      Index           =   94
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   204
      Top             =   1200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "C"
      Height          =   255
      Index           =   93
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   203
      Top             =   960
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "X"
      Height          =   255
      Index           =   92
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   202
      Top             =   720
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "Z"
      Height          =   255
      Index           =   91
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   201
      Top             =   480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   90
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   200
      Top             =   3360
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   89
      Left            =   7800
      MaskColor       =   &H8000000E&
      Style           =   1  'Graphical
      TabIndex        =   199
      Top             =   3120
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   88
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   198
      Top             =   2880
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   87
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   197
      Top             =   2640
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   86
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   196
      Top             =   2400
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   85
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   195
      Top             =   2160
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   84
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   194
      Top             =   1920
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   83
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   193
      Top             =   1680
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   82
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   192
      Top             =   1440
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   81
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   191
      Top             =   1200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   80
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   190
      Top             =   960
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   79
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   189
      Top             =   720
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   78
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   188
      Top             =   480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   77
      Left            =   7080
      Style           =   1  'Graphical
      TabIndex        =   187
      Top             =   3360
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   76
      Left            =   7080
      MaskColor       =   &H8000000E&
      Style           =   1  'Graphical
      TabIndex        =   186
      Top             =   3120
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   75
      Left            =   7080
      Style           =   1  'Graphical
      TabIndex        =   185
      Top             =   2880
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   74
      Left            =   7080
      Style           =   1  'Graphical
      TabIndex        =   184
      Top             =   2640
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   73
      Left            =   7080
      Style           =   1  'Graphical
      TabIndex        =   183
      Top             =   2400
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   72
      Left            =   7080
      Style           =   1  'Graphical
      TabIndex        =   182
      Top             =   2160
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   71
      Left            =   7080
      Style           =   1  'Graphical
      TabIndex        =   181
      Top             =   1920
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "H"
      Height          =   255
      Index           =   70
      Left            =   7080
      Style           =   1  'Graphical
      TabIndex        =   180
      Top             =   1680
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "G"
      Height          =   255
      Index           =   69
      Left            =   7080
      Style           =   1  'Graphical
      TabIndex        =   179
      Top             =   1440
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "F"
      Height          =   255
      Index           =   68
      Left            =   7080
      Style           =   1  'Graphical
      TabIndex        =   178
      Top             =   1200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "D"
      Height          =   255
      Index           =   67
      Left            =   7080
      Style           =   1  'Graphical
      TabIndex        =   177
      Top             =   960
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "S"
      Height          =   255
      Index           =   66
      Left            =   7080
      Style           =   1  'Graphical
      TabIndex        =   176
      Top             =   720
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "A"
      Height          =   255
      Index           =   65
      Left            =   7080
      Style           =   1  'Graphical
      TabIndex        =   175
      Top             =   480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   64
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   174
      Top             =   3360
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   63
      Left            =   4080
      MaskColor       =   &H8000000E&
      Style           =   1  'Graphical
      TabIndex        =   173
      Top             =   3120
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   62
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   172
      Top             =   2880
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   61
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   171
      Top             =   2640
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   60
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   170
      Top             =   2400
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   59
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   169
      Top             =   2160
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   58
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   168
      Top             =   1920
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   57
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   167
      Top             =   1680
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   56
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   166
      Top             =   1440
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   55
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   165
      Top             =   1200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   54
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   164
      Top             =   960
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   53
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   163
      Top             =   720
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   52
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   162
      Top             =   480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   51
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   161
      Top             =   3360
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   50
      Left            =   3000
      MaskColor       =   &H8000000E&
      Style           =   1  'Graphical
      TabIndex        =   160
      Top             =   3120
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   49
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   159
      Top             =   2880
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   48
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   158
      Top             =   2640
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   47
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   157
      Top             =   2400
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   46
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   156
      Top             =   2160
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   45
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   155
      Top             =   1920
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   44
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   154
      Top             =   1680
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   43
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   153
      Top             =   1440
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   42
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   152
      Top             =   1200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   41
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   151
      Top             =   960
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   40
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   150
      Top             =   720
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   39
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   149
      Top             =   480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   38
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   148
      Top             =   3360
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   37
      Left            =   1560
      MaskColor       =   &H8000000E&
      Style           =   1  'Graphical
      TabIndex        =   147
      Top             =   3120
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   36
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   146
      Top             =   2880
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   35
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   145
      Top             =   2640
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   34
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   144
      Top             =   2400
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   33
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   143
      Top             =   2160
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   32
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   142
      Top             =   1920
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   31
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   141
      Top             =   1680
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   30
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   140
      Top             =   1440
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   29
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   139
      Top             =   1200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   28
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   138
      Top             =   960
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   27
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   137
      Top             =   720
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   26
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   136
      Top             =   480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   25
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   135
      Top             =   3360
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   24
      Left            =   1200
      MaskColor       =   &H8000000E&
      Style           =   1  'Graphical
      TabIndex        =   134
      Top             =   3120
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   23
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   133
      Top             =   2880
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      Caption         =   "0"
      Height          =   255
      Index           =   22
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   132
      Top             =   2640
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      Caption         =   "9"
      Height          =   255
      Index           =   21
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   131
      Top             =   2400
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      BackColor       =   &H00FF00FF&
      Caption         =   "8"
      Height          =   255
      Index           =   20
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   130
      Top             =   2160
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      BackColor       =   &H00FF0080&
      Caption         =   "7"
      Height          =   255
      Index           =   19
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   129
      Top             =   1920
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      BackColor       =   &H00FF0000&
      Caption         =   "6"
      Height          =   255
      Index           =   18
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   128
      Top             =   1680
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFF00&
      Caption         =   "5"
      Height          =   255
      Index           =   17
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   127
      Top             =   1440
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      BackColor       =   &H0000FF00&
      Caption         =   "4"
      Height          =   255
      Index           =   16
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   126
      Top             =   1200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      BackColor       =   &H0000FFFF&
      Caption         =   "3"
      Height          =   255
      Index           =   15
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   125
      Top             =   960
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      BackColor       =   &H000080FF&
      Caption         =   "2"
      Height          =   255
      Index           =   14
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   124
      Top             =   720
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      Caption         =   "1"
      Height          =   255
      Index           =   13
      Left            =   1200
      Style           =   1  'Graphical
      TabIndex        =   123
      Top             =   480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   12
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   122
      Top             =   3360
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      Height          =   2895
      Index           =   0
      Left            =   120
      MousePointer    =   2  'Cross
      Picture         =   "Master.frx":0000
      ScaleHeight     =   189
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   261
      TabIndex        =   121
      TabStop         =   0   'False
      ToolTipText     =   "Left-Click to select a color. Right-Click to change the palette."
      Top             =   4440
      Width           =   3975
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      Height          =   2895
      Index           =   1
      Left            =   4560
      MousePointer    =   2  'Cross
      Picture         =   "Master.frx":0CE3
      ScaleHeight     =   189
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   261
      TabIndex        =   120
      TabStop         =   0   'False
      ToolTipText     =   "Left-Click to select a color. Right-Click to change the palette."
      Top             =   4440
      Width           =   3975
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Congelar"
      Height          =   255
      Left            =   9840
      TabIndex        =   117
      Top             =   6720
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   285
      Left            =   10920
      TabIndex        =   115
      Text            =   "Text1"
      Top             =   6720
      Width           =   495
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   255
      Left            =   11400
      Max             =   1
      Min             =   512
      TabIndex        =   114
      Top             =   6720
      Value           =   1
      Width           =   255
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Left            =   8640
      Max             =   255
      TabIndex        =   113
      Top             =   7080
      Width           =   2895
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H00000000&
      Height          =   255
      Index           =   9
      Left            =   9120
      Style           =   1  'Graphical
      TabIndex        =   112
      Top             =   6720
      Width           =   255
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   8
      Left            =   9120
      Style           =   1  'Graphical
      TabIndex        =   111
      Top             =   6480
      Width           =   255
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H00FF00FF&
      Height          =   255
      Index           =   7
      Left            =   9120
      Style           =   1  'Graphical
      TabIndex        =   110
      Top             =   6240
      Width           =   255
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H00FF0080&
      Height          =   255
      Index           =   6
      Left            =   9120
      Style           =   1  'Graphical
      TabIndex        =   109
      Top             =   6000
      Width           =   255
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H00FF0000&
      Height          =   255
      Index           =   5
      Left            =   9120
      Style           =   1  'Graphical
      TabIndex        =   108
      Top             =   5760
      Width           =   255
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H00FFFF00&
      Height          =   255
      Index           =   4
      Left            =   9120
      Style           =   1  'Graphical
      TabIndex        =   107
      Top             =   5520
      Width           =   255
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H0000FF00&
      Height          =   255
      Index           =   3
      Left            =   9120
      Style           =   1  'Graphical
      TabIndex        =   106
      Top             =   5280
      Width           =   255
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H0000FFFF&
      Height          =   255
      Index           =   2
      Left            =   9120
      Style           =   1  'Graphical
      TabIndex        =   105
      Top             =   5040
      Width           =   255
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H000080FF&
      Height          =   255
      Index           =   1
      Left            =   9120
      Style           =   1  'Graphical
      TabIndex        =   104
      Top             =   4800
      Width           =   255
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H000000FF&
      Height          =   255
      Index           =   0
      Left            =   9120
      Style           =   1  'Graphical
      TabIndex        =   103
      Top             =   4560
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   11
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   102
      Top             =   3120
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "Q"
      Height          =   255
      Index           =   0
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   101
      Top             =   480
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "W"
      Height          =   255
      Index           =   1
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   100
      Top             =   720
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "E"
      Height          =   255
      Index           =   2
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   99
      Top             =   960
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "R"
      Height          =   255
      Index           =   3
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   98
      Top             =   1200
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "T"
      Height          =   255
      Index           =   4
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   97
      Top             =   1440
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "Y"
      Height          =   255
      Index           =   5
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   96
      Top             =   1680
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   6
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   95
      Top             =   1920
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   7
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   94
      Top             =   2160
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   8
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   93
      Top             =   2400
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   10
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   92
      Top             =   2880
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Height          =   255
      Index           =   9
      Left            =   120
      MaskColor       =   &H8000000E&
      Style           =   1  'Graphical
      TabIndex        =   91
      Top             =   2640
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   21
      Left            =   8880
      Style           =   1  'Graphical
      TabIndex        =   78
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   21
      Left            =   8880
      Max             =   0
      Min             =   255
      TabIndex        =   77
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   20
      Left            =   8520
      Style           =   1  'Graphical
      TabIndex        =   76
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   20
      Left            =   8520
      Max             =   0
      Min             =   255
      TabIndex        =   75
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   19
      Left            =   8160
      Style           =   1  'Graphical
      TabIndex        =   74
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   19
      Left            =   8160
      Max             =   0
      Min             =   255
      TabIndex        =   73
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   18
      Left            =   5160
      Style           =   1  'Graphical
      TabIndex        =   72
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   18
      Left            =   5160
      Max             =   0
      Min             =   255
      TabIndex        =   71
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   17
      Left            =   4800
      Style           =   1  'Graphical
      TabIndex        =   70
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   17
      Left            =   4800
      Max             =   0
      Min             =   255
      TabIndex        =   69
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   16
      Left            =   4440
      Style           =   1  'Graphical
      TabIndex        =   68
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   16
      Left            =   4440
      Max             =   0
      Min             =   255
      TabIndex        =   67
      Top             =   720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   15
      Left            =   6240
      Max             =   0
      Min             =   255
      TabIndex        =   50
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   15
      Left            =   6240
      Style           =   1  'Graphical
      TabIndex        =   49
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   14
      Left            =   5880
      Max             =   0
      Min             =   255
      TabIndex        =   48
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   14
      Left            =   5880
      Style           =   1  'Graphical
      TabIndex        =   47
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   13
      Left            =   5520
      Max             =   0
      Min             =   255
      TabIndex        =   46
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   13
      Left            =   5520
      Style           =   1  'Graphical
      TabIndex        =   45
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   12
      Left            =   11400
      Max             =   0
      Min             =   255
      TabIndex        =   44
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   12
      Left            =   11400
      Style           =   1  'Graphical
      TabIndex        =   43
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   11
      Left            =   11040
      Max             =   0
      Min             =   255
      TabIndex        =   42
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   11
      Left            =   11040
      Style           =   1  'Graphical
      TabIndex        =   41
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   10
      Left            =   10680
      Max             =   0
      Min             =   255
      TabIndex        =   40
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   10
      Left            =   10680
      Style           =   1  'Graphical
      TabIndex        =   39
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   9
      Left            =   6600
      Max             =   0
      Min             =   255
      TabIndex        =   38
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   9
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   37
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   8
      Left            =   9360
      Max             =   0
      Min             =   255
      TabIndex        =   36
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   8
      Left            =   9360
      Style           =   1  'Graphical
      TabIndex        =   35
      Top             =   3720
      Width           =   255
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Copiar Masters"
      Height          =   375
      Left            =   10320
      TabIndex        =   34
      Top             =   3960
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Todos ON"
      Height          =   375
      Left            =   9360
      TabIndex        =   33
      Top             =   3960
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Todos OFF"
      Height          =   375
      Left            =   8280
      TabIndex        =   32
      Top             =   3960
      Width           =   975
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   7
      Left            =   7440
      Style           =   1  'Graphical
      TabIndex        =   31
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   7
      Left            =   7440
      Max             =   0
      Min             =   255
      TabIndex        =   28
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   6
      Left            =   3720
      Style           =   1  'Graphical
      TabIndex        =   27
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   6
      Left            =   3720
      Max             =   0
      Min             =   255
      TabIndex        =   24
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   5
      Left            =   3360
      Style           =   1  'Graphical
      TabIndex        =   23
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   5
      Left            =   3360
      Max             =   0
      Min             =   255
      TabIndex        =   20
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   4
      Left            =   2640
      Style           =   1  'Graphical
      TabIndex        =   19
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   4
      Left            =   2640
      Max             =   0
      Min             =   255
      TabIndex        =   16
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   3
      Left            =   2280
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   3
      Left            =   2280
      Max             =   0
      Min             =   255
      TabIndex        =   12
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   2
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   2
      Left            =   1920
      Max             =   0
      Min             =   255
      TabIndex        =   8
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   1
      Left            =   840
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   1
      Left            =   840
      Max             =   0
      Min             =   255
      TabIndex        =   4
      Top             =   720
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      Height          =   195
      Index           =   0
      Left            =   480
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   3720
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2895
      Index           =   0
      Left            =   480
      Max             =   0
      Min             =   255
      TabIndex        =   0
      Top             =   720
      Width           =   255
   End
   Begin VB.Label Label10 
      Caption         =   "KEYASCII"
      Height          =   255
      Left            =   10560
      TabIndex        =   286
      Top             =   5160
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "Label9"
      Height          =   195
      Left            =   10320
      TabIndex        =   284
      Top             =   5880
      Width           =   480
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "Velocidad"
      Height          =   195
      Left            =   9480
      TabIndex        =   283
      Top             =   5880
      Width           =   705
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "Segundos"
      Height          =   195
      Left            =   10200
      TabIndex        =   282
      Top             =   4680
      Width           =   720
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Tiempo de disparo del Humo"
      Height          =   195
      Left            =   9480
      TabIndex        =   280
      Top             =   4440
      Width           =   2025
   End
   Begin VB.Line Line4 
      X1              =   10560
      X2              =   10560
      Y1              =   3840
      Y2              =   120
   End
   Begin VB.Line Line3 
      X1              =   10080
      X2              =   10080
      Y1              =   3840
      Y2              =   120
   End
   Begin VB.Line Line2 
      X1              =   9240
      X2              =   9240
      Y1              =   120
      Y2              =   3840
   End
   Begin VB.Line Line1 
      X1              =   6960
      X2              =   6960
      Y1              =   3840
      Y2              =   120
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "W"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   31
      Left            =   11760
      TabIndex        =   249
      Top             =   120
      Width           =   255
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "H"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   30
      Left            =   10200
      TabIndex        =   248
      Top             =   120
      Width           =   210
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "S"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   29
      Left            =   9720
      TabIndex        =   247
      Top             =   120
      Width           =   195
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "P"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   28
      Left            =   7800
      TabIndex        =   246
      Top             =   120
      Width           =   180
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "S"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   27
      Left            =   7080
      TabIndex        =   245
      Top             =   120
      Width           =   195
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "R"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   26
      Left            =   4080
      TabIndex        =   244
      Top             =   120
      Width           =   210
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "G"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   25
      Left            =   3000
      TabIndex        =   243
      Top             =   120
      Width           =   225
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "G"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   24
      Left            =   1560
      TabIndex        =   242
      Top             =   120
      Width           =   225
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "C"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   23
      Left            =   1200
      TabIndex        =   241
      Top             =   120
      Width           =   195
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "S"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   22
      Left            =   120
      TabIndex        =   240
      Top             =   120
      Width           =   195
   End
   Begin VB.Label Label6 
      Caption         =   "Etiquetas Masters"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   119
      Top             =   3960
      Width           =   8055
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Label4"
      Height          =   195
      Left            =   9480
      TabIndex        =   118
      Top             =   6480
      Width           =   480
   End
   Begin VB.Label Label5 
      Caption         =   "Label5"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   11160
      TabIndex        =   116
      Top             =   7080
      Width           =   375
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   21
      Left            =   8880
      TabIndex        =   90
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "B2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   300
      Index           =   21
      Left            =   8880
      TabIndex        =   89
      Top             =   120
      Width           =   345
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   20
      Left            =   8520
      TabIndex        =   88
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "G2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   300
      Index           =   20
      Left            =   8520
      TabIndex        =   87
      Top             =   120
      Width           =   375
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   19
      Left            =   8160
      TabIndex        =   86
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "R2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   300
      Index           =   19
      Left            =   8160
      TabIndex        =   85
      Top             =   120
      Width           =   360
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   18
      Left            =   5160
      TabIndex        =   84
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "B"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   300
      Index           =   18
      Left            =   5160
      TabIndex        =   83
      Top             =   120
      Width           =   195
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   17
      Left            =   4800
      TabIndex        =   82
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "G"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   300
      Index           =   17
      Left            =   4800
      TabIndex        =   81
      Top             =   120
      Width           =   225
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   16
      Left            =   4440
      TabIndex        =   80
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "R"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   300
      Index           =   16
      Left            =   4440
      TabIndex        =   79
      Top             =   120
      Width           =   210
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "M"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   300
      Index           =   15
      Left            =   6240
      TabIndex        =   66
      Top             =   120
      Width           =   225
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   15
      Left            =   6240
      TabIndex        =   65
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   300
      Index           =   14
      Left            =   5880
      TabIndex        =   64
      Top             =   120
      Width           =   195
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   14
      Left            =   5880
      TabIndex        =   63
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "C"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   300
      Index           =   13
      Left            =   5520
      TabIndex        =   62
      Top             =   120
      Width           =   195
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   13
      Left            =   5520
      TabIndex        =   61
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   12
      Left            =   11400
      TabIndex        =   60
      Top             =   120
      Width           =   165
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   12
      Left            =   11400
      TabIndex        =   59
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   11
      Left            =   11040
      TabIndex        =   58
      Top             =   120
      Width           =   165
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   11
      Left            =   11040
      TabIndex        =   57
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   10
      Left            =   10680
      TabIndex        =   56
      Top             =   120
      Width           =   165
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   10
      Left            =   10680
      TabIndex        =   55
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "W"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   300
      Index           =   9
      Left            =   6600
      TabIndex        =   54
      Top             =   120
      Width           =   255
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   9
      Left            =   6600
      TabIndex        =   53
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "D"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   8
      Left            =   9360
      TabIndex        =   52
      Top             =   120
      Width           =   210
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   8
      Left            =   9360
      TabIndex        =   51
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   7
      Left            =   7440
      TabIndex        =   30
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "D"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   7
      Left            =   7440
      TabIndex        =   29
      Top             =   120
      Width           =   210
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   6
      Left            =   3720
      TabIndex        =   26
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   6
      Left            =   3720
      TabIndex        =   25
      Top             =   120
      Width           =   105
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   5
      Left            =   3360
      TabIndex        =   22
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "F"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   5
      Left            =   3360
      TabIndex        =   21
      Top             =   120
      Width           =   180
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   4
      Left            =   2640
      TabIndex        =   18
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "R"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   4
      Left            =   2640
      TabIndex        =   17
      Top             =   120
      Width           =   210
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   3
      Left            =   2280
      TabIndex        =   14
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "P"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   3
      Left            =   2280
      TabIndex        =   13
      Top             =   120
      Width           =   180
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   2
      Left            =   1920
      TabIndex        =   10
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "R"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   2
      Left            =   1920
      TabIndex        =   9
      Top             =   120
      Width           =   210
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   1
      Left            =   840
      TabIndex        =   6
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "V"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   1
      Left            =   840
      TabIndex        =   5
      Top             =   120
      Width           =   195
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "255"
      Height          =   195
      Index           =   0
      Left            =   480
      TabIndex        =   2
      Top             =   480
      Width           =   270
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "D"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Index           =   0
      Left            =   480
      TabIndex        =   1
      Top             =   120
      Width           =   210
   End
End
Attribute VB_Name = "Masters"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ColorRGB As String
Dim Rojo As Integer, Verde As Integer, Azul As Integer

Private Sub Check1_Click(Index As Integer)
    If Check1(Index) = 0 Then
        MasterAbilitado(Index) = False
    Else
        MasterAbilitado(Index) = True
    End If
End Sub

Private Sub Check1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label6.Caption = EtiquetaMasters(Index + 1)
End Sub

Private Sub Check2_Click()
    If Check2.Value = 0 Then
        FreezeActivado(VScroll3.Value) = False
    Else
        FreezeValor(VScroll3.Value) = ValorDMXActual(VScroll3.Value - 1)
        FreezeActivado(VScroll3.Value) = True
    End If
    HScroll1.Value = FreezeValor(VScroll3.Value)
End Sub

Private Sub ColorFijo2_Click(Index As Integer)
    Dim i As Byte
    If Index < 10 Then
        i = 0
        Check1(13) = 1
        Check1(14) = 1
        Check1(15) = 1
        Check1(16) = 1
        Check1(17) = 1
        Check1(18) = 1
    Else
        i = 1
        Check1(19) = 1
        Check1(20) = 1
        Check1(21) = 1
    End If
    Picture1(i).Cls
    ColorRGB = ColorFijo2(Index).BackColor
    Azul = Int(ColorRGB / 65536)
    VScroll2(CantMasters - CantMasterMacros - 6 + (i * 3) + 2).Value = Azul
    Verde = Int((ColorRGB - (65536 * Azul)) / 256)
    VScroll2(CantMasters - CantMasterMacros - 6 + (i * 3) + 1).Value = Verde
    Rojo = ColorRGB And 255
    VScroll2(CantMasters - CantMasterMacros - 6 + (i * 3)).Value = Rojo
    If i = 0 Then
        VScroll2(CantMasters - CantMasterMacros - 9 + (i * 3) + 2).Value = 255 - Verde
        VScroll2(CantMasters - CantMasterMacros - 9 + (i * 3) + 1).Value = 255 - Azul
        VScroll2(CantMasters - CantMasterMacros - 9 + (i * 3)).Value = 255 - Rojo
    End If
    ActualizarMasters
End Sub

Private Sub Command1_Click()
    Dim i As Integer
    For i = 1 To 512
        Call AdelantarPrograma(ProgramaActual, 1, i)
    Next i
    ActualizarConsola
End Sub

Private Sub Command2_Click()
    For i = 1 To CantMasters - 4 - 1
        Check1(i).Value = 0
        'Check1_Click (i)
    Next i
End Sub

Private Sub Command3_Click()
    For i = 1 To CantMasters - 4 - 1
        Check1(i).Value = 1
        'Check1_Click (i)
    Next i
End Sub

Private Sub Command4_Click()
    If PlayStop = False Then
        For i = 1 To CantCanalesDMX
            If 0 < AsignacionCanal(i) Then
                MartizDMX(ProgramaActual, PasoActual, i) = ValorDMXActual(i - 1)
            End If
        Next i
    End If
ActualizarConsola
End Sub

Private Sub Command5_Click(Index As Integer)
    Dim AA As Byte
    If 12 < Index And Index < 26 Then 'Borra el circulo del PictureBox del movil
        Picture1(0).Cls
    End If
    If Index = 104 Then
        TimerHumo.Interval = Int(Text2.Text) * 1000
        TimerHumo.Enabled = True
    End If
    If Index = 52 Then 'Reset
        Dim Condición As Integer
        Condición = MsgBox("Desea resetear los moviles?", vbOKCancel, "Reset")
        If Condición = vbCancel Then
            Exit Sub
        ElseIf Condición = vbOK Then
            
        End If
        TimerReset.Enabled = True
    End If
    AA = Int(Index / CantidadMaxMacros) + 1
    MasterAbilitado(CantMasters - CantMasterMacros + AA - 1) = True
    Check1(CantMasters - CantMasterMacros + AA - 1) = 1
    MacroActual(AA) = Index - CantidadMaxMacros * (AA - 1)
End Sub

Private Sub Command5_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim AA As Byte
    AA = Int(Index / CantidadMaxMacros) + 1
    ApuntarMasterTabla (CantMasters - CantMasterMacros + AA)
    Label6.Caption = EtiquetaMasters(CantMasters - CantMasterMacros + AA) & " - " & EtiquetasPredeterminadasMacros(NumEtiqueta, Index - CantidadMaxMacros * (AA - 1) + 1)
End Sub

Private Sub Command6_Click(Index As Integer)
    Dim i As Byte
    Picture1(0).Cls
    Picture1(1).Cls
    For i = 0 To 1
        ColorRGB = Command6(Index).BackColor
        Azul = Int(ColorRGB / 65536)
        VScroll2(CantMasters - CantMasterMacros - 6 + (i * 3) + 2).Value = Azul
        Verde = Int((ColorRGB - (65536 * Azul)) / 256)
        VScroll2(CantMasters - CantMasterMacros - 6 + (i * 3) + 1).Value = Verde
        Rojo = ColorRGB And 255
        VScroll2(CantMasters - CantMasterMacros - 6 + (i * 3)).Value = Rojo
        If i = 0 Then
            VScroll2(CantMasters - CantMasterMacros - 9 + (i * 3) + 2).Value = 255 - Verde
            VScroll2(CantMasters - CantMasterMacros - 9 + (i * 3) + 1).Value = 255 - Azul
            VScroll2(CantMasters - CantMasterMacros - 9 + (i * 3)).Value = 255 - Rojo
        End If
    Next i
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '48 80 209
    Select Case KeyAscii
        Case vbKey1:   'COLORES
            Call Command5_Click(13)
        Case vbKey2:   '
            Call Command5_Click(14)
        Case vbKey3:   '
            Call Command5_Click(15)
        Case vbKey4:   '
            Call Command5_Click(16)
        Case vbKey5:   '
            Call Command5_Click(17)
        Case vbKey6:   '
            Call Command5_Click(18)
        Case vbKey7:   '
            Call Command5_Click(19)
        Case vbKey8:   '
            Call Command5_Click(20)
        Case vbKey9:   '
            Call Command5_Click(21)
        Case vbKey0:   '
            Call Command5_Click(22)
        Case vbKeyQ Or vbKeyQ + 32:  'MOVIL
            Call Command5_Click(0)
        Case vbKeyW Or vbKeyW + 32:  '
            Call Command5_Click(1)
        Case vbKeyE Or vbKeyE + 32: '
            Call Command5_Click(2)
        Case vbKeyR Or vbKeyR + 32: '
            Call Command5_Click(3)
        Case vbKeyT Or vbKeyT + 32:  '
            Call Command5_Click(4)
        Case vbKeyY Or vbKeyY + 32:  '
            Call Command5_Click(5)
        Case vbKeyA Or vbKeyA + 32:  'LED
            Call Command5_Click(65)
        Case vbKeyS Or vbKeyS + 32:  '
            Call Command5_Click(66)
        Case vbKeyD Or vbKeyD + 32:  '
            Call Command5_Click(67)
        Case vbKeyF Or vbKeyF + 32: '
            Call Command5_Click(68)
        Case vbKeyG Or vbKeyG + 32: '
            Call Command5_Click(69)
        Case vbKeyH Or vbKeyH + 32:  '
            Call Command5_Click(70)
        Case vbKeyZ Or vbKeyZ + 32:  'FLASH
            Call Command5_Click(91)
        Case vbKeyX Or vbKeyX + 32:  '
            Call Command5_Click(92)
        Case vbKeyC Or vbKeyC + 32: '
            Call Command5_Click(93)
        Case vbKeyV Or vbKeyV + 32:  '
            Call Command5_Click(94)
        Case vbKeyB Or vbKeyB + 32:  '
            Call Command5_Click(95)
        Case vbKeyN Or vbKeyN + 32: '
            Call Command5_Click(96)
        Case vbKeyP Or vbKeyP + 32:  'MAQUINA DE HUMO
            Call Command5_Click(104)
        Case vbKeyO Or vbKeyO + 32:  '
            Call Command5_Click(105)
    End Select
    AcumContraseñaProgramador = AcumContraseñaProgramador & Chr(KeyAscii)
    If Len(AcumContraseñaProgramador) = Len(ContraseñaProgramador) Then
        If AcumContraseñaProgramador = ContraseñaProgramador Then
            If ModoProgramador = True Then
                ModoProgramador = False
                Consola.Visible = False
                Asignar.Visible = False
                Editor.Visible = False
                Contenedor.mEditorEquipos.Visible = False
                Contenedor.mAgregarEquipos.Visible = False
                Contenedor.mGuardar.Visible = False
                Contenedor.mGuardarComo.Visible = False
                Contenedor.mBorrar.Visible = False
                Masters.Command4.Visible = False
                
            Else
                ModoProgramador = True
                Consola.Visible = True
                Asignar.Visible = True
                Editor.Visible = True
                Contenedor.mEditorEquipos.Visible = True
                Contenedor.mAgregarEquipos.Visible = True
                Contenedor.mGuardar.Visible = True
                Contenedor.mGuardarComo.Visible = True
                Contenedor.mBorrar.Visible = True
                Masters.Command4.Visible = True
                
            End If
        End If
        AcumContraseñaProgramador = right(AcumContraseñaProgramador, Len(AcumContraseñaProgramador) - 1)
    End If

End Sub

Private Sub Form_Load()
    Dim II As Byte, JJ As Byte
    For II = 0 To CantMasterMacros - 1
        ApuntarMasterTabla (CantMasters - CantMasterMacros + II + 1)
        For JJ = 0 To CantidadMaxMacros - 1
            If JJ < CantidadVisibeMacros(NumEtiqueta) Then
                Command5(II * CantidadMaxMacros + JJ).Visible = True
            End If
        Next JJ
    Next II
    ActualizarMasters
    AcumContraseñaProgramador = "uj"
    HScroll2.Value = 100
End Sub

Private Sub Frame1_DragDrop(Source As Control, X As Single, Y As Single)

End Sub

Private Sub HScroll1_Change()
    FreezeValor(VScroll3.Value) = HScroll1.Value
    ActualizarMasters
End Sub

Private Sub HScroll1_Scroll()
    ActualizarMasters
End Sub

Private Sub HScroll2_Change()
    AumentoTiempo = HScroll2.Value / 100
    Label9.Caption = HScroll2.Value & "%"
End Sub

Private Sub HScroll2_Scroll()
    Call HScroll2_Change
End Sub

Private Sub Label1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label6.Caption = EtiquetaMasters(Index + 1)
End Sub

Private Sub Label10_Change()
    Call Form_KeyPress(Label10.Caption)
End Sub

Private Sub Label2_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label6.Caption = EtiquetaMasters(Index + 1)

End Sub

Private Sub Picture1_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call Picture1_MouseMove(Index, Button, Shift, X, Y)
End Sub

Private Sub Picture1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then
        If Index < 1 Then
            i = 0
            Check1(13) = 1
            Check1(14) = 1
            Check1(15) = 1
            Check1(16) = 1
            Check1(17) = 1
            Check1(18) = 1
        Else
            i = 1
            Check1(19) = 1
            Check1(20) = 1
            Check1(21) = 1
        End If
        Picture1(Index).Cls
        Picture1(Index).DrawWidth = 3
        Picture1(Index).Circle (X, Y), 10, vbRed
        ColorRGB = Picture1(Index).Point(X, Y)
        If 0 < ColorRGB Then
            Azul = Int(ColorRGB / 65536)
            VScroll2(CantMasters - CantMasterMacros - 6 + (Index * 3) + 2).Value = Azul
            Verde = Int((ColorRGB - (65536 * Azul)) / 256)
            VScroll2(CantMasters - CantMasterMacros - 6 + (Index * 3) + 1).Value = Verde
            Rojo = ColorRGB And 255
            VScroll2(CantMasters - CantMasterMacros - 6 + (Index * 3)).Value = Rojo
            If Index = 0 Then
            VScroll2(CantMasters - CantMasterMacros - 9 + (Index * 3) + 2).Value = 255 - Verde
            VScroll2(CantMasters - CantMasterMacros - 9 + (Index * 3) + 1).Value = 255 - Azul
            VScroll2(CantMasters - CantMasterMacros - 9 + (Index * 3)).Value = 255 - Rojo
            End If
        End If
    End If
End Sub

Private Sub TimerHumo_Timer()
    TimerHumo.Enabled = False
    Command5_Click (105)
End Sub

Private Sub TimerReset_Timer()
    TimerReset.Enabled = False
    Command5_Click (53)
End Sub

Private Sub VScroll2_Change(Index As Integer)
    ValorMaster(Index) = VScroll2(Index)
    MasterAbilitado(Index) = True
    Check1(Index) = 1
    ActualizarMasters
End Sub

Private Sub VScroll2_Scroll(Index As Integer)
    VScroll2_Change (Index)
End Sub

Private Sub VScroll3_Change()
    If FreezeActivado(VScroll3.Value) = False Then
        Check2.Value = 0
    Else
        Check2.Value = 1
    End If
    HScroll1.Value = FreezeValor(VScroll3.Value)
    ActualizarMasters
End Sub
