package bookmall.vo;

public class Order_bookVo {
	private Long no;
	private Long book_no;
	private Long amount;
	private Long price;
	
	public Long getNo() {
		return no;
	}
	public void setNo(Long no) {
		this.no = no;
	}
	public Long getBook_no() {
		return book_no;
	}
	public void setBook_no(Long book_no) {
		this.book_no = book_no;
	}
	public Long getAmount() {
		return amount;
	}
	public void setAmount(Long amount) {
		this.amount = amount;
	}
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "order_book [no=" + no + ", book_no=" + book_no + ", amount=" + amount + ", price=" + price + "]";
	}

}
