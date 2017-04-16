--[[
-- Translate text using Google Translate.
-- http://translate.google.com/translate_a/single?client=t&ie=UTF-8&oe=UTF-8&hl=en&dt=t&tl=en&sl=auto&text=hello
--]]
do
	
local json = require('cjson')
--requests = require('requests')--
	http = require("socket.http")
	local https = require 'ssl.https'

function split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end
local function run_bash(str)
    local cmd = io.popen(str)
    local result = cmd:read('*all')
    return result
end	
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
 				local url = "http://api.program-o.com/v2/chatbot/?bot_id=15&say="..matches[2].."&convo_id=".. msg.from.first_name .. "_" .. msg.id .. "&format=json"
  				local b,c = http.request(url)
				if c ~= 200 then return nil end
				local tab = json.decode(b)
				reply_msg(msg.to.id,tab['botsay'],msg.id, 'md')
	elseif matches[1] == "will" and matches[2] then
 				local url = "http://api.program-o.com/v2/chatbot/?bot_id=10&say="..matches[2].."&convo_id=".. msg.from.first_name .. "_" .. msg.id .. "&format=json"
  				local b,c = http.request(url)
				if c ~= 200 then return nil end
				local tab = json.decode(b)
				reply_msg(msg.to.id,tab['botsay'],msg.id, 'md')
	elseif matches[1] == "pr" and matches[2] then
 				local url = "http://api.program-o.com/v2/chatbot/?bot_id=6&say="..matches[2].."&convo_id=".. msg.from.first_name .. "_" .. msg.id .. "&format=json"
  				local b,c = http.request(url)
				if c ~= 200 then return nil end
				local tab = json.decode(b)
				reply_msg(msg.to.id,tab['botsay'],msg.id, 'md')
	elseif matches[1] == "ch" and matches[2] then
			    
 				
				local url = "http://api.program-o.com/v2/chatbot/?bot_id=12&say="..matches[2].."&convo_id=".. msg.from.first_name .. "_" .. msg.id .. "&format=json"
  				local b,c = http.request(url)
				if c ~= 200 then return nil end
				local tab = json.decode(b)
				reply_msg(msg.to.id, tab['botsay'],msg.id, 'md')
	elseif matches[1] == "ali" and matches[2] then
				local url = "http://api.golden3.ir/chatbot/chatbot/conversation_start.php?bot_id=1&say=" .. matches[2] .. "&convo_id=userid_" .. msg.id
  				local b,c = http.request(url)
				if c ~= 200 then return nil end
				local tab = json.decode(b)
				reply_msg(msg.to.id, tab['botsay'],msg.id, 'md')
	elseif matches[1] == "علی" and matches[2] then
				local url = "http://api.golden3.ir/chatbot/chatbot/conversation_start.php?bot_id=4&say=" .. matches[2] .. "&convo_id=userid_" .. msg.id
  				local b,c = http.request(url)
				if c ~= 200 then return nil end
				local tab = json.decode(b)
				reply_msg(msg.to.id, tab['botsay'],msg.id, 'md')
	elseif matches[1] == "wiki" and matches[2] ~= nil and matches[3] then
				local url = "http://api.golden3.ir/decoder/wiki.php?titles=" .. matches[3] .. "&lang" .. matches[2]
				local t,c = https.request(url)
				if c ~= 200 then return nil end
				local dec = htmlEntities.decode(t)
				reply_msg(msg.to.id, matches[3] .. ": " .. dec .. "***" .. t,msg.id, 'md')
				--[[count = string.len(p)				
				if count <= 4096 then
			   		s = split(p, "\n")
					reply_msg(msg.to.id, matches[3] .. ": " .. s[1],msg.id, 'md')
				else ]]--
					local f = io.open("./data/userid_" .. msg.id .. "_" .. matches[3] ..  ".html", "w")
                	f:write(dec)
					f:close()
					
					send_document(msg.to.id, './data/userid_' .. msg.id .. "_" .. matches[3] ..  '.html')
					--os.remove('./data/userid_' .. msg.id .. "_" .. matches[2] ..  '.txt')--
				--end--
	elseif matches[1] == "wiki" and matches[2] and not matches[3] then
				local url = "http://api.golden3.ir/decoder/wiki.php?titles=" .. matches[2] .. "&lang=en"
				local t,c = https.request(url)
				if c ~= 200 then return nil end
				local dec = htmlEntities.decode(t)
				local o = ""
				string.gsub(">"..dec.."<",">(.-)<", function(a)
				o=o..a
				end )
				local p = ""
				string.gsub(";"..o.."&",";(.-)&", function(a)
				p=p..a
				end )
				count = string.len(p)
				--[[if count <= 4096 then--
			   		s = split(p, "\n")
					reply_msg(msg.to.id, matches[2] .. ": " .. s[1],msg.id, 'md')
				--else]] --
					local f = io.open("./data/userid_" .. msg.id .. "_" .. matches[2] ..  ".html", "w")
                	f:write(dec)
					f:close()
					send_document(msg.to.id, './data/userid_' .. msg.id .. "_" .. matches[2] ..  '.html')
					--os.remove('./data/userid_' .. msg.id .. "_" .. matches[2] ..  '.txt')--
				--end--
				
				
    end
end

return {
  patterns = {
     '^[!/#](tr) (.*)$',
	 '^(eli) (.*)$',
	 '^(will) (.*)$',
	 '^(pr) (.*)$',
	 '^(ch) (.*)$',
	 '^([Aa]li) (.*)$',
	 '^(20q) (.*)$',
	 '^(20) (.*)$',
	 '^(علی) (.*)$',
     '^(wiki) (.*) (.*)$',
	 '^(wiki) (.*)$'

  }, 
  run = run 
}
end
