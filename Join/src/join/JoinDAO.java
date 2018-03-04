package join;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import myBatisSetting.SqlMapConfig;

public class JoinDAO {

	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession sqlsession;

	public JoinDAO() {

		sqlsession = sessionf.openSession(true); // true 로 할시 자동 commit

	}

	public int insertJoin(JoinDTO dto) {
		int result;
		result = sqlsession.insert("insertjoin", dto);

		return result;
	}

	/*public boolean SelectJoin(String id, String pw) {

		JoinDTO select = null;
		

		try { //널값이면 id가 없습니다
			  //널값이 아니면 출력
			//name출력

			select = sqlsession.selectOne("select.selectDTO", id);
			
			if(select==null)
				return false;
			else
			{
				if(select.getId().equals(pw))
			}
			
            
		
		} finally {
			sqlsession.close();
		}
		System.out.println("select" + select.getId());
		return select;*/

	public JoinDTO SelectJoin(JoinDTO dto){
		
		JoinDTO select = null;
 
		
		select=sqlsession.selectOne("SelectJoin",dto);	
		return select;
	}
	
	
	public int updateJoin(JoinDTO dto){
		
		return sqlsession.update("updateJoin", dto);
	}
	
	
	public int deleteJoin(JoinDTO dto){
		return sqlsession.delete("deleteJoin",dto);
	}
	
	
	
	
	//왜 int인가

}
