package bookmall.dao.test;

import java.util.List;

import bookmall.dao.CategoryDao;
import bookmall.dao.MemberDao;
import bookmall.vo.CategoryVo;
import bookmall.vo.MemberVo;

public class MemberDaoTest {

	public static void main(String[] args) {
		insertTest();
		findAllTest();
	}

	private static void findAllTest() {
	      List<MemberVo> list = new MemberDao().findAll();
	      for(MemberVo vo : list) {
	         System.out.println(vo);
		}
	}
	
	private static void insertTest() {
		MemberVo vo = null;
		MemberDao dao = new MemberDao();
		
		vo = new MemberVo();
		vo.setName("김대겸");
		vo.setPhone("010-0000-0001");
		vo.setEmail("123@naver.com");
		vo.setPassword("1234");
		dao.insert(vo);
		
		vo = new MemberVo();
		vo.setName("정민철");
		vo.setPhone("010-1111-0000");
		vo.setEmail("123@gmail.com");
		vo.setPassword("5678");
		dao.insert(vo);
	}
}
