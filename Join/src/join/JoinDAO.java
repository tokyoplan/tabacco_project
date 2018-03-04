package join;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import myBatisSetting.SqlMapConfig;

public class JoinDAO {

	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession sqlsession;

	public JoinDAO() {

		sqlsession = sessionf.openSession(true); // true �� �ҽ� �ڵ� commit

	}

	public int insertJoin(JoinDTO dto) {
		int result;
		result = sqlsession.insert("insertjoin", dto);

		return result;
	}

	/*public boolean SelectJoin(String id, String pw) {

		JoinDTO select = null;
		

		try { //�ΰ��̸� id�� �����ϴ�
			  //�ΰ��� �ƴϸ� ���
			//name���

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
	
	
	
	
	//�� int�ΰ�

}
