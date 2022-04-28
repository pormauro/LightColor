Attribute VB_Name = "OpenDmx"
' VB6 Driver for the Enttec.com "Open Dmx USB" interface

' NON-THREADED VERSION

' USAGE CONDITIONS...
'  please give credit to enttec for the interface, and me for this VB code
' OTHERWISE YOU ARE BREACHING THE USAGE CONDITIONS


' DISCLAIMER
'  im not responsible for anything, or liable in any way for'  anything to do with anything that has anything to do with me, you, your
'  wife or boss, any associates, pets, property, lights, investments and everything
'  else you can think up. if you don't like that, then don't do anything ever again.

' version: 1.1 (21 Sepetember 2004, 4pm AEST)
' author: hippy (rowanmac@optusnet.com.au)

' Requires: ftd2xx.dll


' opendmx.init  -  connect with the interface
' opendmx.done  -  disconnect
' opendmx.send  -  send the dmx buffer
' opendmx.set_dmx(array[1..512] as byte)  -  fill the dmx buffer

' if it wont connect, disconnect and reconnect the usb lead



' the ftd2xx.dll interface
Private Declare Function FT_Open Lib "FTD2XX.DLL" (ByVal intDeviceNumber As Integer, ByRef lngHandle As Long) As Long
Private Declare Function FT_Close Lib "FTD2XX.DLL" (ByVal lngHandle As Long) As Long
Private Declare Function FT_SetDivisor Lib "FTD2XX.DLL" (ByVal lngHandle As Long, ByVal div As Long) As Long
Private Declare Function FT_Read Lib "FTD2XX.DLL" (ByVal lngHandle As Long, ByVal lpszBuffer As String, ByVal lngBufferSize As Long, ByRef lngBytesReturned As Long) As Long
Private Declare Function FT_Write Lib "FTD2XX.DLL" (ByVal lngHandle As Long, ByVal lpszBuffer As String, ByVal lngBufferSize As Long, ByRef lngBytesWritten As Long) As Long
Private Declare Function FT_SetBaudRate Lib "FTD2XX.DLL" (ByVal lngHandle As Long, ByVal lngBaudRate As Long) As Long
Private Declare Function FT_SetDataCharacteristics Lib "FTD2XX.DLL" (ByVal lngHandle As Long, ByVal byWordLength As Byte, ByVal byStopBits As Byte, ByVal byParity As Byte) As Long
Private Declare Function FT_SetFlowControl Lib "FTD2XX.DLL" (ByVal lngHandle As Long, ByVal intFlowControl As Integer, ByVal byXonChar As Byte, ByVal byXoffChar As Byte) As Long
Private Declare Function FT_ResetDevice Lib "FTD2XX.DLL" (ByVal lngHandle As Long) As Long
Private Declare Function FT_SetDtr Lib "FTD2XX.DLL" (ByVal lngHandle As Long) As Long
Private Declare Function FT_ClrDtr Lib "FTD2XX.DLL" (ByVal lngHandle As Long) As Long
Private Declare Function FT_SetRts Lib "FTD2XX.DLL" (ByVal lngHandle As Long) As Long
Private Declare Function FT_ClrRts Lib "FTD2XX.DLL" (ByVal lngHandle As Long) As Long
Private Declare Function FT_GetModemStatus Lib "FTD2XX.DLL" (ByVal lngHandle As Long, ByRef lngModemStatus As Long) As Long
Private Declare Function FT_Purge Lib "FTD2XX.DLL" (ByVal lngHandle As Long, ByVal lngMask As Long) As Long
Private Declare Function FT_GetStatus Lib "FTD2XX.DLL" (ByVal lngHandle As Long, ByRef lngRxBytes As Long, ByRef lngTxBytes As Long, ByRef lngEventsDWord As Long) As Long
Private Declare Function FT_GetQueueStatus Lib "FTD2XX.DLL" (ByVal lngHandle As Long, ByRef lngRxBytes As Long) As Long
Private Declare Function FT_GetEventStatus Lib "FTD2XX.DLL" (ByVal lngHandle As Long, ByRef lngEventsDWord As Long) As Long
Private Declare Function FT_SetChars Lib "FTD2XX.DLL" (ByVal lngHandle As Long, ByVal byEventChar As Byte, ByVal byEventCharEnabled As Byte, ByVal byErrorChar As Byte, ByVal byErrorCharEnabled As Byte) As Long
Private Declare Function FT_SetTimeouts Lib "FTD2XX.DLL" (ByVal lngHandle As Long, ByVal lngReadTimeout As Long, ByVal lngWriteTimeout As Long) As Long
Private Declare Function FT_SetBreakOn Lib "FTD2XX.DLL" (ByVal lngHandle As Long) As Long
Private Declare Function FT_SetBreakOff Lib "FTD2XX.DLL" (ByVal lngHandle As Long) As Long

' Return codes
Const FT_OK = 0
Const FT_INVALID_HANDLE = 1
Const FT_DEVICE_NOT_FOUND = 2
Const FT_DEVICE_NOT_OPENED = 3
Const FT_IO_ERROR = 4
Const FT_INSUFFICIENT_RESOURCES = 5


' Word Lengths
Const FT_BITS_8 = 8
Const FT_BITS_7 = 7

' Stop Bits
Const FT_STOP_BITS_1 = 0
Const FT_STOP_BITS_1_5 = 1
Const FT_STOP_BITS_2 = 2

' Parity
Const FT_PARITY_NONE = 0
Const FT_PARITY_ODD = 1
Const FT_PARITY_EVEN = 2
Const FT_PARITY_MARK = 3
Const FT_PARITY_SPACE = 4

' Flow Control
Const FT_FLOW_NONE = &H0
Const FT_FLOW_RTS_CTS = &H100
Const FT_FLOW_DTR_DSR = &H200
Const FT_FLOW_XON_XOFF = &H400

' Purge rx and tx buffers
Const FT_PURGE_RX = 1
Const FT_PURGE_TX = 2

Public ARRANCA As Boolean

Dim lngHandle As Long ' device handle

Dim strWriteBuffer As String * 512 ' the buffer to send
Dim lngBytesWritten As Long ' how much has been sent

Dim strReadBuffer As String * 512 ' not yet
Dim lngBytesRead As Long ' not yet



Dim connected As Boolean      ' is device connected
Public startcode As Byte   ' dmx startcode





' Open the device
Public Sub init()

connected = False

If FT_Open(0, lngHandle) <> FT_OK Then
    MsgBox "Error al abrir el puerto"
    End
    done
    Exit Sub
End If

' reset the device
If FT_ResetDevice(lngHandle) <> FT_OK Then
    MsgBox "Failed To Reset Device!"
    done
    Exit Sub
End If

' set the baud rate
If FT_SetDivisor(lngHandle, 12) Then
    MsgBox "Failed To Set Baud Rate!"
    done
    Exit Sub
End If

' shape the line
If FT_SetDataCharacteristics(lngHandle, FT_BITS_8, FT_STOP_BITS_2, FT_PARITY_NONE) <> FT_OK Then
    MsgBox "Failed To Set Data Characteristics!"
    done
    Exit Sub
End If

' no flow control
If FT_SetFlowControl(lngHandle, FT_FLOW_NONE, 0, 0) <> FT_OK Then
    MsgBox "Failed to set flow control!"
    done
    Exit Sub
End If
        
        
' set send dmx
If FT_ClrRts(lngHandle) <> FT_OK Then
   MsgBox "Failed to set RS485 to send!"
   done
   Exit Sub
End If
     
       
' Clear TX RX buffers
If FT_Purge(lngHandle, FT_PURGE_TX) <> FT_OK Then
   MsgBox "Failed to purge TX buffer!"
   done
   Exit Sub
End If

If FT_Purge(lngHandle, FT_PURGE_RX) <> FT_OK Then
   MsgBox "Failed to purge RX buffer!"
   done
   Exit Sub
End If

strWriteBuffer = ""
lngBytesWritten = 0

' default
startcode = 0
connected = True


' YOU MAY ONLY REMOVE THIS LINE IF CREDIT IS GIVEN ELSEWHERE IN YOUR APPLICATION
' OTHERWISE YOU ARE BREACHING THE USAGE CONDITIONS

End Sub ' init


' close the device
Public Sub done()

' if not connected then exit
If connected <> True Then
 Exit Sub
End If

If FT_Close(lngHandle) <> FT_OK Then
    MsgBox "Close Failed"
End If

connected = False

End Sub 'done

' recieve dmx data from app into buffer
Public Sub set_dmx(dmxarray() As Byte)
' convert byte array to string
 strWriteBuffer = StrConv(dmxarray, vbUnicode)
End Sub



' send a frame to the interface
Public Sub send()
    
' if not connected then exit
If connected <> True Then
 Exit Sub
End If
    
' break
FT_SetBreakOn (lngHandle)
FT_SetBreakOff (lngHandle)

' write start code
If FT_Write(lngHandle, Chr(startcode), 1, lngBytesWritten) <> FT_OK Then
    MsgBox "Write Start Code Failed!"
End If
 
' write dmx data
If FT_Write(lngHandle, strWriteBuffer, Len(strWriteBuffer), lngBytesWritten) <> FT_OK Then
     MsgBox "Write DMX Failed!"
End If
       
End Sub







Public Sub Llave()
    'Reseteo para limpiar el buffer de entrada
    If FT_ResetDevice(lngHandle) <> FT_OK Then
        MsgBox "Todo Mal"
    End If
    
     strWriteBuffer = ffffffffffffffffffffffff 'StrConv(dmxarray, vbUnicode)

    'Genero los Numeros aleatoreos y envio todos los datos
    
    Dim A As Byte, B As Byte, C As Byte, Result As Byte
    Randomize
    A = 1
    B = 255 * Rnd
    C = 255 * Rnd
    Result = Int(B / 16) * Int(C / 16)
    If 255 < Result Then
        Result = 255
    End If
    If connected <> True Then
     Exit Sub
    End If
  
    Dim TextoLLave As String
    TextoLLave = "PP Iluminaciones" & Chr(A) & Chr(B) & Chr(C)
    ' Envia Información al PIC
    If FT_Write(lngHandle, TextoLLave, Len(TextoLLave) + 1, lngBytesWritten) <> FT_OK Then
        MsgBox "Write Start Code Failed!"
    End If '

    'Recibo toda la data

    If FT_Read(lngHandle, strReadBuffer, 9, lngBytesRead) <> FT_OK Then
        MsgBox "Todo Mal"
    End If
    If Mid(strReadBuffer, 1, 6) = "TodoOk" Then
        If Asc(Mid(strReadBuffer, 7, 1)) = Result Then
            MsgBox ("USB-DMX512 está conectado correctamente!")
  'Dim Fecha As Date
  'Fecha = "14/3/2015"
  'If Date < Fecha Then
            ARRANCA = True
  'End If
        End If
    End If
End Sub

