return {
  blacklist = {
    ["default"] = {
      "telegram.me/(.*)",
      "telegra.ph/(.*)",
      "t.me/(.*)",
      "@channel",
	  "https?://[%w-_%.%?%.:/%+=&]+%S",
	  "@",
	  "#",
	  "sex",
	  "gay",
	  "fuck",
	  "kir",
	  "kon",
	  "kos",
	  "koos",
	  "koon",
	  "jende",
	  "lez",
	  "سکس",
	  "جنده",
	  "کون",
	  "کیر",	
	  "جنده",
	  "کوص",
	  "لزبین",	
	  "مفعول",
	  "برده",
	  "فتیش",			

		
	
    },
    ["links"] = {
      "https?://[%w-_%.%?%.:/%+=&]+%S"
    }
  },

  whitelist = {
    ["default"] = {
      "@DBTeam",
      "@DBTeamES",
      "@DBTeamEN"
    }
  }
}
