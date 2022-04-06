package classes;

public class Product {

	// attributes
	private int id;
	private String name;
	private String description;
	private int category_id;
	private String image_url;
	private double buy_price;
	private double sell_price;

        public Product(String name, String description, int category_id,String image_url,double buy_price,double sell_price){
            
            this.name = name;
            this.description = description;
            this.category_id = category_id;
            this.image_url = image_url;
            this.buy_price = buy_price;
            this.sell_price = sell_price;
            
        }
	// Setters and Getters
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description
	 *            the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the category_id
	 */
	public int getCategory_id() {
		return category_id;
	}

	/**
	 * @param category_id
	 *            the category_id to set
	 */
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	/**
	 * @return the image_url
	 */
	public String getImage_url() {
		return image_url;
	}

	/**
	 * @param image_url
	 *            the image_url to set
	 */
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	/**
	 * @return the buy_price
	 */
	public double getBuy_price() {
		return buy_price;
	}

	/**
	 * @param buy_price
	 *            the buy_price to set
	 */
	public void setBuy_price(double buy_price) {
		this.buy_price = buy_price;
	}

	/**
	 * @return the sell_price
	 */
	public double getSell_price() {
		return sell_price;
	}

	/**
	 * @param sell_price
	 *            the sell_price to set
	 */
	public void setSell_price(double sell_price) {
		this.sell_price = sell_price;
	}

	// Other Methods

	public void getProductDetails() {

	}

	public void updateProductDetails() {

	}

	public void deleteProduct() {

	}
}
