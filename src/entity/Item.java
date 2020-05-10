package entity;

public class Item {
	/********************** attribut declaree dans les fichiers xml RSS ***********************/
	
	private String title;
	private String description;
	private String link;
	private String guid;
	private String category;
	private String pubDate;
<<<<<<< HEAD
	private String enclosure;
=======
	private String content;
	private String enclosure;
	private String url;
>>>>>>> 0fe6ac1e886d00d9d203fbfa42a50b0814319e2f
	
	/********************** constructeur par defaut***********************/
	
	public Item() {
		// TODO Auto-generated constructor stub
	}

	/********************** constructeur generique***********************/
	
	public Item(String title, String description, String link, String guid, String category, String pubDate) {
		super();
		this.title = title;
		this.description = description;
		this.link = link;
		this.guid = guid;
		this.category = category;
		this.pubDate = pubDate;
	}
<<<<<<< HEAD
	
	public Item(String title, String description, String link, String guid, String category, String pubDate, String enclosure) {
=======
	public Item(String title, String description, String link, String guid, String category, String pubDate, String content) {
		super();
		this.title = title;
		this.description = description;
		this.link = link;
		this.guid = guid;
		this.category = category;
		this.pubDate = pubDate;
		this.content = content;
	}
	public Item(String title, String description, String link, String guid, String category, String pubDate, String content, String enclosure) {
>>>>>>> 0fe6ac1e886d00d9d203fbfa42a50b0814319e2f
		super();
		this.title = title;
		this.description = description;
		this.link = link;
		this.guid = guid;
		this.category = category;
		this.pubDate = pubDate;
<<<<<<< HEAD
		this.enclosure = enclosure;
		}
=======
		this.content = content;
		this.enclosure = enclosure;
	}
	public Item(String title, String description, String link, String guid, String category, String pubDate, String content, String enclosure, String url) {
		super();
		this.title = title;
		this.description = description;
		this.link = link;
		this.guid = guid;
		this.category = category;
		this.pubDate = pubDate;
		this.content = content;
		this.enclosure = enclosure;
		this.url = url;
	}
>>>>>>> 0fe6ac1e886d00d9d203fbfa42a50b0814319e2f

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
<<<<<<< HEAD

=======
	
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
>>>>>>> 0fe6ac1e886d00d9d203fbfa42a50b0814319e2f
	public String getEnclosure() {
		return enclosure;
	}

	public void setEnclosure(String enclosure) {
		this.enclosure = enclosure;
	}
	
<<<<<<< HEAD
	
=======
	public String getURL() {
		return url;
	}

	public void setURL(String url) {
		this.url = url;
	}
>>>>>>> 0fe6ac1e886d00d9d203fbfa42a50b0814319e2f
	
}
