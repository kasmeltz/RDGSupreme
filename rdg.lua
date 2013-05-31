--[[

  Monolithic Random Decision Generator, as I believe that the famous Highlander quote
	was really a secret message from God in reference to source files.

	=====================================================================================================================================
	Highlights (low lights):
		code generation that creates 
			thousands of lines that weave through space and time
			random emptry try catch blocks (OBVIOUSLY??!!!) (p.s. we reserve the right to replace these afformentioned 
				emptry try catch blocks with the lua equivalent if try catch doesn't actually exist in lua) 
		uses some kind of factorial O(n!) algorithm somewhere
			bonus if you can figure out where it is and WTF that means
		no explicit numeric values 
			uses defined constants for important numeric values and some functions to derive all 
			other numeric values (for future compatibility... DUH!!!)
		misleading comments
		comments that make you laugh
		re-donk-ulous comments (how the @%^#&!$#^! do you spell that anyways?)
		at least one line of source that is over 2000 characters long 
		ASCII based UI
		fully animated title screen - BABY!
		funny spellsings and grammaristimical mistakes
		no error checking - excepting for satiramical purposes
		no matter how bad everything else is... we're using sensible casing throughout because DAMNIT.. THAT'S IMPORTANT!
		guaranteed to generate a yes/no decision within five minutes - or your money back!!!		
	=====================================================================================================================================
	
	(c) 2013 Dirty Weasel Productions
	
	Ok you got me, it's not really copyrighted but I wanted to come up with a cool sounding name
	
]]

print 'Firin\' up the ship captain... give us a wee moment'
		
-- DO NOT CHANGE THESE VALUES UNDER ANY CIRCUMSTANCES OR I WILL CHOP YOUR HANDS OFF AND FEED THEM
-- TO MY PET ALLIGATORS!!!!!
--
-- Hmmm ok now that I read that comment it sounds a bit harsh...
--
-- You know I would never do anything to hurt you baby... I was only trying to make a point...
--
-- Just don't change anything ok? Please? Pinky swear?
--
-- ** ATTENTION **
-- Remember to change these messages before we go live to production otherwise we will looks like fools
-- and probably be arrested and charged 
-- ** ATTENTION
--
local whichWay = 'new_hotness'
local initialPrompt = 'Does you wants a random decision to what be like made fors ya?'
local wtfPrompt = 'Then why you be running this softwares in the first place? COCK TEASE!'

--
-- n.b. 
-- We need to define these constants in case the value of numbers in our number system changes
--
local numericValues = {}
numericValues.zero = 0
numericValues.one = 1

--
-- This function assigns a numeric value to a variable that has been passed in by reference
--
function assignNumericValueToVariablePassedInByReference(daTable, someNumber)
	daTable.daValue = numericValues.zero
	for i = numericValues.one, someNumber do
		daTable.daValue = daTable.daValue + numericValues.one
	end	
end

-----------------------------------------------------------------------------------------------------------------------------------------
--
-- Section that does some esoteric things with C libraries
-- that could potentially crash the entire operating system (and possibly parts of NASA)
-- which is (for obvious reasons) completely undocumented
-- (except for these comments... ... ... ... ... ... ... ... shit)
-- P.S. comments for satirimical purposes also acceptable
--
local ffi = require 'ffi'
-- since this is just a string, it's way more readable to put it all on one line - f'er sure dood!!!
ffi.cdef[[typedef unsigned char BYTE; typedef void VOID; typedef int BOOL; typedef void *PVOID; typedef void *LPVOID; typedef unsigned short WORD; typedef short SHORT; typedef BYTE *PBYTE; typedef unsigned long DWORD; typedef PVOID HANDLE; typedef char CHAR; typedef char TCHAR; typedef DWORD *LPDWORD; static const DWORD FOREGROUND_BLUE = 1; static const DWORD FOREGROUND_GREEN = 2; static const DWORD FOREGROUND_RED = 4; static const DWORD FOREGROUND_INTENSITY	= 8; static const DWORD BACKGROUND_BLUE = 16; static const DWORD BACKGROUND_GREEN = 32; static const DWORD BACKGROUND_RED = 64; static const DWORD BACKGROUND_INTENSITY = 128; static const DWORD STD_OUTPUT_HANDLE = ((DWORD)-11); static const DWORD GENERIC_READ = 0x80000000; static const DWORD GENERIC_WRITE = 0x40000000; static const DWORD GENERIC_EXECUTE = 0x20000000; static const DWORD GENERIC_ALL = 0x10000000; static const DWORD FILE_SHARE_READ = 0x00000001; static const DWORD FILE_SHARE_WRITE = 0x00000002; static const DWORD FILE_SHARE_DELETE = 0x00000004; static const DWORD CONSOLE_TEXTMODE_BUFFER = 1; typedef struct _SMALL_RECT { SHORT Left; SHORT Top; SHORT Right; SHORT Bottom; } SMALL_RECT, *PSMALL_RECT; typedef struct _COORD { SHORT X; SHORT Y; } COORD, *PCOORD; typedef struct _SECURITY_ATTRIBUTES { DWORD  nLength; LPVOID lpSecurityDescriptor; BOOL   bInheritHandle; } SECURITY_ATTRIBUTES, *PSECURITY_ATTRIBUTES, *LPSECURITY_ATTRIBUTES; typedef struct _CHAR_INFO { CHAR Char; WORD Attributes; } CHAR_INFO, *PCHAR_INFO; typedef struct _CONSOLE_CURSOR_INFO { DWORD dwSize; BOOL  bVisible; } CONSOLE_CURSOR_INFO, *PCONSOLE_CURSOR_INFO; HANDLE GetStdHandle( DWORD nStdHandle ); HANDLE CreateConsoleScreenBuffer( DWORD dwDesiredAccess, DWORD dwShareMode, const SECURITY_ATTRIBUTES *lpSecurityAttributes, DWORD dwFlags, LPVOID lpScreenBufferData ); BOOL SetConsoleActiveScreenBuffer( HANDLE hConsoleOutput ); BOOL ReadConsoleOutputA( HANDLE hConsoleOutput, PCHAR_INFO lpBuffer, COORD dwBufferSize, COORD dwBufferCoord, PSMALL_RECT lpReadRegion ); BOOL WriteConsoleOutputA( HANDLE hConsoleOutput, const CHAR_INFO *lpBuffer, COORD dwBufferSize, COORD dwBufferCoord, PSMALL_RECT lpWriteRegion ); BOOL FillConsoleOutputCharacterA( HANDLE hConsoleOutput, TCHAR cCharacter, DWORD nLength, COORD dwWriteCoord,LPDWORD lpNumberOfCharsWritten ); BOOL FillConsoleOutputAttribute( HANDLE hConsoleOutput, WORD wAttribute, DWORD nLength, COORD dwWriteCoord, LPDWORD lpNumberOfAttrsWritten );	 VOID Sleep( DWORD dwMilliseconds ); BOOL SetConsoleCursorInfo( HANDLE hConsoleOutput, const CONSOLE_CURSOR_INFO *lpConsoleCursorInfo ); BOOL GetKeyboardState(PBYTE lpKeyState); SHORT GetKeyState(int nVirtKey); SHORT GetAsyncKeyState(int vKey);]]
-- get a screen buffer for the Qt based GUI system
local stdout = ffi.C.GetStdHandle(ffi.C.STD_OUTPUT_HANDLE)
local hugeFreakinTable = {}
assignNumericValueToVariablePassedInByReference(hugeFreakinTable, 1073741824)
local threeTable = {}
assignNumericValueToVariablePassedInByReference(threeTable, 3)
local threeThousandOneHundredNinetyNineTable = {}
assignNumericValueToVariablePassedInByReference(threeThousandOneHundredNinetyNineTable, 3199)
local sixtyFiveTable = {}
assignNumericValueToVariablePassedInByReference(sixtyFiveTable, 65)
local thirtyNineTable = {}
assignNumericValueToVariablePassedInByReference(thirtyNineTable, 39)
local fortyTable = {}
assignNumericValueToVariablePassedInByReference(fortyTable, 40)
local seventyNineTable = {}
assignNumericValueToVariablePassedInByReference(seventyNineTable, 79)
local eightyTable = {}
assignNumericValueToVariablePassedInByReference(eightyTable, 80)
-- magic numbers (even though we have explicitly defined these elsewhere) - weeeeeeeeeeeeeeeeeeeeeeeee!!!!!!!!
-- well ok not really magic numbers because we're doing this stupid no number table gag thing but... you get the point, no?
-- also see how we can just use numericValues.one here instead of using assignNumericValueToVariablePassedInByReference?! BRILLIANT!!!
local screenBuffer = ffi.C.CreateConsoleScreenBuffer(hugeFreakinTable.daValue, threeTable.daValue, nil, numericValues.one, nil)
-- n.b. don't do any error checking under any circumstances when making low level system calls
ffi.C.SetConsoleActiveScreenBuffer(screenBuffer)
local cursorInfo = ffi.new('CONSOLE_CURSOR_INFO[' .. numericValues.one .. ']')
cursorInfo[numericValues.zero].dwSize = numericValues.one
cursorInfo[numericValues.zero].bVisible = numericValues.zero
ffi.C.SetConsoleCursorInfo(screenBuffer, cursorInfo)
local writeRect = ffi.new('SMALL_RECT[' .. numericValues.one .. ']')
local bufSize = ffi.new('COORD')
local bufCoord = ffi.new('COORD')
local backBuffer = ffi.new('CHAR_INFO[3200]')
bufSize.Y = fortyTable.daValue
bufSize.X = eightyTable.daValue
bufCoord.X = numericValues.zero
bufCoord.Y = numericValues.zero
writeRect[numericValues.zero].Top = numericValues.zero
writeRect[numericValues.zero].Left = numericValues.zero
writeRect[numericValues.zero].Bottom = thirtyNineTable.daValue
writeRect[numericValues.zero].Right = seventyNineTable.daValue
function clearDatBackBuffer() 
	for i = numericValues.zero, threeThousandOneHundredNinetyNineTable.daValue do 
		backBuffer[i].Char = numericValues.zero
		backBuffer[i].Attributes = numericValues.zero
	end 
end
function writeDatOleBackBifferToDeeScreen() 
	ffi.C.WriteConsoleOutputA(screenBuffer, backBuffer, bufSize, bufCoord, writeRect) 
end
function crazyPrint(text, attribute, x, y)
	local pos = y * eightyTable.daValue + x
	for i = numericValues.one, string.len(text) do
		backBuffer[pos].Char = string.byte(text, i, i)
		backBuffer[pos].Attributes = attribute
		pos = pos + numericValues.one
	end
end
function drawRectangle(l, t, w, h, c, a)
	local pos
	for x = l, l + w - numericValues.one do
		pos = t * eightyTable.daValue + x
		backBuffer[pos].Char = c
		backBuffer[pos].Attributes = a
		pos = (t + h  - numericValues.one) * eightyTable.daValue + x
		backBuffer[pos].Char = c
		backBuffer[pos].Attributes = a		
	end		
	for y = t, t + h - numericValues.one do
		pos = y * eightyTable.daValue + l
		backBuffer[pos].Char = c
		backBuffer[pos].Attributes = a
		pos = y * eightyTable.daValue + l + w - numericValues.one
		backBuffer[pos].Char = c
		backBuffer[pos].Attributes = a		
	end
end	
-- End esoteric undocumented (expect for satrimical purposes) C-section
-----------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
-- <--- CODE STARTS HERE (please ignore everything above these lines as it is not imporant
-- to the functioning of this module. 
----------------------------------------------------------------------------------------------------

--
-- ** ATTENTION **
-- Please don't use this function as lua can't assign values to variables passed in by value!
-- ** ATTENTION **
--
-- This function assigns a numeric value to a variable that has been passed in by value
--
function assignNumericValueToVariablePassedInByValue(someNumber)	
	local value = numericValues.zero
	for i = numericValues.one, someNumber do
		value = value + numericValues.one
	end		
	-- do nothing
	value = value
end

-- here be the frames for the opening animation
local titleScreenFrames = {}

local blown2 = 'B    B  L      O    O  W         W  NN    N'
local blown1 = 'BBBBB   L       OOOO   W         W  N     N'
local blown3 = 'B    B  L      O    O  W         W  N N   N'
local blown5 = 'B    B  L      O    O   W   W   W   N   N N'
local blown4 = 'BBBBB   L      O    O  W         W  N  N  N'
local blown7 = 'BBBBB   LLLLL   OOOO      W   W     N     N'
local blown6 = 'B    B  L      O    O    W W W W    N    NN'

-- don't uncomment or everything breaks!!!
--ffi.C.SetConsoleActiveScreenBuffer(stdout)

local away3 = 'A    A  W         W  A    A   Y   Y '
local away1 = '  AA    W         W    AA    Y     Y'
local away6 = 'A    A    W W W W    A    A     Y   '
local away7 = 'A    A     W   W     A    A     Y   '
local away2 = ' A  A   W         W   A  A   Y     Y'
local away4 = 'AAAAAA  W         W  AAAAAA    Y Y  '
local away5 = 'A    A   W   W   W   A    A     Y   '

function createBorderFrame(litChar, litAttr, unlitChar, unlitAttr, litPos, wrapPos, insideRows)
	local borderAnimation = {}
		
	borderAnimation[1] = ''
	local currentLightPos = 0
	
	for x = 1, 80 do
		if currentLightPos == litPos then
			borderAnimation[1] = borderAnimation[1] .. litChar .. litAttr
		else
			borderAnimation[1] = borderAnimation[1] .. unlitChar .. unlitAttr
		end			
		
		if currentLightPos == wrapPos then
			currentLightPos = 0
		else
			currentLightPos = currentLightPos + 1
		end		
	end
	
	for y = 2, 23 do
		borderAnimation[y] = ''
		if currentLightPos == litPos then
			borderAnimation[y] = borderAnimation[y] .. litChar .. litAttr
		else
			borderAnimation[y] = borderAnimation[y] .. unlitChar .. unlitAttr
		end			
		
		if currentLightPos == wrapPos then
			currentLightPos = 0
		else
			currentLightPos = currentLightPos + 1
		end		
	end
	
	borderAnimation[24] = ''
	
	for x = 1, 80 do
		if currentLightPos == litPos then
			borderAnimation[24] = litChar .. litAttr .. borderAnimation[24]
		else
			borderAnimation[24] = unlitChar .. unlitAttr .. borderAnimation[24] 
		end			
		
		if currentLightPos == wrapPos then
			currentLightPos = 0
		else
			currentLightPos = currentLightPos + 1
		end		
	end
		
	local emptyRow = ' \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000 \000'
	
	for y = 23, 2, -1 do
		local insideRow
		if type(insideRows) == 'table' and #insideRows >= y then
			insideRow = insideRows[y]
		else
			insideRow = emptyRow
		end

		if currentLightPos == litPos then
			borderAnimation[y] =  litChar .. litAttr .. insideRow .. borderAnimation[y]
		else
			borderAnimation[y] = unlitChar .. unlitAttr .. insideRow .. borderAnimation[y]
		end			
		
		if currentLightPos == wrapPos then
			currentLightPos = 0
		else
			currentLightPos = currentLightPos + 1
		end		
	end
	
	return borderAnimation
end

local lightLoops = 265
local lightSpacing = 6
for i = 1, lightLoops do
	for j = 0, lightSpacing - 1 do
		local newFrame = createBorderFrame('*', '\126', '*', '\112', j, lightSpacing)
		titleScreenFrames[#titleScreenFrames+1] = newFrame
		titleScreenFrames[#titleScreenFrames].delay = 33
	end
end

function printIntoFrame(frame, text, attr, x, y)	
	local row = frame[y]
	local beforeText = row:sub(1, ((x - 1) * 2))	

	-- not for debugging purposes
	--print('==========')
	--print('= BEFORE =')
	--print('==========')
	--print(row)
	--print('<--' .. beforeText .. '-->')
	--print('Length of beforeText: ' .. #beforeText)
	--print('Length of row: ' .. #row)
	
	local attrText = ''
	for i = 1, #text do
		attrText = attrText .. text:sub(i,i) .. attr
	end	
	
	local afterText = row:sub(((x-1) * 2) + (#text * 2) + 1)
	frame[y] = beforeText .. attrText .. afterText
	-- not for debugging purposes
	--print('=========')
	--print('= AFTER =')
	--print('=========')	
	--print(frame[y])
	--print('Length of attrText: ' .. #attrText)
	--print('Length of afterText: ' .. #afterText)	
	--print('Length of row: ' .. #frame[y])
end

function printIntoManyFrames(startFrame, endFrame, text, attr, x, y)	
	for i = startFrame, endFrame do
		printIntoFrame(titleScreenFrames[i], text, attr, x, y)	
	end
end

function slideTextFromLeft(text, attr, startFrame, startX, finalX, Y, framesPerStep)
	local currentX = startX
	local currentFrame = startFrame
	local currentStep = 0
	local partialPos = #text
	
	repeat
		printIntoFrame(titleScreenFrames[currentFrame], text:sub(partialPos), attr, currentX, Y)
		currentFrame = currentFrame + 1		
		currentStep = currentStep + 1
		if currentStep >= framesPerStep then
			partialPos = partialPos - 1
			currentStep = 0
		end
	until partialPos == 1
		
	repeat
		printIntoFrame(titleScreenFrames[currentFrame], text, attr, currentX, Y)
		currentFrame = currentFrame + 1
		
		currentStep = currentStep + 1
		if currentStep >= framesPerStep then
			currentX = currentX + 1
			currentStep = 0
		end
		
	until currentX >= finalX
	
	return currentFrame
end

function slideTextFromRight(text, attr, startFrame, startX, finalX, Y, framesPerStep)
	local currentX = startX
	local currentFrame = startFrame
	local currentStep = 0
	local partialPos = 1
	
	repeat
		printIntoFrame(titleScreenFrames[currentFrame], text:sub(1, partialPos), attr, currentX, Y)
		currentFrame = currentFrame + 1		
		currentStep = currentStep + 1
		if currentStep >= framesPerStep then
			partialPos = partialPos + 1
			currentStep = 0
			currentX = currentX - 1
		end
	until partialPos == #text
		
	repeat
		printIntoFrame(titleScreenFrames[currentFrame], text, attr, currentX, Y)
		currentFrame = currentFrame + 1
		
		currentStep = currentStep + 1
		if currentStep >= framesPerStep then
			currentX = currentX - 1
			currentStep = 0
		end
		
	until currentX <= finalX
	
	return currentFrame
end

function slideTextFromBottom(text, attr, startFrame, X, startY, finalY, framesPerStep)
	local currentY = startY
	local currentFrame = startFrame
	local currentStep = 0
			
	repeat
		printIntoFrame(titleScreenFrames[currentFrame], text, attr, X, currentY)
		currentFrame = currentFrame + 1
		
		currentStep = currentStep + 1
		if currentStep >= framesPerStep then
			currentY = currentY - 1
			currentStep = 0
		end
		
	until currentY <= finalY
	
	return currentFrame
end

function slideTextFromTop(text, attr, startFrame, X, startY, finalY, framesPerStep)
	local currentY = startY
	local currentFrame = startFrame
	local currentStep = 0
			
	repeat
		printIntoFrame(titleScreenFrames[currentFrame], text, attr, X, currentY)
		currentFrame = currentFrame + 1
		
		currentStep = currentStep + 1
		if currentStep >= framesPerStep then
			currentY = currentY + 1
			currentStep = 0
		end
		
	until currentY >= finalY
	
	return currentFrame
end

local firstDittyEndFrame = 330
local slideEndFrame = slideTextFromLeft('Introducing', '\011', 20, 2, 35, 7, 1)
printIntoManyFrames(slideEndFrame, firstDittyEndFrame, 'Introducing', '\011', 35, 7)	
local slideEndFrame = slideTextFromRight('The Greatest', '\013', slideEndFrame, 79, 35, 9, 1)
printIntoManyFrames(slideEndFrame, firstDittyEndFrame, 'The Greatest', '\013', 35, 9)	
local slideEndFrame = slideTextFromBottom('Decision Making', '\014', slideEndFrame, 33, 23, 11, 2)
printIntoManyFrames(slideEndFrame, firstDittyEndFrame, 'Decision Making', '\014', 33, 11)	
local slideEndFrame = slideTextFromTop('Program', '\012', slideEndFrame, 38, 2, 13, 2)
printIntoManyFrames(slideEndFrame, firstDittyEndFrame, 'Program', '\012', 38, 13)	
local slideEndFrame = slideTextFromLeft('Of Our Generation', '\010', slideEndFrame, 2, 32, 15, 1)
printIntoManyFrames(slideEndFrame, firstDittyEndFrame, 'Of Our Generation', '\010', 32, 15)	
local slideEndFrame = slideTextFromRight('... With No Exceptions', '\008', slideEndFrame, 79, 30, 17, 1)
printIntoManyFrames(slideEndFrame, firstDittyEndFrame, '... With No Exceptions', '\008', 30, 17)	
local slideEndFrame = slideTextFromBottom('... ... Honest!', '\015', slideEndFrame, 33, 23, 19, 2)
printIntoManyFrames(slideEndFrame, firstDittyEndFrame, '... ... Honest!', '\015', 33, 19)	

local secondDittyStartFrame = 360
--local secondDittyStartFrame = 20
local secondDittyEndFrame = secondDittyStartFrame + 1100

local slideEndFrame = slideTextFromLeft('Prepare', '\009', secondDittyStartFrame, 2, 36, 3, 1)
printIntoManyFrames(slideEndFrame, secondDittyEndFrame, 'Prepare', '\009', 36, 3)	
local slideEndFrame = slideTextFromLeft('To Be', '\010', slideEndFrame, 2, 37, 5, 1)
printIntoManyFrames(slideEndFrame, secondDittyEndFrame, 'To Be', '\010', 37, 5)	

local newSlideEndFrame1 = slideTextFromLeft(blown1, '\013', slideEndFrame + 10, 2, 19, 7, 1)
local newSlideEndFrame2 = slideTextFromLeft(blown2, '\013', slideEndFrame + 11, 2, 19, 8, 1)
local newSlideEndFrame3 = slideTextFromLeft(blown3, '\013', slideEndFrame + 12, 2, 19, 9, 1)
local newSlideEndFrame4 = slideTextFromLeft(blown4, '\013', slideEndFrame + 13, 2, 19, 10, 1)
local newSlideEndFrame5 = slideTextFromLeft(blown5, '\013', slideEndFrame + 14, 2, 19, 11, 1)
local newSlideEndFrame6 = slideTextFromLeft(blown6, '\013', slideEndFrame + 15, 2, 19, 12, 1)
local newSlideEndFrame7 = slideTextFromLeft(blown7, '\013', slideEndFrame + 16, 2, 19, 13, 1)

printIntoManyFrames(newSlideEndFrame1, secondDittyEndFrame, blown1, '\013', 19, 7)	
printIntoManyFrames(newSlideEndFrame2, secondDittyEndFrame, blown2, '\013', 19, 8)	
printIntoManyFrames(newSlideEndFrame3, secondDittyEndFrame, blown3, '\013', 19, 9)	
printIntoManyFrames(newSlideEndFrame4, secondDittyEndFrame, blown4, '\013', 19, 10)	
printIntoManyFrames(newSlideEndFrame5, secondDittyEndFrame, blown5, '\013', 19, 11)	
printIntoManyFrames(newSlideEndFrame6, secondDittyEndFrame, blown6, '\013', 19, 12)	
printIntoManyFrames(newSlideEndFrame7, secondDittyEndFrame, blown7, '\013', 19, 13)	

local slideEndFrame = slideTextFromBottom('...', '\015', newSlideEndFrame7 + 50, 38, 23, 15, 2)
printIntoManyFrames(slideEndFrame, slideEndFrame + 50, '...', '\015', 38, 15)	
local slideEndFrame = slideTextFromBottom('...', '\015', slideEndFrame + 110, 38, 23, 15, 2)
printIntoManyFrames(slideEndFrame, slideEndFrame + 50, '...', '\015', 38, 15)	
local slideEndFrame = slideTextFromBottom('...', '\015', slideEndFrame + 110, 38, 23, 15, 2)
printIntoManyFrames(slideEndFrame, slideEndFrame + 50, '...', '\015', 38, 15)	
local slideEndFrame = slideTextFromBottom('Were you expecting more?', '\015', slideEndFrame + 110, 28, 23, 15, 2)
printIntoManyFrames(slideEndFrame, slideEndFrame + 150, 'Were you expecting more?', '\015', 28, 15)	

local newSlideEndFrame1 = slideTextFromRight(away1, '\014', slideEndFrame + 200, 79, 22, 16, 1)
local newSlideEndFrame2 = slideTextFromRight(away2, '\014', slideEndFrame + 201, 79, 22, 17, 1)
local newSlideEndFrame3 = slideTextFromRight(away3, '\014', slideEndFrame + 202, 79, 22, 18, 1)
local newSlideEndFrame4 = slideTextFromRight(away4, '\014', slideEndFrame + 203, 79, 22, 19, 1)
local newSlideEndFrame5 = slideTextFromRight(away5, '\014', slideEndFrame + 204, 79, 22, 20, 1)
local newSlideEndFrame6 = slideTextFromRight(away6, '\014', slideEndFrame + 205, 79, 22, 21, 1)
local newSlideEndFrame7 = slideTextFromRight(away7, '\014', slideEndFrame + 206, 79, 22, 22, 1)

local startCrazyColorFrame = newSlideEndFrame1
local crazyColorDelay = 5
for i = 1, 30 do
	local color = math.ceil(math.random() * 15)
	printIntoManyFrames(startCrazyColorFrame, startCrazyColorFrame + crazyColorDelay, away1, string.char(color), 22, 16)	
	printIntoManyFrames(startCrazyColorFrame, startCrazyColorFrame + crazyColorDelay, away2, string.char(color), 22, 17)	
	printIntoManyFrames(startCrazyColorFrame, startCrazyColorFrame + crazyColorDelay, away3, string.char(color), 22, 18)	
	printIntoManyFrames(startCrazyColorFrame, startCrazyColorFrame + crazyColorDelay, away4, string.char(color), 22, 19)	
	printIntoManyFrames(startCrazyColorFrame, startCrazyColorFrame + crazyColorDelay, away5, string.char(color), 22, 20)	
	printIntoManyFrames(startCrazyColorFrame, startCrazyColorFrame + crazyColorDelay, away6, string.char(color), 22, 21)	
	printIntoManyFrames(startCrazyColorFrame, startCrazyColorFrame + crazyColorDelay, away7, string.char(color), 22, 22)	
	startCrazyColorFrame = startCrazyColorFrame + crazyColorDelay
end

printIntoManyFrames(startCrazyColorFrame + crazyColorDelay, secondDittyEndFrame, away1, '\014', 22, 16)	
printIntoManyFrames(startCrazyColorFrame + crazyColorDelay, secondDittyEndFrame, away2, '\014', 22, 17)	
printIntoManyFrames(startCrazyColorFrame + crazyColorDelay, secondDittyEndFrame, away3, '\014', 22, 18)	
printIntoManyFrames(startCrazyColorFrame + crazyColorDelay, secondDittyEndFrame, away4, '\014', 22, 19)	
printIntoManyFrames(startCrazyColorFrame + crazyColorDelay, secondDittyEndFrame, away5, '\014', 22, 20)	
printIntoManyFrames(startCrazyColorFrame + crazyColorDelay, secondDittyEndFrame, away6, '\014', 22, 21)	
printIntoManyFrames(startCrazyColorFrame + crazyColorDelay, secondDittyEndFrame, away7, '\014', 22, 22)	
 
local thirdDittyStartFrame = secondDittyEndFrame

function returnParticlesFromStrings(t)
	local particles = {}
	local y = 1
	for _, str in ipairs(t) do
		for i = 1, #str do
			if string.byte(str:sub(i,i)) > 32 then
				local particle = {}
				particle.char = str:sub(i,i)
				particle.sx = i
				particle.sy = y
				particle.x = i
				particle.y = y			
				particles[#particles+1] = particle
			end
		end
		y = y +1
	end
	
	return particles
end

function pickRandomVelocity(particle)
	particle.xvel = math.random() * 4 - 2
	if (math.abs(particle.xvel) < 0.3) then
		particle.xvel = 1
	end		
	particle.yvel = math.random() * 4 - 2
	if (math.abs(particle.yvel) < 0.3) then
		particle.yvel = -1
	end		
end

function startParticleExplosion(particles)
	for _, particle in ipairs(particles) do
		pickRandomVelocity(particle)
	end
end

function updateParticles(particles)
	for _, particle in ipairs(particles) do
		particle.x = particle.x + particle.xvel
		particle.y = particle.y + particle.yvel
		particle.sx = math.floor(particle.x)
		particle.sy = math.floor(particle.y)
		for _, otherParticle in ipairs(particles) do
			if particle.x == otherParticle.x and particle.y == otherParticle.y then			
				particle.xvel = -particle.xvel
				particle.yvel = -particle.yvel
				otherParticle.xvel= -otherParticle.xvel
				otherParticle.yvel= -otherParticle.yvel
			end
		end
	end
end

-- don't uncomment or everything breaks!!!
--ffi.C.SetConsoleActiveScreenBuffer(stdout)

local blownParticles = returnParticlesFromStrings{ blown1, blown2, blown3, blown4, blown5, blown6, blown7 }
local awayParticles = returnParticlesFromStrings{ away1, away2, away3, away4, away5, away6, away7 }
startParticleExplosion(blownParticles)
startParticleExplosion(awayParticles)

function printParticles(particles, frame, attr, xOffset, yOffset)
	for _, particle in ipairs(particles) do
		local x = particle.sx + xOffset
		local y = particle.sy + yOffset		
		if x > 2 and x < 79 and y > 2 and y < 23 then						
			printIntoFrame(frame, particle.char, attr, x, y)
		end
	end
end

for i = thirdDittyStartFrame, thirdDittyStartFrame + 100 do
	updateParticles(blownParticles)
	printParticles(blownParticles, titleScreenFrames[i], '\013', 18, 6)
	updateParticles(awayParticles)
	printParticles(awayParticles, titleScreenFrames[i], '\014', 21, 15)
end

print(thirdDittyStartFrame+100)
 
-- this doesn't do anything but I'm scared to remove it
--[[
printIntoFrame(titleScreenFrames[20], 'oducing', '\010', 2, 10)
printIntoFrame(titleScreenFrames[20], 'oducing', '\010', 2, 10)
printIntoFrame(titleScreenFrames[20], 'oducing', '\010', 2, 10)
printIntoFrame(titleScreenFrames[22], 'roducing', '\010', 2, 10)
printIntoFrame(titleScreenFrames[24], 'troducing', '\010', 2, 10)
printIntoFrame(titleScreenFrames[26], 'ntroducing', '\010', 2, 10)
printIntoFrame(titleScreenFrames[28], 'Introducing', '\010', 2, 10)

local x = 3
for i = 30, 100, 2 do
	printIntoFrame(titleScreenFrames[i], 'Hello', '\010', x, 10)
	printIntoFrame(titleScreenFrames[i + 1], 'Hello', '\010', x, 10)
	x = x + 1
end
]]
--printIntoFrame(titleScreenFrames[25], 'Hello', '\126', 4, 10)

-- [[
-- ** WARNING - OLD COMMENT **
-- ** WARNING
-- Never call this function with a value of THREE,
-- or bad things will happen
-- ** WARNING
-- ]]
-- ** WARNING ** 
-- Never call this function with a value of FIVE
-- as there will be unintended consequences.
-- The full ramification of these consequences can't be determined.
-- ** WARNING
--
function doSomething(value)		
	local daValueTable = {}
	assignNumericValueToVariablePassedInByReference(daValueTable, 4)
	if value == daValueTable.daValue then
		os.exit()
	end
	
	for _, frame in ipairs(titleScreenFrames) do	
		clearDatBackBuffer()
		for y = 1, #frame do
			local row = frame[y]
			local pos = (y - 1) * eightyTable.daValue
			for i = 1, #row, 2 do
				backBuffer[pos].Char = string.byte(row:sub(i,i))
				backBuffer[pos].Attributes = string.byte(row:sub(i+1, i+1))
				pos = pos + 1
			end
		end		
		writeDatOleBackBifferToDeeScreen()
		ffi.C.Sleep(frame.delay)
	end

	clearDatBackBuffer()
		
	crazyPrint(initialPrompt, ffi.C.FOREGROUND_GREEN + ffi.C.FOREGROUND_INTENSITY + ffi.C.BACKGROUND_GREEN, 9, 8)	
	crazyPrint('Yes', ffi.C.FOREGROUND_GREEN + ffi.C.FOREGROUND_INTENSITY, 18, 20)
	crazyPrint('No', ffi.C.FOREGROUND_RED + ffi.C.FOREGROUND_INTENSITY, 60, 20)	
	writeDatOleBackBifferToDeeScreen()
end

function doSomethingElse(value)	
	local whatWeChose = numericValues.zero
	local weDoneHere = false	
	repeat 
		drawRectangle(15, 18, 10, 5, numericValues.zero, numericValues.zero)
		drawRectangle(56, 18, 10, 5, numericValues.zero, numericValues.zero)		
		if whatWeChose == 0 then
			drawRectangle(15, 18, 10, 5, 35, 7)
		else
			drawRectangle(56, 18, 10, 5, 35, 7)
		end		
		if ffi.C.GetKeyState(0x0D) < numericValues.zero then
			weDoneHere = true
		end				
		if ffi.C.GetKeyState(0x25) < numericValues.zero then
			whatWeChose = numericValues.zero
		end				
		if ffi.C.GetKeyState(0x27) < numericValues.zero then
			whatWeChose = numericValues.one
		end		
		writeDatOleBackBifferToDeeScreen()
	until weDoneHere 	
	return whatWeChose
end

function doSomethingElseThatIsntSomehtingElse(value)
	-- call a function that most likely doesn't do anything
	local valu_e = assignNumericValueToVariablePassedInByValue(1270)
	-- check to make sure it really didn't do anything
	-- and the that value of value is emptry...
	-- it must NOT be EMPTRY!!!!!
	if valu_e == nil then
		-- WARNING
		-- we should NEVER get here!!!
		-- NEVER NEVER NEVER UNDER ANY CIRUMSTANCES!!!
		-- but..... if we do... then either
		--	a. the lua compiler is broken
		-- 	b. the universe has imploded in on itself
		-- 	c. there is a bug in Windows?
		-- 	d. possible Pentium hardware glitch?
		-- 	e. I don't know how to program
		--	f. something happened we didn't expect
		--  g. time travel is possible and Jesus has come back, 
		--		got his hands on the source, made some adjustments,
		--		and CHECKED IT IN WITHOUT LEAVING %!@$%!@$!&!^@& COMMENTS.... AGAIN! 
		--		Damn that guy.
		--	h. there is a virus installed on the computer that randomly
		--		changes memory locations and it somehow happened to change
		--		the value of the variable that is checked for this if statement
		--		at exactly the execution instruction before this line was executed. 
		--		Well it's POSSIBLE so I have to document it! GEEEZ!
		-- i. PEBCAK!
		-- j. PICNIC problem!
		-- k. it's not my fault, yo
		-- l. user needs to restart Windows
		-- m. Aliens!
		-- n. you downloaded the wrong version from the repository... hey... i'm 
		--		not pointing fingers here, but it's probably you're fault
		-- o. we should all just go live in the forest and be happy. FUCK COMPUTERS!
		
		-- if we get here then we have to call the REAL function
		if value == numericValues.zero then
			-- you should never do this on success!!!
			return nil, 'Success!'
		elseif value == numericValues.one then
			clearDatBackBuffer()
			crazyPrint(wtfPrompt, ffi.C.FOREGROUND_RED + ffi.C.FOREGROUND_INTENSITY + ffi.C.BACKGROUND_RED, 5, 8)	
			writeDatOleBackBifferToDeeScreen()
			ffi.C.Sleep(6000)
			ffi.C.SetConsoleActiveScreenBuffer(stdout)
			os.exit()
		end		
	end
end

local numPeriodsToDisplayInWaitingMessageSoUserKnowsTheyAreStillWaiting = numericValues.one
function callBackThatGeneratesTheWaitingMessageSoThatTheUserKnowsTheProgramIsntBrokenButJustReallyPoorlyDesignedAndDevelopedWhichPersonallyIBlameOnBeginQuoteTheSystemEndQuote(baseText)	
	clearDatBackBuffer()
	local msg = baseText
	for i = numericValues.one, numPeriodsToDisplayInWaitingMessageSoUserKnowsTheyAreStillWaiting do
		msg = msg .. '.'
	end
	crazyPrint(msg, 15, 30, 10)
	numPeriodsToDisplayInWaitingMessageSoUserKnowsTheyAreStillWaiting = numPeriodsToDisplayInWaitingMessageSoUserKnowsTheyAreStillWaiting + numericValues.one
	if numPeriodsToDisplayInWaitingMessageSoUserKnowsTheyAreStillWaiting > 5 then
		numPeriodsToDisplayInWaitingMessageSoUserKnowsTheyAreStillWaiting = numericValues.one
	end
	writeDatOleBackBifferToDeeScreen()
	ffi.C.Sleep(16)
end

function doThatOtherThingThatWeForgotAboutButJustRememberdToDoAtTheLastMoment()
	local masterCodeBase = 'local k = 0; local result; local msg; local results = {};'
	local callBackCode = 'callBackThatGeneratesTheWaitingMessageSoThatTheUserKnowsTheProgramIsntBrokenButJustReallyPoorlyDesignedAndDevelopedWhichPersonallyIBlameOnBeginQuoteTheSystemEndQuote(\"Executin\' dat Code\");'
		
	for j = numericValues.one, 30 do
		for i = numericValues.one, 1000 do
			masterCodeBase = masterCodeBase .. 'results[#results+1] = ' .. math.random() * 100 .. '; result, msg = pcall(function() end); if not result then end;'
		end
		callBackThatGeneratesTheWaitingMessageSoThatTheUserKnowsTheProgramIsntBrokenButJustReallyPoorlyDesignedAndDevelopedWhichPersonallyIBlameOnBeginQuoteTheSystemEndQuote('Makin\' and Bakin\' da Code')
		masterCodeBase = masterCodeBase .. callBackCode .. 'for i = 1, 100000000 do k = k + 1 end;'			
	end
	
	masterCodeBase = masterCodeBase .. 'return results;'

	local f = loadstring(masterCodeBase)
	local result = f()	
	
	return result
end

function remainThisToSomethingSensibleLater(result)
	local newResults = {}
	local numSteps = 12
	local stepSize = math.ceil(#result / numSteps)
	for i = numericValues.one, #result, stepSize do
		newResults[#newResults+numericValues.one] = result[i]
	end
	
	local answer = numericValues.zero
	local premutationSelected = false
	local function permgen (a, n)
		if n == numericValues.zero and not premutationSelected and math.random() > 0.9 then
			premutationSelected = true
			answer = a[math.floor(numSteps / 2)]
		end
      if n > numericValues.zero then
        for i = numericValues.one, n do    
          -- put i-th element as the last one
          a[n], a[i] = a[i], a[n]    
          -- generate all permutations of the other elements
          permgen(a, n - numericValues.one)    
          -- restore i-th element
          a[n], a[i] = a[i], a[n]  
        end
		if n == 10 then
			callBackThatGeneratesTheWaitingMessageSoThatTheUserKnowsTheProgramIsntBrokenButJustReallyPoorlyDesignedAndDevelopedWhichPersonallyIBlameOnBeginQuoteTheSystemEndQuote('Permutatamating Lists')		
		end
      end
    end	
	
	permgen(newResults, #newResults)	
	
	return answer
end

function doThatThangDoThatThangDoThatThang(answer)
	clearDatBackBuffer()
	if answer < 50 then
		crazyPrint('NO!', ffi.C.FOREGROUND_RED + ffi.C.FOREGROUND_INTENSITY + ffi.C.BACKGROUND_RED, 38, 8)	
	else
		crazyPrint('YES!', ffi.C.FOREGROUND_GREEN + ffi.C.FOREGROUND_INTENSITY + ffi.C.BACKGROUND_GREEN, 38, 8)				
	end	
	crazyPrint('Press da return key to continue wif da program...', ffi.C.FOREGROUND_BLUE + ffi.C.FOREGROUND_RED + ffi.C.FOREGROUND_GREEN + ffi.C.FOREGROUND_INTENSITY, 9, 20)	
	
	local weDoneHere = false	
	repeat 
		if ffi.C.GetKeyState(0x0D) < numericValues.zero then
			weDoneHere = true
		end				
		writeDatOleBackBifferToDeeScreen()
	until weDoneHere 	
	
	-- do something
	ffi.C.SetConsoleActiveScreenBuffer(stdout)
end

--
-- prepare to be randomized hahaha me so clever and witty....
--
math.randomseed( os.time() )

-- never under any circumstances should you uncomment the next line or everything will break!!!!
math.random(); math.random(); math.random()

--
-- THIS IS WHERE WE ACTUALLY DO ALL THE STUFFS
--
if whichWay == 'old_and_busted' then
	-- we are not using this way any more.
	-- it SUCKS!
	-- but we were scared to remove it in case something brakez...
		
	if math.random() < 0.5 then
		return 'Yes'
	else
		return 'No'
	end		
elseif whichWay == 'new_hotness' then
	-- see how I have the new hotness so that in this section all I have to do is call these
	-- few functions in a row... so clean.. so elegant... what a brilliant solution! I'm a MF'ing GENIUS!
	doSomething()
	local theThing = doSomethingElse()
	doSomethingElseThatIsntSomehtingElse(theThing)
	local result = doThatOtherThingThatWeForgotAboutButJustRememberdToDoAtTheLastMoment()
	local answer = remainThisToSomethingSensibleLater(result)
	doThatThangDoThatThangDoThatThang(answer)
end
