package ConnTools;
import java.sql.*;
import java.util.ArrayList;
public class Usr{
		public String udid,pwd,fname,age,gender,dob,phn_no,hno,sname,sno,locality,pincode;
		public String tod,cid,cname,cage,cphno,cgender,cpin,cloc,cstno,cstreet,chno;
		public boolean checkexist() throws SQLException {
			try { Connection conn=Reg.Establish();
			 Statement st=conn.createStatement();
			 ResultSet rs;
			 String c1,c2,c3,c4,c5,c6;
			 rs=st.executeQuery("select * from usertot");
			 while(rs.next()) {
				 c1=rs.getString("udid");c2=rs.getString("phn_no");
				 c3=rs.getString("hno");c4=String.valueOf(rs.getInt("cid"));
				 c5=rs.getString("cphno");c6=rs.getString("chno");
				 if(this.udid.equals(c1) || this.phn_no.equals(c2) || this.hno.equals(c3) || this.cid.equals(c4) || this.cphno.equals(c5) || this.chno.equals(c6) || this.tod=="0") {
					 return false;
				 }
			 }
			 Reg.closeConnection(conn);
			 return true;
			 }catch(SQLException e) {
				 return false;
			 }
		 }
		 public static boolean log(String eu,String ep) throws SQLException{
			 try { Connection conn=Reg.Establish();
			 Statement st=conn.createStatement();
			 ResultSet rs;
			 String p;
			 rs=st.executeQuery("select * from login where udid='"+eu+"'");
			 if(rs.next()) {
				 p=rs.getString("pwd");
				 Reg.closeConnection(conn);
				 if(p.equals(ep)) {
					 return true;
				 }else return false;
			 }else {Reg.closeConnection(conn);
			 return false;
		 }
			 }catch(SQLException e) {
				 System.out.println(e);
				 return false;
			 }
		 }
		 public static boolean alog(String eu,String ep) throws SQLException{
			 try { Connection conn=Reg.Establish();
			 Statement st=conn.createStatement();
			 ResultSet rs;
			 String p;
			 rs=st.executeQuery("select * from admin_login where aid='"+eu+"'");
			 if(rs.next()) {
				 p=rs.getString("apwd");
				 Reg.closeConnection(conn);
				 if(p.equals(ep)) {
					 return true;
				 }else return false;
			 }else {Reg.closeConnection(conn);
				 return false;
			 }
			 }catch(SQLException e) {
				 System.out.println(e);
				 return false;
			 }
		 }
		 public boolean insertreg()throws SQLException {
			 try{
			Connection conn=Reg.Establish();
			 Statement st=conn.createStatement();
			 String sql ="insert into login(udid,pwd) values('"+udid+"','"+pwd+"')";
			 st.executeUpdate(sql);
			 sql ="insert into after_login(udid,hno,cid) values('"+udid+"','"+hno+"','"+cid+"')";
			 st.executeUpdate(sql);
			 sql ="insert into personal_details(udid,age,gender,phn_no,fname,dob) values('"+udid+"','"+age+"','"+gender+"','"+phn_no+"','"+fname+"','"+dob+"')";
			 st.executeUpdate(sql);
			 sql ="insert into disabled_address(hno,sname,sno,locality,pincode) values('"+hno+"','"+sname+"','"+sno+"','"+locality+"','"+pincode+"')";
			 st.executeUpdate(sql);
			 sql="insert into caretaker_details(cid,cname,cage,cgender,cphno,chno) values('"+cid+"','"+cname+"','"+cage+"','"+cgender+"','"+cphno+"','"+chno+"')";
			 st.executeUpdate(sql);
			 sql ="insert into caretaker_address(chno,sname,sno,locality,pincode) values('"+chno+"','"+cstreet+"','"+cstno+"','"+cloc+"','"+cpin+"')";
			 st.executeUpdate(sql);
			 sql="insert into typeofdisability_details(udid,tod) values('"+udid+"','"+tod+"')";
			 st.executeUpdate(sql);
			 Reg.closeConnection(conn);
			 return true;
			 }catch(SQLException e) {
				 return false;
			 }
		 }
		 public static boolean quota(String u_name,String count1) throws SQLException{
			int count=Integer.parseInt(count1);
			 try {
			Connection con=Reg.Establish();
			 Statement stmt=con.createStatement();
			 stmt=con.createStatement();
			 ResultSet rs,rs1;
			 int age=0,tod1=0;
			 rs=stmt.executeQuery("select tod from typeofdisability_details where udid='"+u_name+"'");
			 if(rs.next()){
			 tod1=rs.getInt("tod");
			 }
			 rs1=stmt.executeQuery("select age from personal_details where udid='"+u_name+"'");
			 if(rs1.next()){
				 age=rs1.getInt("age");
			 }
			 Reg.closeConnection(con);
			 if((age>=21 & age<33)&&(count<10)){
				 if(tod1==1 || tod1==3  || tod1==5  || tod1==7) return true;
				 else return false;
			 }else return false;
			 }catch(SQLException e){
			 	return false;
			 }
		 }
		 public static boolean schlorship(String u_name,String count1) throws SQLException{
			int tod=41,count=Integer.parseInt(count1);
			 try {
			Connection con=Reg.Establish();
			 Statement stmt=con.createStatement();
			 stmt=con.createStatement();
			 ResultSet rs;
			 rs=stmt.executeQuery("select tod from typeofdisability_details where udid='"+u_name+"'");
			 if(rs.next()){
			 tod=rs.getInt("tod");
			 }
			 Reg.closeConnection(con);
			 if(count<9)
			 {
			 	if(tod<40)return true;
			 	else return false;
			 }else return false;
			 }catch(SQLException e){
			 	return false;
			 }
		 }
		 public static <T> ArrayList<String> hisschemes(String a) throws SQLException,NumberFormatException{
				try{Connection conn=Reg.Establish();
				Statement st=conn.createStatement();
				st=conn.createStatement();
				ArrayList<String> b=new ArrayList<String>();
				ResultSet rs=st.executeQuery("select ds.schme from display_schemes as ds,typeofdisability_details as td where td.tod=ds.tod and td.udid='"+a+"'");
				while(rs.next()) {
					b.add(rs.getString("schme"));
				}
				Reg.closeConnection(conn);
				return b;}catch(SQLException e){
				 	return null;
				 }
			}
		 public static <T> Usr pd(String u_name) throws SQLException,NumberFormatException{
			 try
			 {
			 	Connection con=Reg.Establish();
			 	Statement stmt=con.createStatement();
			 	stmt=con.createStatement();
			 	ResultSet rs1;
			 	Usr a=new Usr();
			 	rs1=stmt.executeQuery("select * from usertot where udid='"+u_name+"'");
			 	if(rs1.next())
			 	{
			 		a.fname=rs1.getString("fname");
			 		a.age=rs1.getString("age");
			 		a.dob=rs1.getString("dob");
			 		a.gender=rs1.getString("gender");
			 		a.phn_no=rs1.getString("phn_no");
			 		a.hno=rs1.getString("hno");
			 		a.sname=rs1.getString("sname");
			 		a.sno=rs1.getString("sno");
			 		a.locality=rs1.getString("locality");
			 		a.pincode=rs1.getString("pincode");
			 	}
			 	Reg.closeConnection(con);
			 	return a;
			 }catch(Exception ex){
				 return null;
			 }
		 }
		 public static <T> Usr cd(String u_name) throws SQLException,NumberFormatException{
			 try
			 {
			 	Connection con=Reg.Establish();
			 	Statement stmt=con.createStatement();
			 	stmt=con.createStatement();
			 	ResultSet rs1;
			 	Usr a=new Usr();
			 	rs1=stmt.executeQuery("select * from usertot where udid='"+u_name+"'");
			 	if(rs1.next())
			 	{
			 		a.cid=rs1.getString("cid");
			 		a.cname=rs1.getString("cname");
					a.cage=rs1.getString("cage");
					a.cgender=rs1.getString("cgender");
					a.cphno=rs1.getString("cphno");
					a.chno=rs1.getString("chno");
			 	}
			 	rs1=stmt.executeQuery("select * from caretaker_address where chno='"+a.chno+"'");
			 	if(rs1.next()) {
			 		a.cstreet=rs1.getString("sname");
					a.cstno=rs1.getString("sno");
					a.cloc=rs1.getString("locality");
					a.cpin=rs1.getString("pincode");
			 	}
			 	Reg.closeConnection(con);
			 	return a;
			 }catch(Exception ex){
				 return null;
			 }
		 }
		 public boolean upd(String u_name) throws SQLException,NumberFormatException{
			 try
			 {
			 Connection conn=Reg.Establish();
			 Statement st=conn.createStatement();
			 st = conn.createStatement(); 
			 ResultSet rs;
			 rs=st.executeQuery("select hno from after_login where udid='"+u_name+"'");
			 if(rs.next())
			 {
			 	hno=rs.getString("hno");
			 }
			  st.executeUpdate("update personal_details set age="+age+",phn_no="+phn_no+",dob='"+dob+"',gender='"+gender+"',fname='"+fname+"'  where udid='"+u_name+"'");
			  st.executeUpdate("update disabled_address set sno="+sno+",sname='"+sname+"',locality='"+locality+"',pincode="+pincode+"  where hno='"+hno+"'");
			  conn.close();
			  return true;
			 }
			 catch(Exception ex)
			 {
				 return false;
			 }
		 }
		 public boolean ucd(String u_name) throws SQLException,NumberFormatException{
			 try
			 {
			 Connection conn=Reg.Establish();
			 Statement st=conn.createStatement();
			 st = conn.createStatement(); 
			 ResultSet rs;
			 rs=st.executeQuery("select chno,cid from usertot where udid='"+u_name+"'");
			 if(rs.next())
			 {
			 	chno=rs.getString("chno");
			 	cid=rs.getString("cid");
			 }
			 st.executeUpdate("update caretaker_details set cage="+cage+",cphno="+cphno+",cgender='"+cgender+"',cname='"+cname+"'  where cid="+cid+"");
			 st.executeUpdate("update caretaker_address set sno="+cstno+",sname='"+cstreet+"',locality='"+cloc+"',pincode="+cpin+"  where chno='"+chno+"'");
			 conn.close();
			 return true;
			 }
			 catch(Exception ex)
			 {
				 return false;
			 }
		 }
}