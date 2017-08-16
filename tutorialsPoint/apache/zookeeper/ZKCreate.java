package apache.zookeeper;

import java.io.IOException;

import org.apache.zookeeper.CreateMode;
import org.apache.zookeeper.KeeperException;
import org.apache.zookeeper.ZooDefs;
import org.apache.zookeeper.ZooKeeper;

public class ZKCreate {

	// crete static instance for zookeeper class.
	private static ZooKeeper zk;
	
	// create static instnace for ZooKeeperConnection class.
	private static ZooKeeperConnection conn;
	
	// method to create znode in zookeeper ensemble
	public static void create(String path, byte[] data) throws
	KeeperException, InterruptedException{
		zk.create(path, data, ZooDefs.Ids.OPEN_ACL_UNSAFE, CreateMode.PERSISTENT);
	}
	
	public static void main(String[] args) {
		//znode path
		String path = "/MeraPahlaZNode"; // Assign path to znode
		
		// data in byte array
		byte[] data = "My first zookeeper app".getBytes(); // declare data
		
		
		try {
			conn = new ZooKeeperConnection();
			zk = conn.connect("localhost");
			create(path, data); // create the data to the specified path
			conn.close();
			
		} catch (KeeperException | InterruptedException | IOException e) {
			e.printStackTrace();
		} 
	}
	
	
}
