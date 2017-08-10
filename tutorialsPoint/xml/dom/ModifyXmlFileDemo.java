package xml.dom;

import java.io.File;
import java.io.IOException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class ModifyXmlFileDemo {

	public static void main(String[] args) {
		
		try {
			
		File inputFile = new File("/home/quanta/git/learnNPractice/tutorialsPoint/xml/files/modifyInput.xml");
		DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
		
		DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
		Document doc = docBuilder.parse(inputFile);
		
		Node cars = doc.getFirstChild();
		Node supercar = doc.getElementsByTagName("supercars").item(0);
		
		// update supercar attribute
		NamedNodeMap attr = supercar.getAttributes();
		Node nodeAttr = attr.getNamedItem("company");
		nodeAttr.setTextContent("Lamborigini");
		
		// loop the supercar child node
		NodeList list = supercar.getChildNodes();
		
		for (int temp = 0;temp < list.getLength();temp++) {
			Node node = list.item(temp);
			if(node.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) node;
				if("carname".equals(eElement.getNodeName())){
					if("Ferrari 101".equals(eElement.getTextContent())) {
						eElement.setTextContent("Lamborigini 001");
					}
					if("Ferrari 202".equals(eElement.getTextContent())) {
						eElement.setTextContent("Lamborigini 002");
					}
				}
			}
		}
		
		NodeList childNodes = cars.getChildNodes();
		
		for (int count = 0;count < childNodes.getLength();count++) {
			Node node = childNodes.item(count);
			
			if("luxurycars".equals(node.getNodeName())) {
				cars.removeChild(node);
			}
		}
		
		// write the content on console
		TransformerFactory transformerFactory = TransformerFactory.newInstance();
		Transformer transformer = transformerFactory.newTransformer();
		DOMSource source = new DOMSource(doc);
		System.out.println("--------------- Modified File-------------");
		
		StreamResult consoleResult = new StreamResult(System.out);
		transformer.transform(source, consoleResult);
		
		} catch (ParserConfigurationException | SAXException | IOException | TransformerConfigurationException e) {
			e.printStackTrace();
		} catch (TransformerException e) {
			e.printStackTrace();
		}
		
	}

}
