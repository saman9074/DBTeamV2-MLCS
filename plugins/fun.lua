--[[
-- Translate text using Google Translate.
-- http://translate.google.com/translate_a/single?client=t&ie=UTF-8&oe=UTF-8&hl=en&dt=t&tl=en&sl=auto&text=hello
--]]
do
	
local json = require('cjson')
local tab = json.decode('{"convo_id":"exampleusage_1231232","usersay":"WHAT IS YOUR NAME","botsay":"Yes or No?"}')
json_string = json.encode(tab)
	
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
	elseif matches[1] =="ch" and not matches[2] then
			reply_msg(msg.to.id, tab['botsay'],msg.id, 'md')
    end
end

return {
  patterns = {
     '^[!/#](tr) (.*)$',
	 '^[!/#](ch)$'
  }, 
  run = run 
}
end
