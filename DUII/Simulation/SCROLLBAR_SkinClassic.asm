﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\SCROLLBAR_SkinClassic.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_SCROLLBAR__SkinClassic
CONST	SEGMENT
_SCROLLBAR__SkinClassic DD FLAT:__Paint
	DD	FLAT:__Create
	ORG $+4
CONST	ENDS
PUBLIC	__$ArrayPad$
EXTRN	_GUI_ALLOC_UnlockH:PROC
EXTRN	_WIDGET__EFFECT_DrawUpRect:PROC
EXTRN	_WIDGET__DrawTriangle:PROC
EXTRN	_WIDGET__FillRectEx:PROC
EXTRN	_LCD_SetColor:PROC
EXTRN	_WIDGET__GetClientRect:PROC
EXTRN	_SCROLLBAR_LockH:PROC
EXTRN	___security_cookie:DWORD
EXTRN	@__security_check_cookie@4:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\widget\scrollbar_skinclassic.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT __Paint
_TEXT	SEGMENT
_rClient$ = -112					; size = 8
_r$ = -96						; size = 8
_Pos$ = -80						; size = 36
_ArrowOff$ = -36					; size = 4
_ArrowSize$ = -24					; size = 4
_pObj$ = -12						; size = 4
__$ArrayPad$ = -4					; size = 4
_hObj$ = 8						; size = 4
__Paint	PROC						; COMDAT
; Line 127
	push	ebp
	mov	ebp, esp
	sub	esp, 308				; 00000134H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-308]
	mov	ecx, 77					; 0000004dH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 132
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SCROLLBAR_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 136
	mov	esi, esp
	lea	eax, DWORD PTR _Pos$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hObj$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pObj$[ebp]
	mov	eax, DWORD PTR [edx+76]
	call	eax
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 138
	lea	eax, DWORD PTR _rClient$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	push	ecx
	call	_WIDGET__GetClientRect
	add	esp, 8
; Line 139
	mov	eax, DWORD PTR _rClient$[ebp]
	mov	DWORD PTR _r$[ebp], eax
	mov	ecx, DWORD PTR _rClient$[ebp+4]
	mov	DWORD PTR _r$[ebp+4], ecx
; Line 140
	movsx	eax, WORD PTR _r$[ebp+6]
	movsx	ecx, WORD PTR _r$[ebp+2]
	sub	eax, ecx
	cdq
	mov	ecx, 3
	idiv	ecx
	sub	eax, 1
	mov	DWORD PTR _ArrowSize$[ebp], eax
; Line 141
	mov	eax, DWORD PTR _ArrowSize$[ebp]
	cdq
	mov	ecx, 3
	idiv	ecx
	mov	edx, DWORD PTR _ArrowSize$[ebp]
	lea	eax, DWORD PTR [edx+eax+3]
	mov	DWORD PTR _ArrowOff$[ebp], eax
; Line 145
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+56]
	push	ecx
	call	_LCD_SetColor
	add	esp, 4
; Line 146
	mov	eax, DWORD PTR _rClient$[ebp]
	mov	DWORD PTR _r$[ebp], eax
	mov	ecx, DWORD PTR _rClient$[ebp+4]
	mov	DWORD PTR _r$[ebp+4], ecx
; Line 147
	mov	ax, WORD PTR _Pos$[ebp]
	mov	WORD PTR _r$[ebp], ax
; Line 148
	mov	ax, WORD PTR _Pos$[ebp+4]
	mov	WORD PTR _r$[ebp+4], ax
; Line 149
	lea	eax, DWORD PTR _r$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	push	ecx
	call	_WIDGET__FillRectEx
	add	esp, 8
; Line 150
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+64]
	push	ecx
	call	_LCD_SetColor
	add	esp, 4
; Line 151
	push	-1
	mov	eax, DWORD PTR _ArrowSize$[ebp]
	push	eax
	movsx	ecx, WORD PTR _r$[ebp+6]
	movsx	edx, WORD PTR _r$[ebp+2]
	sub	ecx, edx
	sar	ecx, 1
	push	ecx
	movsx	eax, WORD PTR _r$[ebp]
	add	eax, DWORD PTR _ArrowOff$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	push	ecx
	call	_WIDGET__DrawTriangle
	add	esp, 20					; 00000014H
; Line 152
	lea	eax, DWORD PTR _r$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	push	ecx
	call	_WIDGET__EFFECT_DrawUpRect
	add	esp, 8
; Line 156
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+60]
	push	ecx
	call	_LCD_SetColor
	add	esp, 4
; Line 157
	mov	eax, DWORD PTR _Pos$[ebp+4]
	add	eax, 1
	mov	WORD PTR _r$[ebp], ax
; Line 158
	mov	eax, DWORD PTR _Pos$[ebp+8]
	sub	eax, 1
	mov	WORD PTR _r$[ebp+4], ax
; Line 159
	lea	eax, DWORD PTR _r$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	push	ecx
	call	_WIDGET__FillRectEx
	add	esp, 8
; Line 160
	mov	eax, DWORD PTR _rClient$[ebp]
	mov	DWORD PTR _r$[ebp], eax
	mov	ecx, DWORD PTR _rClient$[ebp+4]
	mov	DWORD PTR _r$[ebp+4], ecx
; Line 161
	mov	eax, DWORD PTR _Pos$[ebp+12]
	add	eax, 1
	mov	WORD PTR _r$[ebp], ax
; Line 162
	mov	eax, DWORD PTR _Pos$[ebp+16]
	sub	eax, 1
	mov	WORD PTR _r$[ebp+4], ax
; Line 163
	lea	eax, DWORD PTR _r$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	push	ecx
	call	_WIDGET__FillRectEx
	add	esp, 8
; Line 167
	mov	eax, DWORD PTR _rClient$[ebp]
	mov	DWORD PTR _r$[ebp], eax
	mov	ecx, DWORD PTR _rClient$[ebp+4]
	mov	DWORD PTR _r$[ebp+4], ecx
; Line 168
	mov	ax, WORD PTR _Pos$[ebp+8]
	mov	WORD PTR _r$[ebp], ax
; Line 169
	mov	ax, WORD PTR _Pos$[ebp+12]
	mov	WORD PTR _r$[ebp+4], ax
; Line 170
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+56]
	push	ecx
	call	_LCD_SetColor
	add	esp, 4
; Line 171
	lea	eax, DWORD PTR _r$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	push	ecx
	call	_WIDGET__FillRectEx
	add	esp, 8
; Line 172
	lea	eax, DWORD PTR _r$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	push	ecx
	call	_WIDGET__EFFECT_DrawUpRect
	add	esp, 8
; Line 176
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+56]
	push	ecx
	call	_LCD_SetColor
	add	esp, 4
; Line 177
	mov	ax, WORD PTR _Pos$[ebp+16]
	mov	WORD PTR _r$[ebp], ax
; Line 178
	mov	ax, WORD PTR _Pos$[ebp+20]
	mov	WORD PTR _r$[ebp+4], ax
; Line 179
	lea	eax, DWORD PTR _r$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	push	ecx
	call	_WIDGET__FillRectEx
	add	esp, 8
; Line 180
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+64]
	push	ecx
	call	_LCD_SetColor
	add	esp, 4
; Line 181
	push	1
	mov	eax, DWORD PTR _ArrowSize$[ebp]
	push	eax
	movsx	ecx, WORD PTR _r$[ebp+6]
	movsx	edx, WORD PTR _r$[ebp+2]
	sub	ecx, edx
	sar	ecx, 1
	push	ecx
	movsx	eax, WORD PTR _r$[ebp+4]
	sub	eax, DWORD PTR _ArrowOff$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	push	ecx
	call	_WIDGET__DrawTriangle
	add	esp, 20					; 00000014H
; Line 182
	lea	eax, DWORD PTR _r$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	push	ecx
	call	_WIDGET__EFFECT_DrawUpRect
	add	esp, 8
; Line 186
	mov	eax, DWORD PTR _Pos$[ebp+20]
	cmp	eax, DWORD PTR _Pos$[ebp+24]
	je	SHORT $LN1@Paint
; Line 187
	mov	eax, DWORD PTR _Pos$[ebp+20]
	add	eax, 1
	mov	WORD PTR _r$[ebp], ax
; Line 188
	mov	ax, WORD PTR _Pos$[ebp+24]
	mov	WORD PTR _r$[ebp+4], ax
; Line 189
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+56]
	push	ecx
	call	_LCD_SetColor
	add	esp, 4
; Line 190
	lea	eax, DWORD PTR _r$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	push	ecx
	call	_WIDGET__FillRectEx
	add	esp, 8
$LN1@Paint:
; Line 192
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
; Line 193
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN8@Paint
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 308				; 00000134H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
$LN8@Paint:
	DD	3
	DD	$LN7@Paint
$LN7@Paint:
	DD	-80					; ffffffb0H
	DD	36					; 00000024H
	DD	$LN4@Paint
	DD	-96					; ffffffa0H
	DD	8
	DD	$LN5@Paint
	DD	-112					; ffffff90H
	DD	8
	DD	$LN6@Paint
$LN6@Paint:
	DB	114					; 00000072H
	DB	67					; 00000043H
	DB	108					; 0000006cH
	DB	105					; 00000069H
	DB	101					; 00000065H
	DB	110					; 0000006eH
	DB	116					; 00000074H
	DB	0
$LN5@Paint:
	DB	114					; 00000072H
	DB	0
$LN4@Paint:
	DB	80					; 00000050H
	DB	111					; 0000006fH
	DB	115					; 00000073H
	DB	0
__Paint	ENDP
_TEXT	ENDS
EXTRN	_WM_SetHasTrans:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __Create
_TEXT	SEGMENT
_pObj$ = -8						; size = 4
_hObj$ = 8						; size = 4
__Create PROC						; COMDAT
; Line 199
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 202
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_SetHasTrans
	add	esp, 4
; Line 203
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SCROLLBAR_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 204
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	DWORD PTR [eax+76], OFFSET __CalcPositions
; Line 205
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
; Line 206
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__Create ENDP
_TEXT	ENDS
EXTRN	_GUI__DivideRound32:PROC
EXTRN	_SCROLLBAR__Rect2VRect:PROC
EXTRN	_GUI_MoveRect:PROC
EXTRN	_WM_GetScrollbarH:PROC
EXTRN	_WM_GetWindowRectEx:PROC
EXTRN	_WM_GetScrollbarV:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __CalcPositions
_TEXT	SEGMENT
tv76 = -348						; size = 4
_y0$ = -148						; size = 4
_x0$ = -136						; size = 4
_rSub$ = -124						; size = 8
_r$ = -108						; size = 8
_hWin$ = -92						; size = 4
_xSizeThumbArea$ = -80					; size = 4
_NumItems$ = -68					; size = 4
_ThumbSize$ = -56					; size = 4
_xSizeMoveable$ = -44					; size = 4
_xSize$ = -32						; size = 4
_xSizeArrow$ = -20					; size = 4
_pObj$ = -8						; size = 4
_hObj$ = 8						; size = 4
_pPos$ = 12						; size = 4
__CalcPositions PROC					; COMDAT
; Line 59
	push	ebp
	mov	ebp, esp
	sub	esp, 348				; 0000015cH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-348]
	mov	ecx, 87					; 00000057H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 66
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SCROLLBAR_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 67
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+4]
	mov	DWORD PTR _r$[ebp], ecx
	mov	DWORD PTR _r$[ebp+4], edx
; Line 68
	movsx	eax, WORD PTR _r$[ebp]
	mov	DWORD PTR _x0$[ebp], eax
; Line 69
	movsx	eax, WORD PTR _r$[ebp+2]
	mov	DWORD PTR _y0$[ebp], eax
; Line 70
	mov	eax, DWORD PTR _pObj$[ebp]
	movzx	ecx, WORD PTR [eax+54]
	and	ecx, 8
	je	SHORT $LN11@CalcPositi
	movsx	edx, WORD PTR _r$[ebp+6]
	mov	DWORD PTR tv76[ebp], edx
	jmp	SHORT $LN12@CalcPositi
$LN11@CalcPositi:
	movsx	eax, WORD PTR _r$[ebp+4]
	mov	DWORD PTR tv76[ebp], eax
$LN12@CalcPositi:
	mov	ecx, DWORD PTR _pPos$[ebp]
	mov	edx, DWORD PTR tv76[ebp]
	mov	DWORD PTR [ecx+24], edx
; Line 74
	mov	eax, DWORD PTR _pObj$[ebp]
	movsx	ecx, WORD PTR [eax+52]
	cmp	ecx, 255				; 000000ffH
	jne	SHORT $LN8@CalcPositi
; Line 75
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+24]
	push	ecx
	call	_WM_GetScrollbarV
	add	esp, 4
	mov	DWORD PTR _hWin$[ebp], eax
; Line 76
	cmp	DWORD PTR _hWin$[ebp], 0
	je	SHORT $LN8@CalcPositi
; Line 77
	lea	eax, DWORD PTR _rSub$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hWin$[ebp]
	push	ecx
	call	_WM_GetWindowRectEx
	add	esp, 8
; Line 78
	movsx	eax, WORD PTR _r$[ebp+4]
	movsx	ecx, WORD PTR _rSub$[ebp+4]
	cmp	eax, ecx
	jne	SHORT $LN8@CalcPositi
; Line 79
	movsx	eax, WORD PTR _rSub$[ebp]
	sub	eax, 1
	mov	WORD PTR _r$[ebp+4], ax
$LN8@CalcPositi:
; Line 83
	mov	eax, DWORD PTR _pObj$[ebp]
	movsx	ecx, WORD PTR [eax+52]
	cmp	ecx, 254				; 000000feH
	jne	SHORT $LN5@CalcPositi
; Line 84
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+24]
	push	ecx
	call	_WM_GetScrollbarH
	add	esp, 4
	mov	DWORD PTR _hWin$[ebp], eax
; Line 85
	cmp	DWORD PTR _hWin$[ebp], 0
	je	SHORT $LN5@CalcPositi
; Line 86
	lea	eax, DWORD PTR _rSub$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hWin$[ebp]
	push	ecx
	call	_WM_GetWindowRectEx
	add	esp, 8
; Line 87
	movsx	eax, WORD PTR _r$[ebp+6]
	movsx	ecx, WORD PTR _rSub$[ebp+6]
	cmp	eax, ecx
	jne	SHORT $LN5@CalcPositi
; Line 88
	movsx	eax, WORD PTR _rSub$[ebp+2]
	sub	eax, 1
	mov	WORD PTR _r$[ebp+6], ax
$LN5@CalcPositi:
; Line 95
	mov	eax, DWORD PTR _y0$[ebp]
	neg	eax
	push	eax
	mov	ecx, DWORD PTR _x0$[ebp]
	neg	ecx
	push	ecx
	lea	edx, DWORD PTR _r$[ebp]
	push	edx
	call	_GUI_MoveRect
	add	esp, 12					; 0000000cH
; Line 99
	lea	eax, DWORD PTR _r$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	push	ecx
	call	_SCROLLBAR__Rect2VRect
	add	esp, 8
; Line 100
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+80]
	mov	DWORD PTR _NumItems$[ebp], ecx
; Line 101
	movsx	eax, WORD PTR _r$[ebp+4]
	movsx	ecx, WORD PTR _r$[ebp]
	sub	eax, ecx
	add	eax, 1
	mov	DWORD PTR _xSize$[ebp], eax
; Line 102
	mov	eax, DWORD PTR _pObj$[ebp]
	push	eax
	call	__GetArrowSize
	add	esp, 4
	mov	DWORD PTR _xSizeArrow$[ebp], eax
; Line 103
	mov	eax, DWORD PTR _xSizeArrow$[ebp]
	shl	eax, 1
	mov	ecx, DWORD PTR _xSize$[ebp]
	sub	ecx, eax
	mov	DWORD PTR _xSizeThumbArea$[ebp], ecx
; Line 104
	mov	eax, DWORD PTR _NumItems$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pObj$[ebp]
	mov	edx, DWORD PTR _xSizeThumbArea$[ebp]
	imul	edx, DWORD PTR [ecx+88]
	push	edx
	call	_GUI__DivideRound32
	add	esp, 8
	mov	DWORD PTR _ThumbSize$[ebp], eax
; Line 105
	cmp	DWORD PTR _ThumbSize$[ebp], 4
	jge	SHORT $LN2@CalcPositi
; Line 106
	mov	DWORD PTR _ThumbSize$[ebp], 4
$LN2@CalcPositi:
; Line 108
	mov	eax, DWORD PTR _ThumbSize$[ebp]
	cmp	eax, DWORD PTR _xSizeThumbArea$[ebp]
	jle	SHORT $LN1@CalcPositi
; Line 109
	mov	eax, DWORD PTR _xSizeThumbArea$[ebp]
	mov	DWORD PTR _ThumbSize$[ebp], eax
$LN1@CalcPositi:
; Line 111
	mov	eax, DWORD PTR _xSizeThumbArea$[ebp]
	sub	eax, DWORD PTR _ThumbSize$[ebp]
	mov	DWORD PTR _xSizeMoveable$[ebp], eax
; Line 112
	movsx	eax, WORD PTR _r$[ebp]
	mov	ecx, DWORD PTR _pPos$[ebp]
	mov	DWORD PTR [ecx], eax
; Line 113
	mov	eax, DWORD PTR _xSizeArrow$[ebp]
	sub	eax, 1
	mov	ecx, DWORD PTR _pPos$[ebp]
	mov	DWORD PTR [ecx+4], eax
; Line 114
	mov	eax, DWORD PTR _xSize$[ebp]
	sub	eax, 1
	mov	ecx, DWORD PTR _pPos$[ebp]
	mov	DWORD PTR [ecx+20], eax
; Line 115
	mov	eax, DWORD PTR _xSize$[ebp]
	sub	eax, DWORD PTR _xSizeArrow$[ebp]
	mov	ecx, DWORD PTR _pPos$[ebp]
	mov	DWORD PTR [ecx+16], eax
; Line 116
	mov	eax, DWORD PTR _pPos$[ebp]
	mov	esi, DWORD PTR [eax+4]
	mov	ecx, DWORD PTR _pObj$[ebp]
	mov	edx, DWORD PTR _NumItems$[ebp]
	sub	edx, DWORD PTR [ecx+88]
	push	edx
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR _xSizeMoveable$[ebp]
	imul	ecx, DWORD PTR [eax+84]
	push	ecx
	call	_GUI__DivideRound32
	add	esp, 8
	lea	edx, DWORD PTR [esi+eax+1]
	mov	eax, DWORD PTR _pPos$[ebp]
	mov	DWORD PTR [eax+8], edx
; Line 117
	mov	eax, DWORD PTR _pPos$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	edx, DWORD PTR _ThumbSize$[ebp]
	lea	eax, DWORD PTR [ecx+edx-1]
	mov	ecx, DWORD PTR _pPos$[ebp]
	mov	DWORD PTR [ecx+12], eax
; Line 118
	mov	eax, DWORD PTR _pPos$[ebp]
	mov	ecx, DWORD PTR _xSizeMoveable$[ebp]
	mov	DWORD PTR [eax+28], ecx
; Line 119
	mov	eax, DWORD PTR _pPos$[ebp]
	mov	ecx, DWORD PTR _ThumbSize$[ebp]
	mov	DWORD PTR [eax+32], ecx
; Line 120
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
; Line 121
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN16@CalcPositi
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 348				; 0000015cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	2
$LN16@CalcPositi:
	DD	2
	DD	$LN15@CalcPositi
$LN15@CalcPositi:
	DD	-108					; ffffff94H
	DD	8
	DD	$LN13@CalcPositi
	DD	-124					; ffffff84H
	DD	8
	DD	$LN14@CalcPositi
$LN14@CalcPositi:
	DB	114					; 00000072H
	DB	83					; 00000053H
	DB	117					; 00000075H
	DB	98					; 00000062H
	DB	0
$LN13@CalcPositi:
	DB	114					; 00000072H
	DB	0
__CalcPositions ENDP
_TEXT	ENDS
EXTRN	_WIDGET__GetYSize:PROC
EXTRN	_WIDGET__GetXSize:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __GetArrowSize
_TEXT	SEGMENT
_ySize$ = -32						; size = 4
_xSize$ = -20						; size = 4
_r$ = -8						; size = 4
_pObj$ = 8						; size = 4
__GetArrowSize PROC					; COMDAT
; Line 40
	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 43
	mov	eax, DWORD PTR _pObj$[ebp]
	push	eax
	call	_WIDGET__GetXSize
	add	esp, 4
	mov	DWORD PTR _xSize$[ebp], eax
; Line 44
	mov	eax, DWORD PTR _pObj$[ebp]
	push	eax
	call	_WIDGET__GetYSize
	add	esp, 4
	mov	DWORD PTR _ySize$[ebp], eax
; Line 45
	mov	eax, DWORD PTR _ySize$[ebp]
	shr	eax, 1
	add	eax, 5
	mov	DWORD PTR _r$[ebp], eax
; Line 46
	mov	eax, DWORD PTR _xSize$[ebp]
	sub	eax, 5
	cmp	DWORD PTR _r$[ebp], eax
	jbe	SHORT $LN1@GetArrowSi
; Line 47
	mov	eax, DWORD PTR _xSize$[ebp]
	sub	eax, 5
	mov	DWORD PTR _r$[ebp], eax
$LN1@GetArrowSi:
; Line 49
	mov	eax, DWORD PTR _r$[ebp]
; Line 50
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 228				; 000000e4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__GetArrowSize ENDP
_TEXT	ENDS
PUBLIC	_SCROLLBAR_SetSkinClassic
EXTRN	_WM_InvalidateWindow:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _SCROLLBAR_SetSkinClassic
_TEXT	SEGMENT
_pObj$ = -8						; size = 4
_hObj$ = 8						; size = 4
_SCROLLBAR_SetSkinClassic PROC				; COMDAT
; Line 229
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 232
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SCROLLBAR_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 233
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	DWORD PTR [eax+72], OFFSET _SCROLLBAR__SkinClassic
; Line 234
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	DWORD PTR [eax+76], OFFSET __CalcPositions
; Line 235
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
; Line 236
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_InvalidateWindow
	add	esp, 4
; Line 237
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_SCROLLBAR_SetSkinClassic ENDP
_TEXT	ENDS
PUBLIC	_SCROLLBAR_SetDefaultSkinClassic
EXTRN	_SCROLLBAR__pSkinDefault:DWORD
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _SCROLLBAR_SetDefaultSkinClassic
_TEXT	SEGMENT
_SCROLLBAR_SetDefaultSkinClassic PROC			; COMDAT
; Line 243
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 244
	mov	DWORD PTR _SCROLLBAR__pSkinDefault, OFFSET _SCROLLBAR__SkinClassic
; Line 245
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_SCROLLBAR_SetDefaultSkinClassic ENDP
_TEXT	ENDS
END