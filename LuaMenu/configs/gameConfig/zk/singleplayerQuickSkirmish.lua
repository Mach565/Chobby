local skirmishSetupData = {
	pages = {
		{
			humanName = "Select Game Type",
			name = "gameType",
			options = {
				"1v1",
				"2v2",
				"3v3",
				"Survival",
			},
		},
		{
			humanName = "Select Map",
			name = "map",
			minimap = true,
			options = {
				"TitanDuel",
				"Onyx Cauldron 1.7",
				"Fairyland v1.0",
				"Calamity 1.1",
			},
		},
		{
			humanName = "Select Difficulty",
			name = "difficulty",
			options = {
				"Very Easy",
				"Easy",
				"Medium",
				"Hard",
			},
		},
	},
}

local chickenDifficulty = {
	"Chicken: Very Easy",
	"Chicken: Easy",
	"Chicken: Normal",
	"Chicken: Hard",
}
local aiDifficultyMap = {
	"CircuitAIVeryEasy",
	"CircuitAIEasy",
	"CircuitAIMedium",
	"CircuitAIHard",
}

function skirmishSetupData.ApplyFunction(battleLobby, pageChoices)
	local Configuration = WG.Chobby.Configuration
	local pageConfig = skirmishSetupData.pages
	battleLobby:SelectMap(pageConfig[2].options[pageChoices.map])
	
	battleLobby:SetBattleStatus({
		allyNumber = 0,
		isSpectator = false,
	})
	
	-- Chickens
	if pageChoices.gameType == 4 then
		battleLobby:AddAi(chickenDifficulty[pageChoices.difficulty], chickenDifficulty[pageChoices.difficulty], 1)
		return
	end
	
	local bitAppend = (Configuration:GetIsRunning64Bit() and "64") or "32"
	local aiName = aiDifficultyMap[pageChoices.difficulty] .. bitAppend
	
	-- AI game
	local aiNumber = 1
	local allies = pageChoices.gameType - 1
	for i = 1, allies do
		battleLobby:AddAi(aiName .. " (" .. aiNumber .. ")", aiName, 0, Configuration.gameConfig.aiVersion)
		aiNumber = aiNumber + 1
	end
	
	local enemies = pageChoices.gameType
	for i = 1, enemies do
		battleLobby:AddAi(aiName .. " (" .. aiNumber .. ")", aiName, 1, Configuration.gameConfig.aiVersion)
		aiNumber = aiNumber + 1
	end
end

return skirmishSetupData