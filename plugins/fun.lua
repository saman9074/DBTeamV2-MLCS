--[[
-- Translate text using Google Translate.
-- http://translate.google.com/translate_a/single?client=t&ie=UTF-8&oe=UTF-8&hl=en&dt=t&tl=en&sl=auto&text=hello
--]]
do
	
local json = require('cjson')
	htmlEntities = require('htmlEntities')--require('src/htmlEntities')
--requests = require('requests')--
	http = require("socket.http")
	local https = require 'ssl.https'
	
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
	elseif matches[1] == "wiki" and matches[2] then
				local url = "http://api.golden3.ir/decoder/wiki.php?titles=" .. matches[2]
				local t,c = https.request(url)
				if c ~= 200 then return nil end
  				--[[local t,c = https.request(url)
				if c ~= 200 then return nil end
				local decode = json.decode(t)
				local encoded = json.encode( decode )
				local decode = json.decode(encoded)			
				--local encoded = json.encode( t, { indent = true } )--
			    --local decoded, pos, msg = json.decode( encoded )--
				--if not decoded then--
   					 --print( "Decode failed at "..tostring(pos)..": "..tostring(msg) )--
					--reply_msg(msg.to.id, "Decode failed at "..tostring(pos)..": "..tostring(msg),msg.id, 'md')--
				--else--
    				--print( decoded.name2[4] )  --> 23.54----]]
				local dec = htmlEntities.decode(t)
					reply_msg(msg.to.id, "jj: " .. dec,msg.id, 'md')
			--	end--
				
				
				
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
     '^(wiki) (.*)$'

  }, 
  run = run 
}
end
