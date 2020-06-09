package controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import util.RSSUtil;

@Controller
@RequestMapping("culture")
public class CultureController {
	

		@RequestMapping(method=RequestMethod.GET)
		public String index(ModelMap mp)
		{
			
			String lien="https://www.france24.com/fr/culture/rss";
			RSSUtil.elements(lien, 4);
			
			mp.put("items",RSSUtil.liste(4));
			
			return "culture";
		}
	
}
