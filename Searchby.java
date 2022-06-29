package ConnTools;
import java.sql.SQLException;
import java.util.List;
public abstract class Searchby implements Project
{
	public <T> List<Usr> search(T ele) throws SQLException,NumberFormatException
	{return null;}
}