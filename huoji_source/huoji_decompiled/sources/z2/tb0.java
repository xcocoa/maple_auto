package z2;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes2.dex */
public class tb0 extends DefaultHandler {
    private rb0 OooO00o;

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        rb0 rb0VarOooO0oo = rb0.OooO0oo();
        this.OooO00o = rb0VarOooO0oo;
        rb0VarOooO0oo.OooO0o0().clear();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        int i = 0;
        if (ub0.OooO00o.equalsIgnoreCase(str2)) {
            while (i < attributes.getLength()) {
                if ("value".equalsIgnoreCase(attributes.getLocalName(i))) {
                    this.OooO00o.OooOOO(attributes.getValue(i).trim());
                }
                i++;
            }
            return;
        }
        if ("version".equalsIgnoreCase(str2)) {
            while (i < attributes.getLength()) {
                if ("value".equalsIgnoreCase(attributes.getLocalName(i))) {
                    this.OooO00o.OooOOo0(Integer.parseInt(attributes.getValue(i).trim()));
                }
                i++;
            }
            return;
        }
        if (ub0.OooO0Oo.equalsIgnoreCase(str2)) {
            while (i < attributes.getLength()) {
                if (ub0.OooO0oo.equalsIgnoreCase(attributes.getLocalName(i))) {
                    this.OooO00o.OooO00o(attributes.getValue(i).trim());
                }
                i++;
            }
            return;
        }
        if (ub0.OooO0o0.equalsIgnoreCase(str2)) {
            while (i < attributes.getLength()) {
                if ("value".equalsIgnoreCase(attributes.getLocalName(i))) {
                    this.OooO00o.OooOO0o(attributes.getValue(i).trim());
                }
                i++;
            }
            return;
        }
        if (ub0.OooO0o.equalsIgnoreCase(str2)) {
            while (i < attributes.getLength()) {
                if ("value".equalsIgnoreCase(attributes.getLocalName(i))) {
                    this.OooO00o.OooOOOo(attributes.getValue(i).trim());
                }
                i++;
            }
        }
    }
}
