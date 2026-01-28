allOptions = [
	[oAirracebutton],
	[osettingsbutton,oCredits]
]

rowIndex = 0
columnIndex = 0

function getCurrentOption()
{
	return allOptions[rowIndex][columnIndex]
}