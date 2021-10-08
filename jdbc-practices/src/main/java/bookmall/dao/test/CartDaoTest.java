package bookmall.dao.test;

import java.util.List;

import bookmall.dao.BookDao;
import bookmall.dao.CartDao;
import bookmall.vo.BookVo;
import bookmall.vo.CartVo;

public class CartDaoTest {

	public static void main(String[] args) {
		insertTest();
		findAllTest();
	}
	private static void findAllTest() {
	      List<CartVo> list = new CartDao().findAll();
	      for(CartVo vo : list) {
	         System.out.println(vo);
		}
	}

	private static void insertTest() {
		CartVo vo = null;
		CartDao dao = new CartDao();
		
		vo = new CartVo();
		vo.setMember_no(1L);
		vo.setBook_no(3L);
		vo.setAmount(1L);
		dao.insert(vo);
		
		vo = new CartVo();
		vo.setMember_no(1L);
		vo.setBook_no(1L);
		vo.setAmount(1L);
		dao.insert(vo);
	
	}

}
