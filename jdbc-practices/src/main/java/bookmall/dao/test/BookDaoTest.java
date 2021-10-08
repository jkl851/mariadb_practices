package bookmall.dao.test;

import java.util.List;

import bookmall.dao.BookDao;
import bookmall.vo.BookVo;
import bookshop.dao.AuthorDao;
import bookshop.vo.AuthorVo;

public class BookDaoTest {

	public static void main(String[] args) {
		insertTest();
		findAllTest();
	}
	private static void findAllTest() {
	      List<BookVo> list = new BookDao().findAll();
	      for(BookVo vo : list) {
	         System.out.println(vo);
		}
	}

	private static void insertTest() {
		BookVo vo = null;
		BookDao dao = new BookDao();
		
		vo = new BookVo();
		vo.setName("트와일라잇");
		vo.setPrice(10000L);
		vo.setCategoryNo(1L);
		dao.insert(vo);
		
		vo = new BookVo();
		vo.setName("아프니까 청춘이다");
		vo.setPrice(15000L);
		vo.setCategoryNo(2L);
		dao.insert(vo);
		
		vo = new BookVo();
		vo.setName("코스모스");
		vo.setPrice(30000L);
		vo.setCategoryNo(3L);
		dao.insert(vo);
	}
}
