
package membermodel;
 
import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
import util.JdbcUtils;
 
 
/* Data Access Object
 * 테이블 당 한개의 DAO를 작성한다.
 * 
 * JSP_MEMBER 테이블과 연관된 DAO로
 * 회원 데이터를 처리하는 클래스이다.
 */
public class MemberDAO 
{
    private static MemberDAO instance;
    
    // 싱글톤 패턴
    private MemberDAO(){}
    public static MemberDAO getInstance(){
        if(instance==null)
            instance=new MemberDAO();
        return instance;
    }
    
    // String -> Date로 변경하는 메서드
    // 문자열로된 생년월일을 Date로 변경하기 위해 필요
    // java.util.Date클래스로는 오라클의 Date형식과 연동할 수 없다.
    // Oracle의 date형식과 연동되는 java의 Date는 java.sql.Date 클래스이다.
   // end stringToDate()
    
    // 회원정보를 JSP_MEMBER 테이블에 저장하는 메서드
    public void insertMember(MemberBean member)
    {
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            // 커넥션을 가져온다.
            conn = JdbcUtils.getConnection();
            
            String sql="insert into member values(?,?,?,?)";
          
            /* 
             * StringBuffer에 담긴 값을 얻으려면 toString()메서드를
             * 이용해야 한다.
             */
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, member.getId());
            pstmt.setString(2, member.getPassword());
            pstmt.setString(3, member.getEmail());
            pstmt.setString(4, member.getPhone());
           
            // 쿼리 실행
            pstmt.executeUpdate();
            // 완료시 커밋
            
        } catch (Exception e) {
        	e.printStackTrace();
        } finally {
            // Connection, PreparedStatement를 닫는다.
            try{
                if ( pstmt != null ){ pstmt.close(); }
                if ( conn != null ){ conn.close(); }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        } // end try~catch 
    }
    
    //logincheck
   public int logincheck(String id, String password){
	   String sql="select password from member where id=?";
	   int chk= -1 ;
	   Connection conn=null;
	   PreparedStatement pstmt=null;
	   ResultSet rs=null; 
	   try{
		   conn=JdbcUtils.getConnection();
		   pstmt=conn.prepareStatement(sql);
		   pstmt.setString(1, id);
		   rs=pstmt.executeQuery();
		   if(rs.next()){
			   if(password.equals(rs.getString("password"))){
				   chk=1;
			   }else{
				   chk=0;
			   }
		   }
				   
	   }catch(SQLException e){
		   e.printStackTrace();
	   }finally{
		   try{
			   if(rs!=null)rs.close();
			   if(pstmt!=null)pstmt.close();
			   if(conn!=null)conn.close();
		   }catch(SQLException e){
			   e.printStackTrace();
		   }
	   }
	   return chk;
    }
   
   
   
   public boolean idcheck(String id){
	   String sql="select password from member where id=?";
	   boolean chk=false;
	   Connection conn=null;
	   PreparedStatement pstmt=null;
	   ResultSet rs=null;
	   try{
		   conn=JdbcUtils.getConnection();
		   pstmt=conn.prepareStatement(sql);
		   pstmt.setString(1, id);
		   rs=pstmt.executeQuery();
		   if(rs.next()){
			   chk=true;
		   }
				   
	   }catch(SQLException e){
		   e.printStackTrace();
	   }finally{
		   try{
			   if(rs!=null)rs.close();
			   if(pstmt!=null)pstmt.close();
			   if(conn!=null)conn.close();
		   }catch(SQLException e){
			   e.printStackTrace();
		   }
	   }
	   return chk;
    }
   
   
   
   
   
   
   
   
   
   
   
   
   
   public MemberBean getOneMember(String id){
	   String sql="select * from member where id=?";
	   MemberBean member=null;
	   Connection conn=null;
	   PreparedStatement pstmt=null;
	   ResultSet rs=null;
	   try{
		   conn=JdbcUtils.getConnection();
		   pstmt=conn.prepareStatement(sql);
		   pstmt.setString(1, id);
		   rs=pstmt.executeQuery();
			if(rs.next()){
				member=new MemberBean();
				member.setId(rs.getString("id"));
				member.setPassword(rs.getString("password"));
				member.setEmail(rs.getString("email"));
				member.setPhone(rs.getString("phone"));
			}
	   }catch(SQLException e){
		   e.printStackTrace();
	   }finally{
		   try{
			   if(rs!=null)rs.close();
			   if(pstmt!=null)pstmt.close();
			   if(conn!=null)conn.close();
		   }catch(SQLException e){
			   e.printStackTrace();
		   }
	   }
	   return member;
    }
      
}


