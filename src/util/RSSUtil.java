package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

import org.aspectj.weaver.patterns.TypePatternQuestions.Question;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

import com.mysql.jdbc.ResultSet;

import entity.Item;

import java.sql.*;

import java.util.ArrayList;


public class RSSUtil {

	public static void elements(String lien,int type)
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
			Connection conn = Db.getConnection();
			for(int i=0;i<nodeList.getLength();i++)
			{
				Item item=new Item();
				item.setCategory(xpath.compile("./category").evaluate(nodeList.item(i),XPathConstants.STRING).toString());
				item.setDescription(xpath.compile("./description").evaluate(nodeList.item(i),XPathConstants.STRING).toString());
				item.setLink(xpath.compile("./link").evaluate(nodeList.item(i),XPathConstants.STRING).toString());
				item.setPubDate(xpath.compile("./pubDate").evaluate(nodeList.item(i),XPathConstants.STRING).toString());
				item.setTitle(xpath.compile("./title").evaluate(nodeList.item(i),XPathConstants.STRING).toString());
				item.setEnclosure(xpath.compile("./enclosure/@url").evaluate(nodeList.item(i),XPathConstants.STRING).toString());
				item.setType(type);
				listeElement.add(item);
				try{
					
					Statement pr=conn.createStatement();
					java.sql.ResultSet rs=pr.executeQuery("SELECT * FROM item where title='"+item.getTitle()+"'");//permet de recuperer les donnees dune table
					boolean t=false;
					while(rs.next())
					{					
					t=true;
					}
					
					if(t==false) {
					String sql = "INSERT INTO item (title, description, link, guid, category, pubDate,enclosure, type) values (?,?,?,?,?,?,?,?)";
					PreparedStatement statement = conn.prepareStatement(sql);
					statement.setString(1, item.getTitle());
					statement.setString(2, item.getDescription());
					statement.setString(3, item.getLink());
					statement.setString(4, item.getGuid());
					statement.setString(5, item.getCategory());
					statement.setString(6, item.getPubDate());
					statement.setString(7, item.getEnclosure());
					statement.setInt(8, item.getType());
					System.out.println(statement);
					statement.executeUpdate();
					
					}
				} catch (SQLException e) {
			        // process sql exception
			        
			    }
				
			}
			
			
			
		}catch(Exception e){
			listeElement=null;
		}
		
	}
	

	public static List<Item> liste(int type)
	{
		List<Item> listeElement=new ArrayList<Item>();
		Item item = null;
		try 
		{

		Connection cn = Db.getConnection();
		Statement pr=cn.createStatement();
		java.sql.ResultSet rs=pr.executeQuery("SELECT * FROM item where type="+type);//permet de recuperer les donnees dune table
		
		while(rs.next())
		{
			item= new Item();
			item.setTitle(rs.getString(2));
			item.setDescription(rs.getString(3));
			item.setLink(rs.getString(4));
			item.setGuid(rs.getString(5));
			item.setCategory(rs.getString(6));
			item.setPubDate(rs.getString(7));
			item.setEnclosure(rs.getString(8));
			item.setType(type);
			listeElement.add(item);
		}
		} 
		catch (Exception e) 
		{		
			e.printStackTrace();
		}		
		
		return listeElement;
		
	}
	
}
