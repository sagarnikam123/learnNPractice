package apache.zookeeper;

import org.apache.zookeeper.KeeperException;
import org.apache.zookeeper.ZooKeeper;

public class ZKDelete {

	// delete child znodes
	// delete /MeraPahlaZNode/myFirstSubNode
	// delete /MeraPahlaZNode/mySecondSubNode

	private static ZooKeeper zk;
	private static ZooKeeperConnection conn;

	// method to check existence of znode and its status, if znode is available.
	public static void delete(String path) throws KeeperException, InterruptedException {
		zk.delete(path, zk.exists(path, true).getVersion());
	}

	public static void main(String[] args) throws InterruptedException, KeeperException {
		String path = "/MeraPahlaZNode"; // Assign path to the znode

		try {
			conn = new ZooKeeperConnection();
			zk = conn.connect("localhost");
			delete(path);

		} catch (Exception e) {
			System.out.println(e.getMessage()); // catches error messages
		}

	}
}
