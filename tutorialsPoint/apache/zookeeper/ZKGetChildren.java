package apache.zookeeper;

import java.util.List;

import org.apache.zookeeper.KeeperException;
import org.apache.zookeeper.ZooKeeper;
import org.apache.zookeeper.data.Stat;

public class ZKGetChildren {

	// create 2 sub-ZNodes
	// create /MeraPahlaZNode/myFirstSubNode Hi1
	// create /MeraPahlaZNode/mySecondSubNode Hi2
	
	private static ZooKeeper zk;
	private static ZooKeeperConnection conn;
	
	// Method to check existence of znode and its status,if znode is available.
	public static Stat znode_exists(String path) throws KeeperException, InterruptedException{
		return zk.exists(path, true);
	}
	
	public static void main(String[] args) throws InterruptedException, KeeperException{
		String path = "/MeraPahlaZNode";
		
		try {
			conn = new ZooKeeperConnection();
			zk = conn.connect("localhost");
			Stat stat = znode_exists(path);
			
			if(stat != null) {
				//"getChildren" metho- get all the children of znode. It has two args, path & watch
				List<String> children = zk.getChildren(path, false);
				for(int i =0;i < children.size();i++) {
					System.out.println(children.get(i)); // Print children's
				}
			}else {
				System.out.println("Node does not exists");
			}
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
