package ConnTools;
import java.util.Comparator;
public class Sl {
	public String udid,fname,gender,dob,phn_no,tod,cid,cname;
	public int age;
	public Sortname sn=new Sortname();
	public Sortage sa=new Sortage();
	public String toString() {
		return this.fname+" "+this.age+" "+this.gender+" "+this.udid+" "+this.dob+" "+this.phn_no
				+" "+this.tod+" "+this.cid+" "+this.cname;
	}
	public class Sortname implements Comparator<Sl>{
		public int compare(Sl a1,Sl a2) {
			return a1.fname.compareTo(a2.fname);
		}
	}
	public class Sortage implements Comparator<Sl>{
		public int compare(Sl a1,Sl a2) {
			return a1.age-a2.age;
		}
	}
}
