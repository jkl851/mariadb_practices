package bookmall.dao.test;

import java.util.List;

import bookmall.dao.MemberDao;
import bookmall.dao.Order_bookDao;
import bookmall.vo.MemberVo;
import bookmall.vo.Order_bookVo;

public class Order_bookDaoTest {

	public static void main(String[] args) {
		insertTest();
		findAllTest();
	}
	
	private static void findAllTest() {
	      List<Order_bookVo> list = new Order_bookDao().findAll();
	      for(Order_bookVo vo : list) {
	         System.out.println(vo);
		}
	}
	
	private static void insertTest() {
		Order_bookVo vo = null;
		Order_bookDao dao = new Order_bookDao();
		
		vo = new Order_bookVo();
		vo.setNo(1L);
		vo.setBook_no(1L);
		vo.setAmount(1L);
		vo.setPrice(10000L);
		dao.insert(vo);
		
		vo = new Order_bookVo();
		vo.setNo(1L);
		vo.setBook_no(3L);
		vo.setAmount(1L);
		vo.setPrice(30000L);
		dao.insert(vo);
	}
}
