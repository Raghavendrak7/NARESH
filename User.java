package ConnTools;

import java.sql.SQLException;

public interface User {
	public boolean checkexist() throws SQLException;
	public boolean insertreg()throws SQLException;
	public boolean upd(String u_name) throws SQLException,NumberFormatException;
	public boolean ucd(String u_name) throws SQLException,NumberFormatException;
}