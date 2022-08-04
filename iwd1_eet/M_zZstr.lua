function zZfindStrLZen()
	currentlanguage = Infinity_GetINIString('Language', 'Text', '')
	if currentlanguage == "en_US" then
		zzClrLen = 50
	else
		zzClrLen = 90
	end
end
zZfindStrLZen()

createEntry = function (questId, objectiveId, entryId, previousObjectives, subGroup)
	local quest = findQuest(questId)
	if(not quest) then
		Infinity_Log("Failed to create entry: " .. entryId .. "for quest: " .. questId)
		return
	end

	local entry = {}
	local objective = {}
	entry.text = ""
	entry.previousObjectives = {}
	entry.id = entryId

	entry.subGroup = subGroup
	if(subGroup) then
		if(not subGroups[subGroup]) then subGroups[subGroup] = {} end
		table.insert(subGroups[subGroup],entry)
	end
	
	str = Infinity_FetchString(entryId)
	strTemp = ''
	local zz = 1
	local u = 0
	local y = 0
	local a = 0
	zzUps = {}
	if string.find(str, "\n\n", zzClrLen + 1, true) ~= nil then y = 1 end
	while zz ~= nil do
		zz = string.find(str, "\n", 1, true)
		if zz ~= nil then
			u = u + 1
			strTemp = string.sub(str, 1, zz - 1)
			str = string.sub(str, zz + 1)
			table.insert(zzUps, {u, strTemp})
		else
			u = u + 1
			table.insert(zzUps, {u, str})
		end
	end
	
	txt = ''
	txta = ''
	local noObjective = 0
	local added = 0
	local zuba = 0
	if (u == 1) then
		objective.text = zzUps[1][2]
		entry.text = objective.text
		objective.text = Infinity_FetchString(quest.text)
	else
		for k,v in pairs(zzUps) do
			a = v[1]
			txta = v[2]
			if a == 1 then
				if string.len(txta) <= zzClrLen then
					objective.text = txta
					noObjective = 1
				else
					objective.text = Infinity_FetchString(quest.text)
					entry.text = entry.text .. txta
				end
			else
				txt = ''
				if y == 0 then
					if txta ~= '' and zuba == 0 then
						txt = "\n\n"
					end
				else
					txt = '\n'
				end
				if noObjective == 1 then
					txt = ''
					added = 1
					if txta ~= '' then added = 0 end
				end
				if added == 0 then
					entry.text = entry.text .. txt .. txta
				end
				added = 0
				zuba = 0
				if noObjective == 1 and txta == '' then
					zuba = 1
				end
				noObjective = 0
			end
		end
	end
	objective.entries = {entry}
	table.insert(quest.objectives,objective)
end