--------------------------------------------------
--      ____  ____ _____                        --
--     |    \|  _ )_   _|___ ____   __  __      --
--     | |_  )  _ \ | |/ ·__|  _ \_|  \/  |     --
--     |____/|____/ |_|\____/\_____|_/\/\_|v2   --
--                                              --
--------------------------------------------------
local LANG = 'fa'

local function run(msg, matches)
	if permissions(msg.from.id, msg.to.id, "lang_install") then
		-------------------------
		-- Translation version --
		-------------------------
		set_text(LANG, 'version', '2.0')
		set_text(LANG, 'versionExtended', 'ترجمه شده ورژن 2')
		-------------
		-- Plugins --
		-------------
		-- global plugins --
		set_text(LANG, 'require_sudo', 'فقط براي سودو امکان پذير است.')
		set_text(LANG, 'require_admin', 'اين پلاگين براي ادمين يا بالاتر است.')
		set_text(LANG, 'require_mod', 'اين پلاگين براي مدير گروه در دسترس ميباشد!.')
		-- welcome.lua
		set_text(LANG, 'weloff', 'خوش آمد گويي روشن')
		set_text(LANG, 'welon', 'خوش آمد گويي خاموش.')
		set_text(LANG, 'weldefault', 'خوش امد گويي بصورت پيشفرض')
		set_text(LANG, 'welnew', 'پيام خوش آمد گويي تعيين شد به')
		set_text(LANG, 'defaultWelcome', 'خوش آمديد $users به گروه')

		-- stats.lua
		set_text(LANG, 'stats', '*وضعیت چت*')
		set_text(LANG, 'statsCommand', 'وضعیت')

		-- settings.lua --
		set_text(LANG, 'allOFFMSG', '`>`*تمام تنظیمات غیرفعال شد*')
		set_text(LANG, 'allONMSG', '`>`*تمام تنظیمات فعال شد*')
		
		set_text(LANG, 'textoffMSG', '`>`*تنظیمات متن غیر فعال شد*')
		set_text(LANG, 'textonMSG', '`>`*تنظیمات متن فعال شد*')
		
		set_text(LANG, 'mediaoffMSG', '`>`*تنظیمات رسانه غیرفعال شد*')
		set_text(LANG, 'mediaonMSG', '`>`*تنظیمات رسانه فعال شد*')
		
		set_text(LANG, 'groupoffMSG', '`>`*تنظیمات گروه غیر فعال شد*')
		set_text(LANG, 'grouponMSG', '`>`*تنظیمات گروه فعال شد*')
		
		set_text(LANG, 'user', 'کاربر')
		set_text(LANG, 'isFlooding', '*در حال فرستادن پيام هاي مکرر و سريع است*')

		set_text(LANG, 'welcomeT', '> پیام خوش آمد در این گروه فعال شد')
		set_text(LANG, 'noWelcomeT', '> پیام خوش آمد در این گروه غیر فعال شد')

		set_text(LANG, 'isSpamming', '*در حال فرستادن هرزنامه است.*')
		set_text(LANG, 'noStickersT', '`>` `استيکر مجاز نيست در اين گروه`.')
		set_text(LANG, 'stickersT', '`>` استيکر فرستادن در حال حاظر مجاز است.')
		set_text(LANG, 'noTgservicesT', '`>` حذف پيام هاي مارکدون غير فعال است.')
		set_text(LANG, 'tgservicesT', '`>` حذف پيام هاي مارکدون فعال است.')
		set_text(LANG, 'gifsT', '`>` عکس متحرک(گيف) در گروه مجاز است.')
		set_text(LANG, 'noGifsT', '`>` ارسال پيام متحرک (گيف)در حال حاظر مجاز نيست.')
		set_text(LANG, 'photosT', '`>` فرستادن عکس در حال حاظر مجاز است .')
		set_text(LANG, 'noPhotosT', '`>` فرستادن عکس هم اکنون در گروه مجاز نيست')
		set_text(LANG, 'botsT', '`>` ورود ربات ها هم اکنون مجاز است در گروه')
		set_text(LANG, 'noBotsT', '`>` ورود ربات ها هم اکنون غير مجاز است در گروه.')
		set_text(LANG, 'arabicT', '`>` متون عربي يا فارسي هم اکنون مجاز است در گروه.')
		set_text(LANG, 'noArabicT', '`>` متون عربي در گروه غير مجاز است.')
		set_text(LANG, 'audiosT', '`>` فرستادن صدا هم اکنون مجاز است در گروه.')
		set_text(LANG, 'noAudiosT', '`>` فرستادن صدا هم اکنون غير مجاز')
		set_text(LANG, 'documentsT', '`>` فرستادن فايل در گروه مجاز است.')
		set_text(LANG, 'noDocumentsT', '`>` ارسال صدا در گروه غير مجاز است.')
		set_text(LANG, 'videosT', '`>` فرستادن فيلم در گروه مجاز است.')
		set_text(LANG, 'noVideosT', '`>` ارسال فيلم در گروه غير مجاز است.')
		set_text(LANG, 'locationT', '`>` ارسال مکان هم اکنون در گروه مجاز است.')
		set_text(LANG, 'noLocationT', '`>`ارسال مکان هم اکنون در گروه غير مجاز است')
		set_text(LANG, 'emojisT', '`>` ارسال ايموجي مجاز است.')
		set_text(LANG, 'noEmojisT', '`>` اراسل ايموجي غير مجاز است.')
		set_text(LANG, 'englishT', '`>` متون انگليسي در گروه مجاز است')
		set_text(LANG, 'noEnglishT', '`>` ارسال متون انگليسي هم اکنون در گروه غير مجاز است.')
		set_text(LANG, 'inviteT', '`>` دعوت کردن افراد هم اکنون مجاز است')
		set_text(LANG, 'noInviteT', '`>` دعوت کردن افراد هم اکنون غير مجاز است')
		set_text(LANG, 'voiceT', '`>` ارسال صداي ضبط شده هم اکنون مجاز است.')
		set_text(LANG, 'noVoiceT', '`>` ارسال صداي ظبط شده هم اکنون غير مجاز است .')
		set_text(LANG, 'infoT', '`>` عکس گروه را هم اکنون ميتوانيد تغيير دهيد.')
		set_text(LANG, 'noInfoT', '`>` عکس گروه را هم اکنون نميتوان تغيير داد')
		set_text(LANG, 'gamesT', '`>` شروع بازي انلاين هم اکنون مجاز است.')
		set_text(LANG, 'noGamesT', '`>` شروع کردن بازي غير مجاز است.')
		set_text(LANG, 'spamT', '`>` ارسال هرزنامه هم اکنون مجاز است.')
		set_text(LANG, 'noSpamT', '`>` ارسال هرزنامه هم اکنون غير مجاز است .')
		set_text(LANG, 'setSpam', '`>` حساسيت هرزنامه ')
		set_text(LANG, 'floodT', '`>` ارسال پيام هاي مکرر مجاز است.')
		set_text(LANG, 'forwardT', '`>`*فروارد کردن* پبام در این گروه *غیر مجاز* است.')
		set_text(LANG, 'noForwardT', '`>` *فروارد کردن* پبام در این گروه *مجاز* است.')
		set_text(LANG, 'noFloodT', '`>` ارسال پيام هاي مکرر غير مجاز است.')
		set_text(LANG, 'floodTime', '`>` زمان ارسال پيام مکرر و سريع تغيير يافت به : ')
		set_text(LANG, 'floodMax', '`>` حساسيت ارسال پيام مکرر تغير يافت به: ')
		set_text(LANG, 'gSettings', 'تنظيمات گروه')
		set_text(LANG, 'allowed', 'مجاز')
		set_text(LANG, 'noAllowed', 'غير مجاز ')
		set_text(LANG, 'noSet', 'تعيين نشده')
		set_text(LANG, 'stickers', 'استيکر')
		set_text(LANG, 'tgservices', 'سرويس تلگرام')
		set_text(LANG, 'links', 'ارسال لينک')
		set_text(LANG, 'arabic', 'فارسي و عربي')
		set_text(LANG, 'bots', 'ربات ')
		set_text(LANG, 'gifs', ' عکس متحرک .|گيف|')
		set_text(LANG, 'photos', 'عکس ')
		set_text(LANG, 'audios', 'صدا')
		set_text(LANG, 'kickme', 'اخراج خود')
		set_text(LANG, 'spam', 'هرزنامه')
		set_text(LANG, 'gName', 'نام گروه')
		set_text(LANG, 'flood', 'پيام مکرر')
		set_text(LANG, 'language', 'زبان')
		set_text(LANG, 'mFlood', 'حساسيت پيام مکرر')
		set_text(LANG, 'tFlood', 'زمان پيام مکرر')
		set_text(LANG, 'setphoto', 'تغيير عکس گروه')

		set_text(LANG, 'forward', 'نقل قول')
		set_text(LANG, 'videos', 'ويديو')
		set_text(LANG, 'invite', 'دعوت')
		set_text(LANG, 'games', 'بازي اينلاين')
		set_text(LANG, 'documents', 'فايل')
		set_text(LANG, 'location', 'مکان')
		set_text(LANG, 'voice', 'صداي ظبط شده')
		set_text(LANG, 'icontitle', 'تغییر ایکون گروه')
		set_text(LANG, 'english', 'متون انگليسي')
		set_text(LANG, 'emojis', 'ايموجي')

		--Made with @TgTextBot by @iicc1
		set_text(LANG, 'groupSettings', 'تنظيمات گروه')
		set_text(LANG, 'allowedMedia', 'رسانه هاي مجاز')
		set_text(LANG, 'settingsText', 'متن ')
		set_text(LANG, 'langUpdated', 'زبان شما تغيير يافت به : ')

		set_text(LANG, 'linkSet', '`>` *لینک جدید* تنظیم شد')
		set_text(LANG, 'linkError', '`>` فقط ایجادکننده گروه میتواند لینک را ایجاد کند!')

		
		
		set_text(LANG, 'newRules', '`>` *قوانین جدید* ایجاد شد.')
		set_text(LANG, 'rulesDefault', '`>` *قوانین قبلی حذف شد*')
		set_text(LANG, 'noRules', '`>` قوانینی در این گروه مشخص نشده است.')
		set_text(LANG, 'defaultRules', '*قوانین گروه:*\n`>` اسپم ممنوع\n`>` سعی کنید در راستای اهداف گروه پیش بروید\n`>` هرگونه مطالب نژادپرستی، جنسی و... ممنوع\n\n_در صورت رعایت نکردن قوانین از گروه اخراج و مسدود می شوید_')
		
		set_text(LANG, 'delAll', '`>` تمام پیام ها *پاکسازی* شد.')

		-- export_gban.lua --
		set_text(LANG, 'accountsGban', 'کاربران بن گلوبال')
		-- promote.lua --
		set_text(LANG, 'alreadyAdmin', 'اين کاربر در حال حاظر ادمين ميباشد')
		set_text(LANG, 'alreadyMod', 'اين کاربر در حال حاظر مدير ميباشد')
		set_text(LANG, 'newAdmin', '<code>></code> <b>ادمین جدید</b>')
		set_text(LANG, 'newMod', '<code>></code> <b>مدیر جدید</b>')
		set_text(LANG, 'nowUser', ' <b>در حال حاضر کاربر معمولی است.</b>')
		set_text(LANG, 'modList', '`>` *ليست مديران*')
		set_text(LANG, 'adminList', '`>` *ليست ادمين ها')
		set_text(LANG, 'modEmpty', 'هيچ مديري در اين گروه وجود ندارد .')
		set_text(LANG, 'adminEmpty', '*هیچ ادمینی وجود ندارد*')
		set_text(LANG, 'error1', '<b>خطا:</b> باید یک سوپر گروه باید')
		set_text(LANG, 'error2', '<b>خطا:</b>باید یک سوپر گروه و مدیر چت باشد')
		set_text(LANG, 'banall', '<b>تلاش برای مسدود سازی تمام کاربران ...</b>')
		set_text(LANG, 'setAbout', '<b>اطلاعات تغییر کرد به:</b>')
		set_text(LANG, 'leave', '<b>خدانگهدار!</b>')
		set_text(LANG, 'groupAdd', '`>` <b>گروه به لیست مدیریتی اضافه شد.</b>')
		set_text(LANG, 'groupRem', '`>` <b>گروه از لیست مدیریتی حذف گردید.</
		
		
		-- gban.lua --
		set_text(LANG, 'gbans', '<b>کاربران مسدود شده به صورت سراسری (</b>')
		set_text(LANG, 'gbanLua', ' کاربران مسدود شده به صورت سراسری در فایل LUA')
		set_text(LANG, 'gbanJson', ' کاربران مسدود شده به صورت سراسری در فایل Json')
		set_text(LANG, 'gbanDel', 'پایگاه داده کاربران مسدود شده سراسری پاکسازی شد!')
  
		-- id.lua --
		set_text(LANG, 'user', 'کابر')
		set_text(LANG, 'chatName', 'نام گروه')
		set_text(LANG, 'chat', 'گروه')
		set_text(LANG, 'userID', '*شناسه کاربر:*')
		set_text(LANG, 'chatID', '*شناسه گروه:*')
		
		-- moderation.lua --
		set_text(LANG, 'kickUser', '`>` کاربر اخراج شد')
		set_text(LANG, 'banUser', '`>` کابر بن شد و ورودش مسدود شد.')
		set_text(LANG, 'unbanUser', '`>` اين کاربر در حال حاظر از ليست مسدود ها خارج شد.')
		set_text(LANG, 'gbanUser', '`>` اين کاربر بن جهاني شد و ورودش براي تمام گروه ها که ربات ادمين ان است مسدود شد.')
		set_text(LANG, 'ungbanUser', '`>` اين کابر از بن جهاني خارج شد.')
		set_text(LANG, 'muteUser', '`>` اين کاربر ديگر قادر به چت کردن نيست')
		set_text(LANG, 'muteChat', '`>` اين گروه در حال حاظر در حالت سکوت قرار دارد')
		set_text(LANG, 'unmuteUser', '`>` کاربر از ليست سکوت خارج شد و ميتواند صحبت کند.')
		set_text(LANG, 'unmuteChat', '`>` گروه از حالت سکوت خارج شد و همه کاربران ميتوانند چت کنند')
		set_text(LANG, 'muteChatSec', '`>` گروه در حالت *سکوت* قرار گرفت برای ')
		set_text(LANG, 'muteUserSec', '`>` کاربر در حالت *سکوت* قرار گرفت برای ')
		set_text(LANG, 'delXMsg', '`>` User $user *has deleted* `$num messages`.')

		
		-- commands.lua --
		set_text(LANG, 'commandsT', 'دستور ها')
		set_text(LANG, 'errorNoPlug', 'اين پلاگين وجود ندارد.')

		-- plugins.lua --

		set_text(LANG, 'pluginsActivated', '*پلاگین فعال شد:*\n')
		set_text(LANG, 'pluginNoExist', '`>` *پلاگین* $name *موجود نیست*.')
		set_text(LANG, 'pluginIsEnabled', '`>` این *پلاگین* هم اکنون *فعال* است.')
		set_text(LANG, 'pluginNoEnabled', '`>` این *پلاگین* هم اکنون *غیر فعال* است.')
		set_text(LANG, 'pluginsReload', '`>` *پلاگین ها مجددا بارگذاری شد!*')

		set_text(LANG, 'pluginEnabled', '`>` *پلاگین فعال* شد.')
		set_text(LANG, 'pluginDisabled', '`>` *پلاگین غیر فعال* شد.')

		-- private.lua--
		
		set_text(LANG, 'privateMSG', '`>` متاسفانه این پیغام تنها در خصوصی ربات کار میکند!')
		set_text(LANG, 'privateError', '`>` خطایی رخ داد!')
		set_text(LANG, 'privateSuper', '`>` گروه ایجاد شد و به سوپر گروه ارتقا یافت')
		
		
		
		-- MLCS --
		-- stats.lua --
		set_text(LANG, 'statsCommand', 'وضعیت')
		-- commands.lua --
		set_text(LANG, 'commandsCommand', 'دستورات')
		-- mod.lua --
		set_text(LANG, 'delCommand', 'حذف')
		set_text(LANG, 'banCommand', 'بن')
		set_text(LANG, 'unbanCommand', 'حذفبن')
		set_text(LANG, 'kickCommand', 'کیک')
		set_text(LANG, 'gbanCommand', 'جیبن')
		set_text(LANG, 'ungbanCommand', 'حذفجیبن')
		set_text(LANG, 'muteCommand', 'سکوت')
		set_text(LANG, 'unmuteCommand', 'حذفسکوت')
		set_text(LANG, 'muteallCommand', 'سکوتهمه')
		set_text(LANG, 'unmuteallCommand', 'حذفسکوتهمه')
		set_text(LANG, 'delallCommand', 'حذفهمه')
		-- setting.lua --
		set_text(LANG, 'langCommand', 'زبان')
		set_text(LANG, 'settingsCommand', 'تنظیمات')
		set_text(LANG, 'tgsCommand', 'سرویس')
		set_text(LANG, 'offCommand', 'قفل')
		set_text(LANG, 'onCommand', 'باز')
		set_text(LANG, 'inviteCommand', 'دعوت')
		set_text(LANG, 'botsCommand', 'ربات')
		set_text(LANG, 'picCommand', 'عکس')
		set_text(LANG, 'vidCommand', 'فیلم')
		set_text(LANG, 'stickersCommand', 'استیکر')
		set_text(LANG, 'gifsCommand', 'گیف')
		set_text(LANG, 'voiceCommand', 'ضبط')
		set_text(LANG, 'audiosCommand', 'صدا')
		set_text(LANG, 'docCommand', 'فایل')
		set_text(LANG, 'locCommand', 'مکان')
		set_text(LANG, 'gamesCommand', 'بازی')
		set_text(LANG, 'fwrCommand', 'فوروارد')
		set_text(LANG, 'spamCommand', 'اسپم')
		set_text(LANG, 'setspamCommand', 'اسپمست')
		set_text(LANG, 'repCommand', 'ریپورت')
		set_text(LANG, 'arabicCommand', 'عربی')
		set_text(LANG, 'enCommand', 'انگلیسی')
		set_text(LANG, 'emojisCommand', 'اموجی')
		set_text(LANG, 'floodCommand', 'فلود')
		set_text(LANG, 'welcomeCommand', 'ولکام')
		set_text(LANG, 'setwelcomeCommand', 'ولکامست')
		set_text(LANG, 'maxCommand', 'مکس')
		set_text(LANG, 'timeCommand', 'زمان')
		set_text(LANG, 'setlinkCommand', 'لینکست')
		set_text(LANG, 'newlinkCommand', 'لینکجدید')
		set_text(LANG, 'linkCommand', 'لینک')
		set_text(LANG, 'rulesCommand', 'قوانین')
		set_text(LANG, 'setrulesCommand', 'قوانینست')
		set_text(LANG, 'norulesCommand', 'نوقوانین')
		set_text(LANG, 'remrulesCommand', 'حذفقوانین')
		set_text(LANG, 'welcomeremCommand', 'حذف')
		set_text(LANG, 'welcomeonCommand', 'نصب')
		set_text(LANG, 'allCommand', 'همه')
		set_text(LANG, 'textonCommand', 'متنباز')
		set_text(LANG, 'mediaonCommand', 'رسانهباز')
		
		set_text(LANG, 'textoffCommand', 'متنقفل')
		set_text(LANG, 'mediaoffCommand', 'رسانهقفل')
		
		set_text(LANG, 'grouponCommand', 'گروهباز')
		set_text(LANG, 'groupoffCommand', 'گروهقفل')
		--promote.lua--
		set_text(LANG, 'addCommand', 'اضافه')
		set_text(LANG, 'remCommand', 'پاک')
		set_text(LANG, 'adminCommand', 'ادمین')
		set_text(LANG, 'modCommand', 'مدیر')
		set_text(LANG, 'userCommand', 'کاربر')
		set_text(LANG, 'adminsCommand', 'ادمینها')
		set_text(LANG, 'modsCommand', 'مدیرها')
		set_text(LANG, 'kickedCommand', 'اخراجیها')
		set_text(LANG, 'banallCommand', 'بنهمه')
		set_text(LANG, 'tagallCommand', 'کاربران')
		set_text(LANG, 'botsCommand', 'رباتها')
		set_text(LANG, 'leaveCommand', 'خروج')
		set_text(LANG, 'setaboutCommand', 'درموردماست')
		
		
		
		------------
		-- Usages --
		------------
		-- commands.lua --
		set_text(LANG, 'commands:0', 2)
		set_text(LANG, 'commands:1', 'دستورات: دریافت راهنمای تمای دستورات ربات')
		set_text(LANG, 'commands:2', 'دستورات {نام پلاگین}: گرفتن راهنمای دستوران پلاگین مورد نظر')
		-- export_gban.lua --
		--	set_text(LANG, 'export_gban:0', 2)
		--	set_text(LANG, 'export_gban:1', '#gbans installer: دريافت ليست بن گلوبال به صورت فايل لوا.')
		--	set_text(LANG, 'export_gban:2', '#gbans list: ليست تمام بن گلوبال ها.')
		-- gban_installer.lua --
		--	set_text(LANG, 'gban_installer:0', 1)
		--	set_text(LANG, 'gban_installer:1', '#install gbans: يکسان سازي بن گلوبال هاي شما و ربات db.')
		-- welcome.lua --
		set_text(LANG, 'welcome:0', 2)
		set_text(LANG, 'welcome:1', 'ولکامست {پیام خوش آمد گویی}: با استفاده از دستور ولکامست میتوانید متن خوش آمد گویی را تغییر دهید.')
		--set_text(LANG, 'welcome:2', '#getwelcome - دريافت پيام خوش آمد گويي')--
		set_text(LANG, 'welcome:2', 'ولکام نصب/حذف: خاموش یا روشن کردن پیغام خوش آمد گویی')
		-- giverank.lua --
		set_text(LANG, 'promote:0', 6)
		set_text(LANG, 'promote:1', '#admin (reply): اضافه کردن ادمين با استفاده از ريپلي کردن.')
		set_text(LANG, 'promote:2', '#admin <user_id>/<user_name>: اضافه کردن ادمين با استفاده از شناسه يا نام کاربري.')
		set_text(LANG, 'promote:3', '#mod (reply): اضافه کردن مدير با ريپلي.')
		set_text(LANG, 'promote:4', '#mod <user_id>/<user_name>: اضافه کردن مدير با استفاده از شناسه يا نام کاربري.')
		set_text(LANG, 'promote:5', '#user (reply): حذف ادمين با استفاده از ريپلي.')
		set_text(LANG, 'promote:6', '#user <user_id>/<user_name>:حذف ادمين با استفاده از شناسه يا نام کاربري.')
		-- id.lua --
		set_text(LANG, 'id:0', 1)
		set_text(LANG, 'id:1', 'شناسه (با ریپلی یا بدون آن): دریافت شناسه خود و گروه یا فرد ریپلی شده')
		
		-- moderation.lua --
		set_text(LANG, 'moderation:0', 9)
		set_text(LANG, 'moderation:1', 'کیک {نام کاربری}/ {شناسه}/ {ریپلی}: حذف کاربر از گروه بااستفاده از نام کاربری ی شناسه یا ریپلی.')
		set_text(LANG, 'moderation:2', 'بن {نام کاربری}/ {شناسه}/ {ریپلی}: مسدود کردن کاربر و حذف در صورت ورود مجدد به گروه')
		set_text(LANG, 'moderation:3', 'حذفبن {نام کاربری}/ {شناسه}/ {ریپلی}: رفع مسدودیت یک فرد با استفاده از ریپلی، نام کاربری یا شناسه|این گزینه همچنین افراد مسدود شده در سوپر گروه را نیز آزاد میکند.')
		set_text(LANG, 'moderation:4', 'جیبن {نام کاربری}/ {شناسه}/ {ریپلی}: مسدود کردن کاربر به صورت جهانی')
		set_text(LANG, 'moderation:5', 'حذفجیبن {نام کاربری}/ {شناسه}/ {ریپلی}: رفع مسدودیت جهانی')
		set_text(LANG, 'moderation:6', 'سکوت {نام کاربری}/ {شناسه}/ {ریپلی}: سکوت یک فرد با استفاده از ریپلی شناسه یا نام کاربری')
		set_text(LANG, 'moderation:7', 'حذفسکوت {نام کاربری}/ {شناسه}/ {ریپلی}: رفع حالت سکوت یک فرد')
		set_text(LANG, 'moderation:8', 'سکوتهمه {ثانیه}: سکوت همه گروه در صورت دادن ثانیه گروه به همان مدت در حالت سکوت قرار میگیرد.')
		set_text(LANG, 'moderation:9', 'حذفسکوتهمه: رفع حالت سکوت گروه')
		
		-- settings.lua --
		set_text(LANG, 'settings:0', 25)
		set_text(LANG, 'settings:1', '#lang <language (en, es...)>: تغيير زبان ربات')
		set_text(LANG, 'settings:2', 'سرویس قفل/باز: خاموش یا روشن کردن و حذف تمام پیام های سرویس تلگرام')
		set_text(LANG, 'settings:3', 'دعوت قفل/باز: خاموش یا روشن کردن دعوت به گروه')
		set_text(LANG, 'settings:4', 'عکس قفل/باز: خاموش یا روشن کردن ارسال عکس به گروه')
		set_text(LANG, 'settings:5', 'فیلم قفل/باز: خاموش یا روشن کردن ارسال فیلم به گروه')
		set_text(LANG, 'settings:6', 'استیکر قفل/باز: خاموش یا روشن کردن ارسال استیکر به گروه')
		set_text(LANG, 'settings:7', 'گیف قفل/باز: خاموش یا روشن کردن ارسال گیف به گروه')
		set_text(LANG, 'settings:8', 'ضبط قفل/باز: خاموش یا روشن کردن ارسال صدای ضبط شده به گروه')
		set_text(LANG, 'settings:9', 'صدا قفل/باز: خاموش یا روشن کردن ارسال صدا و آهنگ به گروه')
		set_text(LANG, 'settings:10', 'فایل قفل/باز: خاموش یا روشن کردن ارسال فایل به گروه')
		set_text(LANG, 'settings:11', 'مکان قفل/باز: خاموش یا روشن کردن ارسال مکان به گروه')
		set_text(LANG, 'settings:12', 'بازی قفل/باز: خاموش یا روشن کردن ارسال بازی به گروه')
		set_text(LANG, 'settings:13', 'اسپم قفل/باز: خاموش یا روشن کردن هرزنامه')
		set_text(LANG, 'settings:14', 'ریپورت قفل/باز: قفل یا باز کردن ریپورت، در صورت فعال بودن فردی اسپم نماید ریپورت میشود.')
		set_text(LANG, 'settings:15', 'فوروارد قفل/باز: قفل فوروارد یا باز کردن آن')
		set_text(LANG, 'settings:16', 'فلود قفل/باز: قفل یا باز کردن ارسال مکرر پیام')
		set_text(LANG, 'settings:17', 'زمان {ثانیه}: تعیین زمان حساسیت فلود')
		set_text(LANG, 'settings:18', 'مکس {تعداد}: تعیین تعداد حساسیت فلود')
		set_text(LANG, 'settings:19', 'عربی قفل/باز: قفل یا بازکردن زبان عربی')
		set_text(LANG, 'settings:20', 'انگلیسی قفل/باز: قفل یا بازکردن زبان انگلیسی')
		set_text(LANG, 'settings:21', 'ایموجی قفل/باز: قفل یا بازکردن ایموجی')
		set_text(LANG, 'settings:22', 'همه قفل/باز: قفل یا بازکردن همه تنظیمات')
		set_text(LANG, 'settings:23', 'همه {رسانهباز/رسانهقفل}: قفل یا بازکردن همه تنظیمات رسانه')
		set_text(LANG, 'settings:24', 'همه {متنباز/متنقفل}: قفل یا بازکردن همه تنظیمات متن')
		set_text(LANG, 'settings:25', 'همه {گروهباز/گروهقفل}: قفل یا بازکردن همه تنظیمات گروه')
		
		-- set_text(LANG, 'settings:5', '#bots on/off: خاموش يا روشن کردن و حذف تمام ربات هاي گروه.')

		if matches[1] == 'install' or matches[1] == "نصب" then
			return '`>` زبان فارسي با موفقيت نصب شد.'
		elseif matches[1] == 'update' or matches[1] == "بهروز" then
			return '`>` زبان فارسي با موفقيت بروز رساني شد.'
		end
	else
		return "`>` فقط براي سودو ممکن است."
	end
end

return {
	patterns = {
		'[!/#](install) (persian_lang)$',
		'[!/#](update) (persian_lang)$',
		'(نصب) (فارسی)$',
		'(بهروز) (فارسی)$'
	},
	run = run
}
