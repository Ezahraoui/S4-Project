package util;

import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

import entity.Item;

public class RSSUtil {

	public static List<Item> elements(String lien)
	{
		
		List<Item> listeElement=new ArrayList<Item>();
		try {
			/*******************************on a creer un objet qui permet de recuperer un fichier xml******************************/
			DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document d= db.parse(lien);
			/*******************************rechercher l'element item a l'aide de xpath******************************/
			XPath xpath=XPathFactory.newInstance().newXPath();
			NodeList nodeList= (NodeList)xpath.compile("//item").evaluate(d,XPathConstants.NODESET);
			
			for(int i=0;i<nodeList.getLength();i++)
			{
				Item item=new Item();
				item.setCategory(xpath.compile("./category").evaluate(nodeList.item(i),XPathConstants.STRING).toString());
				item.setDescription(xpath.compile("./description").evaluate(nodeList.item(i),XPathConstants.STRING).toString());
				item.setLink(xpath.compile("./link").evaluate(nodeList.item(i),XPathConstants.STRING).toString());
				item.setPubDate(xpath.compile("./pubDate").evaluate(nodeList.item(i),XPathConstants.STRING).toString());
				item.setTitle(xpath.compile("./title").evaluate(nodeList.item(i),XPathConstants.STRING).toString());
<<<<<<< HEAD
				item.setEnclosure(xpath.compile("./enclosure/@url").evaluate(nodeList.item(i),XPathConstants.STRING).toString());
				
=======
				item.setContent(xpath.compile("./content/@url").evaluate(nodeList.item(i),XPathConstants.STRING).toString());
				item.setEnclosure(xpath.compile("./enclosure/@url").evaluate(nodeList.item(i),XPathConstants.STRING).toString());
			    item.setURL(xpath.compile("./url").evaluate(nodeList.item(i),XPathConstants.STRING).toString());
>>>>>>> 0fe6ac1e886d00d9d203fbfa42a50b0814319e2f
				
				listeElement.add(item);
			}
			
			
			
		}catch(Exception e){
			listeElement=null;
		}
		
		return listeElement;
	}
	
}
