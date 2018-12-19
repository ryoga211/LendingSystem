/**
 *
 */

package Entity;

/**
 * @author Ota
 *
 */
public class Item {

	private String item_code;
	private String title_code;
	private String category_code;
	private String item_name;
	private int price = 0;
	private boolean isLendable = true;

	public Item(String title_code) {
		// Bring data from database

	}

	public Item(String title_code, String c_code, String i_name, int price) {
		// Add new item into database
	}

	public String getItem_code() {
		return item_code;
	}

	public void setItem_code(String item_code) {
		this.item_code = item_code;
	}

	public String getTitle_code() {
		return this.item_code.substring(0, 5);
	}

	public String getCategory_code() {
		return category_code;
	}

	public void setCategory_code(String category_code) {
		this.category_code = category_code;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}





}
