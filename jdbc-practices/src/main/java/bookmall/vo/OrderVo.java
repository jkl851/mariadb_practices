package bookmall.vo;

public class OrderVo {
	private Long no;
	private Long member_no;
	private Long order_no;
	private Long order_price;
	private String addr;
	
	public Long getNo() {
		return no;
	}
	public void setNo(Long no) {
		this.no = no;
	}
	public Long getMember_no() {
		return member_no;
	}
	public void setMember_no(Long member_no) {
		this.member_no = member_no;
	}
	public Long getOrder_no() {
		return order_no;
	}
	public void setOrder_no(Long order_no) {
		this.order_no = order_no;
	}
	public Long getOrder_price() {
		return order_price;
	}
	public void setOrder_price(Long order_price) {
		this.order_price = order_price;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	@Override
	public String toString() {
		return "OrderVo [no=" + no + ", member_no=" + member_no + ", order_no=" + order_no + ", order_price="
				+ order_price + ", addr=" + addr + "]";
	}
	
}
