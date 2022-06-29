package ConnTools;
import java.util.*;
import java.sql.*;
public class Searching extends Searchby{
	public <T> List<Usr> search(T ele) throws SQLException,NumberFormatException{
		String str=(String)ele;
		int f=0;
		for (char ch : str.toCharArray())
		{
	        if(!((int)ch>=48 && (int)ch<=57))
	        {
	        	f=1;
	        	break;
	        }
	    }
		if(f==1) {
			return this.searchbyfname(str);
		}
		else {
			return this.searchbyphno(str);
		}
	}
	public <T> List<Sl> searchall() throws SQLException,NumberFormatException{
		List<Sl> result = new ArrayList<>();
		try {
			Connection conn = Reg.Establish();
			if(conn!=null)
			{
				Statement st=conn.createStatement();
				ResultSet rs;
				rs=st.executeQuery("select * from usertot");
				while(rs.next()) {
					Sl f=new Sl();
					f.udid=rs.getString("udid");
					f.cid=String.valueOf(rs.getInt("cid"));
					f.fname=rs.getString("fname");
					f.age=rs.getInt("age");
					f.gender=rs.getString("gender");
					f.dob=rs.getString("dob");
					f.phn_no=rs.getString("phn_no");
					f.tod=rs.getString("disablity");
					f.cname=rs.getString("cname");
					result.add(f);
				}
				if(Reg.closeConnection(conn))
					System.out.println("Connection Closed");
			}
			else
			{
				System.out.println("Connection not Established");
			}
		}
		catch(SQLException e) {
			System.out.println(e);
		}
		return result;
	}
	public List<Usr> searchbyfname(String str) throws SQLException{
		List<Usr> result = new ArrayList<>();
		try {
			Connection conn = Reg.Establish();
			if(conn!=null)
			{
				Statement st=conn.createStatement();
				ResultSet rs;
				rs=st.executeQuery("select * from usertot where fname like '%"+str+"%'");
				while(rs.next()) {
					Usr f=new Usr();
					f.udid=rs.getString("udid");
					f.cid=String.valueOf(rs.getInt("cid"));
					f.fname=rs.getString("fname");
					f.age=String.valueOf(rs.getInt("age"));
					f.dob=rs.getString("dob");
					f.phn_no=rs.getString("phn_no");
					f.tod=rs.getString("disablity");
					f.hno=rs.getString("hno");
					f.sname=rs.getString("sname");
					f.sno=String.valueOf(rs.getInt("sno"));
					f.locality=rs.getString("locality");
					f.pincode=String.valueOf(rs.getInt("pincode"));
					f.cname=rs.getString("cname");
					f.cage=rs.getString("cage");
					f.cphno=rs.getString("cphno");
					result.add(f);
				}
				if(Reg.closeConnection(conn))
					System.out.println("Connection Closed");
			}
			else
			{
				System.out.println("Connection not Established");
			}
		}
		catch(SQLException e) {
			System.out.println(e);
		}
		return result;
	}
	public List<Usr> searchbyphno(String str) throws SQLException{
		List<Usr> result=new ArrayList<>();
		try 
		{
			Connection conn = Reg.Establish();
			if(conn!=null)
			{
				Statement st=conn.createStatement();
				ResultSet rs;
			    rs=st.executeQuery("select * from usertot where phn_no like '%"+str+"%'");
			    while(rs.next()) 
			    {
			    	Usr n=new Usr();
					n.udid=rs.getString("udid");
					n.cid=String.valueOf(rs.getInt("cid"));
					n.fname=rs.getString("fname");
					n.age=String.valueOf(rs.getInt("age"));
					n.dob=rs.getString("dob");
					n.phn_no=rs.getString("phn_no");
					n.tod=rs.getString("disablity");
					n.hno=rs.getString("hno");
					n.sname=rs.getString("sname");
					n.sno=String.valueOf(rs.getInt("sno"));
					n.locality=rs.getString("locality");
					n.pincode=String.valueOf(rs.getInt("pincode"));
					n.cname=rs.getString("cname");
					n.cage=rs.getString("cage");
					n.cphno=rs.getString("cphno");
					result.add(n);
				}
				if(Reg.closeConnection(conn))
					System.out.println("Connection Closed");
			}
			else
			{
				System.out.println("Connection not Established");
			}
		}
		catch(NumberFormatException e) {
			System.out.println(e);
		}
		catch(SQLException e) {
			System.out.println(e);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return result;
	}
}
