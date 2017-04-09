----------------------------------------------------
--      ___  ___ _____            __   _____      --
--     |   \| _ )_   _|__ __ _ _ _\ \ / /_  )     --
--     | |) | _ \ | |/ -_) _` | '  \ V / / /      --
--     |___/|___/ |_|\___\__,_|_|_|_\_/ /___|     --
--                                                --
----------------------------------------------------
local function run_bash(str)
    local cmd = io.popen(str)
    local result = cmd:read('*all')
    return result
end

local function run(msg, matches)
    if matches[1] == "start" or matches[1] == "help" then
		if msg.from.id == msg.to.id then
			send_msg(msg.to.id, "*Welcome!*\n\nThis is a *DBTeamV2 TDCli* _userbot_.\n\nLook here how to use the bot: http://telegra.ph/DBTeamV2-Tutorial-English-02-26\n\n*Official channels:* @DBTeamEN @DBTeamES @DBTeam\n\nSource code (Github): https://git.io/DBTeamV2", "md")
		else
			send_msg(msg.to.id, lang_text(msg.to.id, 'privateMSG'), "md")
			
			
		end
    elseif matches[1] == "creategroup" and matches[2] and permissions(msg.from.id, msg.to.id, "creategroup") then
		createNewGroupChat({[0] = msg.from.id}, matches[2], groupcb)
	
	elseif matches[1] == "clean" or matches[1] == "cashe" and permissions(msg.from.id, msg.to.id, "creategroup") then
		     	run_bash("rm -rf ~/.telegram-cli/data/sticker/*")
     			run_bash("rm -rf ~/.telegram-cli/data/photo/*")
     			run_bash("rm -rf ~/.telegram-cli/data/animation/*")
     			run_bash("rm -rf ~/.telegram-cli/data/video/*")
     			run_bash("rm -rf ~/.telegram-cli/data/audio/*")
     			run_bash("rm -rf ~/.telegram-cli/data/voice/*")
				run_bash("rm -rf ~/.telegram-cli/data/temp/*")
    	 		run_bash("rm -rf ~/.telegram-cli/data/thumb/*")
     			run_bash("rm -rf ~/.telegram-cli/data/document/*")
     			run_bash("rm -rf ~/.telegram-cli/data/profile_photo/*")
     			run_bash("rm -rf ~/.telegram-cli/data/encrypted/*")
			 	return "*All Cache Has Been Cleared*"
				send_msg(msg.to.id, "*All Cache Has Been Cleared*2", "md")
	end
end

function groupcb(extra,data)
	local group_id = "-" .. data.type_.group_.id_
	if not group_id then
		send_msg(msg.from.id, lang_text(msg.to.id, 'privateError'), "md")
	else
		migrateGroupChatToChannelChat(group_id, migratecb)
	end
end

function migratecb(extra, result)
	local channel_id = result.id_
	if channel_id then
		send_msg(channel_id, lang_text(msg.to.id, 'privateSuper'), "md")
		getChannelMembers(channel_id, 0, 'Recent', 2, promote_members_cb, channel_id)
	else
		send_msg(msg.to.id, lang_text(msg.to.id, 'privateError'), "md")
	end
end

function promote_members_cb(extra, result)
	changeChatMemberStatus(extra, result.members_[1].user_id_, "Editor", ok_cb)
end

return {
        patterns = {
                "^[!/#]([sS][tT][Aa][rR][tT])",
				"^[!/#]([Hh][eE][Ll][pP])",
				"^[!/#]([Cc]reategroup) (.*)",
				"^[!/#](clean)$"
        },
        run = run,
}
