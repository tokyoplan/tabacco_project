package shoes;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import myBatisSetting.SqlMapConfig;

public class ShoesDAO {
	
	SqlSessionFactory sessionf=SqlMapConfig.getSqlMapInstance();
	SqlSession sqlsession;
	
	
	public ShoesDAO(){
		sqlsession=sessionf.openSession(true);
	}
	
	public List<String> selectShoes(){
		
		List<String> select=null;
//		select=sqlsession.selectOne("SelectShoes");
		select=sqlsession.selectList("selectShoesPathList");
		 
		return select;
	}

}
