package ConnTools;
import java.sql.SQLException;
import java.util.List;
public interface Project {
	public <T> List<Usr> search(T ele) throws SQLException,NumberFormatException;
}