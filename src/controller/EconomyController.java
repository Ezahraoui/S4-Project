package controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import util.RSSUtil;

@Controller
@RequestMapping("economy")
public class EconomyController {
	

		@RequestMapping(method=RequestMethod.GET)
		public String index(ModelMap mp)
		{
		
			String lien="https://www.france24.com/fr/éco-tech/rss";
			RSSUtil.elements(lien, 3);
			
			mp.put("items",RSSUtil.liste(3));
			
			return "economy";
		}
	
}
