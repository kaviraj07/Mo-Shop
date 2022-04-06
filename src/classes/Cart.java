package classes;

import java.util.Date;

public class Cart {

	//attributes
	private int id;
	private int user_id;
	private int product_id;
	private int quantity;
	private Date date_added;
	
	
	//Setters and Getters
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the user_id
	 */
	public int getUser_id() {
		return user_id;
	}
	/**
	 * @param user_id the user_id to set
	 */
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	/**
	 * @return the product_id
	 */
	public int getProduct_id() {
		return product_id;
	}
	/**
	 * @param product_id the product_id to set
	 */
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	/**
	 * @return the quantity
	 */
	public int getQuantity() {
		return quantity;
	}
	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	/**
	 * @return the date_added
	 */
	public Date getDate_added() {
		return date_added;
	}
	/**
	 * @param date_added the date_added to set
	 */
	public void setDate_added(Date date_added) {
		this.date_added = date_added;
	}
	
	
	//Other Methods
	
	public void deleteItem() {
		
	}
	
	public void updateItem() {
		
	}
	
	public void confirm() {
		
	}
	
	
	
}
