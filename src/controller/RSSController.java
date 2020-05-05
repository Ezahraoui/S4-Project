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
			//https://www.lemonde.fr/actualite-medias/article/2019/08/12/les-flux-rss-du-monde-fr_5498778_3236.html
			//https://www.theguardian.com/world/rss
			//https://rmcsport.bfmtv.com/rss/info/flux-rss/flux-toutes-les-actualites/
			//http://feeds.reuters.com/news/artsculture?format=xml
			//https://www.bfmtv.com/rss/international/
			//https://www.france24.com/fr/rss
			String lien="https://www.france24.com/fr/rss";
			mp.put("items",RSSUtil.elements(lien));
			
			return "index";
		}
	
}
