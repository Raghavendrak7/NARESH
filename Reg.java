package ConnTools;
import java.sql.*;
import java.util.ArrayList;
public class Reg {
	public  static Connection Establish() throws SQLException {
		 try
		 {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gsixp","root","nareshchikku25");
			 return conn;
		 }
		 catch(ClassNotFoundException ex)
		 {

			 	System.out.println(ex);
			 	ex.printStackTrace();
		 }
		 return null;
		 	
	 }
	public static boolean closeConnection(Connection obj) {
		try{
	        if(obj != null)
	         obj.close();  
	      } 
		catch (SQLException e){
	        return false;
		}
		return true;
	}
	public static boolean newscheme(String a,String b) {
		try{
			Connection con=Reg.Establish();
			Statement st=con.createStatement();
			String sql="insert into display_schemes(tod,schme)  values('"+a+"','"+b+"')";
			st.executeUpdate(sql);
			con.close();
			return true;
		}catch (SQLException e){
	        return false;
		}
	}
	public static <T> ArrayList<String> dschemes(String a){
		try {
			Connection con=Reg.Establish();
			Statement st=con.createStatement();
			st=con.createStatement();
			ArrayList<String> b=new ArrayList<String>();
			ResultSet rs=st.executeQuery("select sco,schme from display_schemes where tod='"+a+"'");
			while(rs.next()) {
				b.add(rs.getString("sco"));
				b.add(rs.getString("schme"));
			}
			Reg.closeConnection(con);
			return b;}catch(SQLException e){
			 	return null;
			 }
		}
	public static boolean modify(String a,String b,String c) {
		try {
			Connection con=Reg.Establish();
			Statement st=con.createStatement();
			st=con.createStatement();
			st.executeUpdate("update display_schemes set tod='"+b+"',schme='"+c+"' where sco='"+a+"'");
			Reg.closeConnection(con);
			return true;
		}catch (SQLException e){
	        return false;
		}
	}
	public static boolean delete(String a,String b) {
		try {
			Connection con=Reg.Establish();
			Statement st=con.createStatement();
			st=con.createStatement();
			st.executeUpdate("delete from display_schemes where sco='"+a+"' and tod='"+b+"'");
			Reg.closeConnection(con);
			return true;
		}catch (SQLException e){
	        return false;
		}
	}
	public static boolean checktodscheme(String a,String b) {
		try {
			Connection con=Reg.Establish();
			Statement st=con.createStatement();
			st=con.createStatement();
			ResultSet rs=st.executeQuery("select *from display_schemes where sco="+a+" and tod="+b);
			if(rs.next()) {
				Reg.closeConnection(con);
				return true;
			}else {
				Reg.closeConnection(con);
				return false;
			}
		}catch (SQLException e){
	        return false;
		}
	}
}
