package controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import util.RSSUtil;

@Controller
@RequestMapping("rss")
public class RSSController {
	

		@RequestMapping(method=RequestMethod.GET)
		public String index(ModelMap mp)
		{
			
			String lien="https://www.france24.com/fr/rss";
			
			RSSUtil.elements(lien, 0);
			
			mp.put("items",RSSUtil.liste(0));
			
			return "index";
		}
	
}