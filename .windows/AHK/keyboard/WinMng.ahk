/**
 * Advanced Window Snap
 * Snaps the Active Window to one of nine different window positions.
 *
 * @author Andrew Moore <andrew+github@awmoore.com>
 * @version 1.0
 */
/**
 * SnapActiveWindow resizes and moves (snaps) the active window to a given position.
 * @param {string} winPlaceVertical   The vertical placement of the active window.
 *                                    Expecting "bottom" or "middle", otherwise assumes
 *                                    "top" placement.
 * @param {string} winPlaceHorizontal The horizontal placement of the active window.
 *                                    Expecting "left" or "right", otherwise assumes
 *                                    window should span the "full" width of the monitor.
 * @param {string} winSizeHeight      The height of the active window in relation to
 *                                    the active monitor's height. Expecting "half" size,
 *                                    otherwise will resize window to a "third".
 */
SnapActiveWindow(winPlaceVertical, winPlaceHorizontal, winSizeHeight) {
    WinGet activeWin, ID, A
    activeMon := GetMonitorIndexFromWindow(activeWin)
    SysGet, MonitorWorkArea, MonitorWorkArea, %activeMon%
    if (winSizeHeight == "half") {
        height := (MonitorWorkAreaBottom - MonitorWorkAreaTop)/2
    } else {
        height := (MonitorWorkAreaBottom - MonitorWorkAreaTop)/3
    }
    if (winPlaceHorizontal == "left") {
        posX  := MonitorWorkAreaLeft
        width := (MonitorWorkAreaRight - MonitorWorkAreaLeft)/2
    } else if (winPlaceHorizontal == "right") {
        posX  := MonitorWorkAreaLeft + (MonitorWorkAreaRight - MonitorWorkAreaLeft)/2
        width := (MonitorWorkAreaRight - MonitorWorkAreaLeft)/2
    } else {
        posX  := MonitorWorkAreaLeft
        width := MonitorWorkAreaRight - MonitorWorkAreaLeft
    }
    if (winPlaceVertical == "bottom") {
        posY := MonitorWorkAreaBottom - height
    } else if (winPlaceVertical == "middle") {
        posY := MonitorWorkAreaTop + height
    } else {
        posY := MonitorWorkAreaTop
    }
    WinMove,A,,%posX%,%posY%,%width%,%height%
}
/**
 * GetMonitorIndexFromWindow retrieves the HWND (unique ID) of a given window.
 * @param {Uint} windowHandle
 * @author shinywong
 * @link http://www.autohotkey.com/board/topic/69464-how-to-determine-a-window-is-in-which-monitor/?p=440355
 */
GetMonitorIndexFromWindow(windowHandle) {
    ; Starts with 1.
    monitorIndex := 1
    VarSetCapacity(monitorInfo, 40)
    NumPut(40, monitorInfo)
    if (monitorHandle := DllCall("MonitorFromWindow", "uint", windowHandle, "uint", 0x2))
        && DllCall("GetMonitorInfo", "uint", monitorHandle, "uint", &monitorInfo) {
        monitorLeft   := NumGet(monitorInfo,  4, "Int")
        monitorTop    := NumGet(monitorInfo,  8, "Int")
        monitorRight  := NumGet(monitorInfo, 12, "Int")
        monitorBottom := NumGet(monitorInfo, 16, "Int")
        workLeft      := NumGet(monitorInfo, 20, "Int")
        workTop       := NumGet(monitorInfo, 24, "Int")
        workRight     := NumGet(monitorInfo, 28, "Int")
        workBottom    := NumGet(monitorInfo, 32, "Int")
        isPrimary     := NumGet(monitorInfo, 36, "Int") & 1
        SysGet, monitorCount, MonitorCount
        Loop, %monitorCount% {
            SysGet, tempMon, Monitor, %A_Index%
            ; Compare location to determine the monitor index.
            if ((monitorLeft = tempMonLeft) and (monitorTop = tempMonTop)
                and (monitorRight = tempMonRight) and (monitorBottom = tempMonBottom)) {
                monitorIndex := A_Index
                break
            }
        }
    }
    return %monitorIndex%
}

; Directional Arrow Hotkeys
/ & d::SnapActiveWindow("top","full","half")
/ & f::SnapActiveWindow("bottom","full","half")

;^#!Up::SnapActiveWindow("top","full","third")
;^#!Down::SnapActiveWindow("bottom","full","third")
; Numberpad Hotkeys (Landscape)
;#!Numpad7::SnapActiveWindow("top","left","half")
;#!Numpad8::SnapActiveWindow("top","full","half")
;#!Numpad9::SnapActiveWindow("top","right","half")
;#!Numpad1::SnapActiveWindow("bottom","left","half")
;#!Numpad2::SnapActiveWindow("bottom","full","half")
;#!Numpad3::SnapActiveWindow("bottom","right","half")
; Numberpad Hotkeys (Portrait)
;^#!Numpad8::SnapActiveWindow("top","full","third")
;^#!Numpad5::SnapActiveWindow("middle","full","third")
;^#!Numpad2::SnapActiveWindow("bottom","full","third")




$*/::Send {Blind}{/}
