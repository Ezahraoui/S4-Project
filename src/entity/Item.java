package entity;

public class Item {
	/********************** attribut declaree dans les fichiers xml RSS ***********************/
	
	private String title;
	private String description;
	private String link;
	private String guid;
	private String category;
	private String pubDate;
	private String enclosure;
	private int type;
	
	/********************** constructeur par defaut***********************/
	
	public Item() {
		// TODO Auto-generated constructor stub
	}

	/********************** constructeur generique***********************/
	
	

	public Item(String title, String description, String link, String guid, String category, String pubDate,
			String enclosure, int type) {
		super();
		this.title = title;
		this.description = description;
		this.link = link;
		this.guid = guid;
		this.category = category;
		this.pubDate = pubDate;
		this.enclosure = enclosure;
		this.type = type;
	}

	public Item(String title, String description, String link, String guid, String category, String pubDate, int type) {
		super();
		this.title = title;
		this.description = description;
		this.link = link;
		this.guid = guid;
		this.category = category;
		this.pubDate = pubDate;
		this.type = type;
	}

	/********************** ACCESSEUR ET MUTATEUR ***********************/
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getGuid() {
		return guid;
	}

	public void setGuid(String guid) {
		this.guid = guid;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPubDate() {
		return pubDate;
	}

	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}

	public String getEnclosure() {
		return enclosure;
	}

	public void setEnclosure(String enclosure) {
		this.enclosure = enclosure;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
	
	
}
