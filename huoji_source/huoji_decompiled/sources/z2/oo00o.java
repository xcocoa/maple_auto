package z2;

import android.util.Xml;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class oo00o {
    private Element OooO00o;

    public oo00o(InputStream inputStream) throws SAXException {
        try {
            this.OooO00o = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputStream).getDocumentElement();
        } catch (IOException e) {
            throw new SAXException(e);
        } catch (ParserConfigurationException unused) {
        }
    }

    public oo00o(String str) throws SAXException {
        this(str.getBytes());
    }

    public oo00o(Element element) {
        this.OooO00o = element;
    }

    public oo00o(byte[] bArr) throws SAXException {
        this(new ByteArrayInputStream(bArr));
    }

    private String OooO(Element element, int i) {
        String str;
        try {
            XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
            StringWriter stringWriter = new StringWriter();
            xmlSerializerNewSerializer.setOutput(stringWriter);
            xmlSerializerNewSerializer.startDocument("utf-8", null);
            if (i > 0) {
                char[] cArr = new char[i];
                Arrays.fill(cArr, ' ');
                str = new String(cArr);
            } else {
                str = null;
            }
            OooOO0(this.OooO00o, xmlSerializerNewSerializer, 0, str);
            xmlSerializerNewSerializer.endDocument();
            return stringWriter.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static oo00o OooO0o(Node node, String str, String str2, String str3) {
        if (node.getNodeType() != 1) {
            return null;
        }
        Element element = (Element) node;
        if (str != null && !str.equals(element.getTagName())) {
            return null;
        }
        if (str2 != null && !element.hasAttribute(str2)) {
            return null;
        }
        if (str3 == null || str3.equals(element.getAttribute(str2))) {
            return new oo00o(element);
        }
        return null;
    }

    private static List<oo00o> OooO0oO(NodeList nodeList, String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < nodeList.getLength(); i++) {
            oo00o oo00oVarOooO0o = OooO0o(nodeList.item(i), str, str2, str3);
            if (oo00oVarOooO0o != null) {
                arrayList.add(oo00oVarOooO0o);
            }
        }
        return arrayList;
    }

    private void OooOO0(Element element, XmlSerializer xmlSerializer, int i, String str) throws Exception {
        String tagName = element.getTagName();
        OooOOoo(xmlSerializer, i, str);
        xmlSerializer.startTag("", tagName);
        if (element.hasAttributes()) {
            NamedNodeMap attributes = element.getAttributes();
            for (int i2 = 0; i2 < attributes.getLength(); i2++) {
                Attr attr = (Attr) attributes.item(i2);
                xmlSerializer.attribute("", attr.getName(), attr.getValue());
            }
        }
        if (element.hasChildNodes()) {
            NodeList childNodes = element.getChildNodes();
            int i3 = 0;
            for (int i4 = 0; i4 < childNodes.getLength(); i4++) {
                Node nodeItem = childNodes.item(i4);
                short nodeType = nodeItem.getNodeType();
                if (nodeType == 1) {
                    OooOO0((Element) nodeItem, xmlSerializer, i + 1, str);
                    i3++;
                } else if (nodeType == 3) {
                    xmlSerializer.text(OooOOo0(nodeItem));
                } else if (nodeType == 4) {
                    xmlSerializer.cdsect(OooOOo0(nodeItem));
                }
            }
            if (i3 > 0) {
                OooOOoo(xmlSerializer, i, str);
            }
        }
        xmlSerializer.endTag("", tagName);
    }

    private String OooOOo0(Node node) {
        String nodeValue;
        short nodeType = node.getNodeType();
        if (nodeType != 3) {
            nodeValue = nodeType != 4 ? null : node.getNodeValue();
        } else {
            nodeValue = node.getNodeValue();
            if (nodeValue != null) {
                nodeValue = nodeValue.trim();
            }
        }
        return nodeValue == null ? "" : nodeValue;
    }

    private void OooOOoo(XmlSerializer xmlSerializer, int i, String str) throws Exception {
        if (str != null) {
            xmlSerializer.text("\n");
            for (int i2 = 0; i2 < i; i2++) {
                xmlSerializer.text(str);
            }
        }
    }

    public String OooO00o(String str) {
        return this.OooO00o.getAttribute(str);
    }

    public oo00o OooO0O0(String str) {
        return OooO0OO(str, null, null);
    }

    public oo00o OooO0OO(String str, String str2, String str3) {
        List<oo00o> listOooO0o0 = OooO0o0(str, str2, str3);
        if (listOooO0o0.size() == 0) {
            return null;
        }
        return listOooO0o0.get(0);
    }

    public List<oo00o> OooO0Oo(String str) {
        return OooO0o0(str, null, null);
    }

    public List<oo00o> OooO0o0(String str, String str2, String str3) {
        return OooO0oO(this.OooO00o.getChildNodes(), str, str2, str3);
    }

    public Element OooO0oo() {
        return this.OooO00o;
    }

    public oo00o OooOO0O(String str) {
        NodeList elementsByTagName = this.OooO00o.getElementsByTagName(str);
        if (elementsByTagName == null || elementsByTagName.getLength() <= 0) {
            return null;
        }
        return new oo00o((Element) elementsByTagName.item(0));
    }

    public oo00o OooOO0o(String str, String str2, String str3) {
        List<oo00o> listOooOOO = OooOOO(str, str2, str3);
        if (listOooOOO.size() == 0) {
            return null;
        }
        return listOooOOO.get(0);
    }

    public List<oo00o> OooOOO(String str, String str2, String str3) {
        return OooO0oO(this.OooO00o.getElementsByTagName(str), null, str2, str3);
    }

    public List<oo00o> OooOOO0(String str) {
        return OooOOO(str, null, null);
    }

    public String OooOOOO() {
        NodeList childNodes = this.OooO00o.getChildNodes();
        if (childNodes.getLength() == 1) {
            return childNodes.item(0).getNodeValue();
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < childNodes.getLength(); i++) {
            sb.append(OooOOo0(childNodes.item(i)));
        }
        return sb.toString();
    }

    public String OooOOOo(String str) {
        oo00o oo00oVarOooO0O0 = OooO0O0(str);
        if (oo00oVarOooO0O0 == null) {
            return null;
        }
        return oo00oVarOooO0O0.OooOOOO();
    }

    public String OooOOo(int i) {
        return OooO(this.OooO00o, i);
    }

    public String toString() {
        return OooOOo(0);
    }
}
