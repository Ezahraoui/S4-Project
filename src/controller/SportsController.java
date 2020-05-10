package controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import util.RSSUtil;

@Controller
@RequestMapping("sports")
public class SportsController {
	

		@RequestMapping(method=RequestMethod.GET)
		public String index(ModelMap mp)
		{
			
			String lien="https://www.france24.com/fr/sports/rss";
			mp.put("items",RSSUtil.elements(lien));
			
			return "sports";
		}
	
}
