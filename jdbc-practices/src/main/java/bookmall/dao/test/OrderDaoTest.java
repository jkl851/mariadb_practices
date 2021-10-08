package bookmall.dao.test;

import java.util.List;

import bookmall.dao.BookDao;
import bookmall.dao.OrderDao;
import bookmall.vo.BookVo;
import bookmall.vo.OrderVo;

public class OrderDaoTest {
	public static void main(String[] args) {
		insertTest();
		findAllTest();
	}
	
	private static void findAllTest() {
	      List<OrderVo> list = new OrderDao().findAll();
	      for(OrderVo vo : list) {
	         System.out.println(vo);
		}
	}
	
	private static void insertTest() {
		OrderVo vo = null;
		OrderDao dao = new OrderDao();
		
		vo = new OrderVo();
		vo.setMember_no(1L);
		vo.setOrder_no(2021100001L);
		vo.setOrder_price(40000L);
		vo.setAddr("부산광역시 해운대구 재송동 동동푸아파트 1동 101호");
		dao.insert(vo);
	}

}
