--[[
-- Translate text using Google Translate.
-- http://translate.google.com/translate_a/single?client=t&ie=UTF-8&oe=UTF-8&hl=en&dt=t&tl=en&sl=auto&text=hello
--]]
do
	
local json = require('cjson')
--requests = require('requests')--
	http = require("socket.http")
	
function translate(source_lang, target_lang, text)
  local path = "http://translate.google.com/translate_a/single"
  -- URL query parameters
  local params = {
    client = "t",
    ie = "UTF-8",
    oe = "UTF-8",
    hl = "en",
    dt = "t",
    tl = target_lang or "en",
    sl = source_lang or "auto",
    text = URL.escape(text)
  }

  local query = format_http_params(params, true)
  local url = path..query

  local res, code = https.request(url)
  -- Return nil if error
  if code > 200 then return nil end
  local trans = res:gmatch("%[%[%[\"(.*)\"")():gsub("\"(.*)", "")

  return trans
end


local function run(msg, matches)
    if matches[1] == "tr" and matches[2] then
    	local text = matches[1]
    	return translate(nil, nil, text)
	elseif matches[1] == "eli" and matches[2] then
 				local url = "http://api.program-o.com/v2/chatbot/?bot_id=15&say="..matches[2].."&convo_id=".. msg.id.first_name .. "_" .. msg.id .. "&format=json"
  				local b,c = http.request(url)
				if c ~= 200 then return nil end
				local tab = json.decode(b)
				reply_msg(msg.to.id,tab['botsay'],msg.id, 'md')
	elseif matches[1] == "will" and matches[2] then
 				local url = "http://api.program-o.com/v2/chatbot/?bot_id=10&say="..matches[2].."&convo_id=".. msg.id.first_name .. "_" .. msg.id .. "&format=json"
  				local b,c = http.request(url)
				if c ~= 200 then return nil end
				local tab = json.decode(b)
				reply_msg(msg.to.id,tab['botsay'],msg.id, 'md')
	elseif matches[1] == "pr" and matches[2] then
 				local url = "http://api.program-o.com/v2/chatbot/?bot_id=6&say="..matches[2].."&convo_id=".. msg.id.first_name .. "_" .. msg.id .. "&format=json"
  				local b,c = http.request(url)
				if c ~= 200 then return nil end
				local tab = json.decode(b)
				reply_msg(msg.to.id,tab['botsay'],msg.id, 'md')
	elseif matches[1] == "ch" and matches[2] then
			    
 				send_msg(msg.to.id, "http://api.program-o.com/v2/chatbot/?bot_id=12&say="..matches[2].."&convo_id=".. msg.from.first_name .. "_" .. msg.id .. "&format=json", 'md')
				--[[local url = "http://api.program-o.com/v2/chatbot/?bot_id=12&say="..matches[2].."&convo_id=".. (msg.from.first_name or msg.from.username or msg.from.last_name) .. "_" .. msg.id .. "&format=json"
  				local b,c = http.request(url)
				if c ~= 200 then return nil end
				local tab = json.decode(b)]]--
				--reply_msg(msg.to.id, tab['botsay'],msg.id, 'md')--
				
    end
end

return {
  patterns = {
     '^[!/#](tr) (.*)$',
	 '^(eli) (.*)$',
	 '^(will) (.*)$',
	 '^(pr) (.*)$',
	 '^(ch) (.*)$'
  }, 
  run = run 
}
end
