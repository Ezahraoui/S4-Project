package controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import util.RSSUtil;

@Controller
@RequestMapping("science")
public class ScienceController {
	

		@RequestMapping(method=RequestMethod.GET)
		public String index(ModelMap mp)
		{
			
			String lien="https://www.lemonde.fr/sciences/rss_full.xml";
			mp.put("items",RSSUtil.elements(lien));
			
			return "science";
		}
	
}
