package z2;

import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.litepal.LitePalApplication;
import org.litepal.exceptions.ParseConfigurationFileException;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import z2.qc0;

/* JADX INFO: loaded from: classes2.dex */
public class ub0 {
    private static ub0 OooO = null;
    public static final String OooO00o = "dbname";
    public static final String OooO0O0 = "version";
    public static final String OooO0OO = "list";
    public static final String OooO0Oo = "mapping";
    public static final String OooO0o = "storage";
    public static final String OooO0o0 = "cases";
    public static final String OooO0oO = "value";
    public static final String OooO0oo = "class";

    private InputStream OooO00o() throws IOException {
        AssetManager assets = LitePalApplication.OooO00o().getAssets();
        String[] list = assets.list("");
        if (list != null && list.length > 0) {
            for (String str : list) {
                if (qc0.OooO00o.OooO0o0.equalsIgnoreCase(str)) {
                    return assets.open(str, 3);
                }
            }
        }
        throw new ParseConfigurationFileException(ParseConfigurationFileException.CAN_NOT_FIND_LITEPAL_FILE);
    }

    public static sb0 OooO0O0() {
        if (OooO == null) {
            OooO = new ub0();
        }
        return OooO.OooO0OO();
    }

    private sb0 OooO0OO() {
        try {
            sb0 sb0Var = new sb0();
            XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
            xmlPullParserNewPullParser.setInput(OooO00o(), "UTF-8");
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                String name = xmlPullParserNewPullParser.getName();
                if (eventType == 2) {
                    if (OooO00o.equals(name)) {
                        sb0Var.OooO(xmlPullParserNewPullParser.getAttributeValue("", "value"));
                    } else if ("version".equals(name)) {
                        sb0Var.OooOO0O(Integer.parseInt(xmlPullParserNewPullParser.getAttributeValue("", "value")));
                    } else if (OooO0Oo.equals(name)) {
                        sb0Var.OooO00o(xmlPullParserNewPullParser.getAttributeValue("", OooO0oo));
                    } else if (OooO0o0.equals(name)) {
                        sb0Var.OooO0oO(xmlPullParserNewPullParser.getAttributeValue("", "value"));
                    } else if (OooO0o.equals(name)) {
                        sb0Var.OooOO0(xmlPullParserNewPullParser.getAttributeValue("", "value"));
                    }
                }
            }
            return sb0Var;
        } catch (IOException unused) {
            throw new ParseConfigurationFileException(ParseConfigurationFileException.IO_EXCEPTION);
        } catch (XmlPullParserException unused2) {
            throw new ParseConfigurationFileException(ParseConfigurationFileException.FILE_FORMAT_IS_NOT_CORRECT);
        }
    }

    private void OooO0Oo() {
        try {
            XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
            xMLReader.setContentHandler(new tb0());
            xMLReader.parse(new InputSource(OooO00o()));
        } catch (Resources.NotFoundException unused) {
            throw new ParseConfigurationFileException(ParseConfigurationFileException.CAN_NOT_FIND_LITEPAL_FILE);
        } catch (IOException unused2) {
            throw new ParseConfigurationFileException(ParseConfigurationFileException.IO_EXCEPTION);
        } catch (ParserConfigurationException unused3) {
            throw new ParseConfigurationFileException(ParseConfigurationFileException.PARSE_CONFIG_FAILED);
        } catch (SAXException unused4) {
            throw new ParseConfigurationFileException(ParseConfigurationFileException.FILE_FORMAT_IS_NOT_CORRECT);
        }
    }
}
