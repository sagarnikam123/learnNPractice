package xml.dom;

import java.io.File;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class QueryXmlFileDemo {

	public static void main(String[] args) {

		try {
		File inputFile = new File("/home/quanta/git/learnNPractice/tutorialsPoint/xml/files/queryInput.xml");

		DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder dbBuilder = dbFactory.newDocumentBuilder();
		Document doc = dbBuilder.parse(inputFile);
		doc.getDocumentElement().normalize();

		System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
		NodeList nList = doc.getElementsByTagName("supercars");
		System.out.println("----------------------------");

		for(int temp = 0; temp < nList.getLength();temp++) {

			Node nNode = nList.item(temp);
			System.out.println("\nCurrent Element :");
			System.out.println(nNode.getNodeName());

			if(nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				System.out.println("company : " + eElement.getAttribute("company"));
				NodeList carNameList = eElement.getElementsByTagName("carname");

				for(int count = 0;count < carNameList.getLength();count ++) {
					Node node1 = carNameList.item(count);
					if(node1.getNodeType() == Node.ELEMENT_NODE) {
						Element car = (Element) node1;
						System.out.println("car name : " +  car.getTextContent());
						System.out.println("car type : " + car.getAttribute("type"));
					}
				}
			}
		}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
