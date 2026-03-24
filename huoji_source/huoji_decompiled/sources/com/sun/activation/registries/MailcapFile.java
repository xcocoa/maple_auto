package com.sun.activation.registries;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes2.dex */
public class MailcapFile {
    private static boolean addReverse;
    private Map type_hash = new HashMap();
    private Map fallback_hash = new HashMap();
    private Map native_commands = new HashMap();

    static {
        try {
            addReverse = Boolean.getBoolean("javax.activation.addreverse");
        } catch (Throwable unused) {
        }
    }

    public MailcapFile() {
        if (LogSupport.isLoggable()) {
            LogSupport.log("new MailcapFile: default");
        }
    }

    public MailcapFile(InputStream inputStream) throws IOException {
        if (LogSupport.isLoggable()) {
            LogSupport.log("new MailcapFile: InputStream");
        }
        parse(new BufferedReader(new InputStreamReader(inputStream, "iso-8859-1")));
    }

    public MailcapFile(String str) throws Throwable {
        FileReader fileReader;
        if (LogSupport.isLoggable()) {
            LogSupport.log("new MailcapFile: file ".concat(String.valueOf(str)));
        }
        FileReader fileReader2 = null;
        try {
            fileReader = new FileReader(str);
        } catch (Throwable th) {
            th = th;
        }
        try {
            parse(new BufferedReader(fileReader));
            try {
                fileReader.close();
            } catch (IOException unused) {
            }
        } catch (Throwable th2) {
            th = th2;
            fileReader2 = fileReader;
            if (fileReader2 != null) {
                try {
                    fileReader2.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    private Map mergeResults(Map map, Map map2) {
        HashMap map3 = new HashMap(map);
        for (String str : map2.keySet()) {
            List list = (List) map3.get(str);
            if (list == null) {
                map3.put(str, map2.get(str));
            } else {
                List list2 = (List) map2.get(str);
                ArrayList arrayList = new ArrayList(list);
                arrayList.addAll(list2);
                map3.put(str, arrayList);
            }
        }
        return map3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0061, code lost:
    
        parseLine(r1 + r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void parse(Reader reader) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(reader);
        while (true) {
            String strSubstring = null;
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return;
                }
                String strTrim = line.trim();
                try {
                    if (strTrim.charAt(0) != '#') {
                        if (strTrim.charAt(strTrim.length() - 1) == '\\') {
                            if (strSubstring != null) {
                                strSubstring = strSubstring + strTrim.substring(0, strTrim.length() - 1);
                            } else {
                                strSubstring = strTrim.substring(0, strTrim.length() - 1);
                            }
                        } else if (strSubstring != null) {
                            break;
                        } else {
                            parseLine(strTrim);
                        }
                    }
                } catch (MailcapParseException | StringIndexOutOfBoundsException unused) {
                }
            }
        }
    }

    public static void reportParseError(int i, int i2, int i3, int i4, String str) throws MailcapParseException {
        if (LogSupport.isLoggable()) {
            LogSupport.log("PARSE ERROR: Encountered a " + MailcapTokenizer.nameForToken(i4) + " token (" + str + ") while expecting a " + MailcapTokenizer.nameForToken(i) + ", a " + MailcapTokenizer.nameForToken(i2) + ", or a " + MailcapTokenizer.nameForToken(i3) + " token.");
        }
        throw new MailcapParseException("Encountered a " + MailcapTokenizer.nameForToken(i4) + " token (" + str + ") while expecting a " + MailcapTokenizer.nameForToken(i) + ", a " + MailcapTokenizer.nameForToken(i2) + ", or a " + MailcapTokenizer.nameForToken(i3) + " token.");
    }

    public static void reportParseError(int i, int i2, int i3, String str) throws MailcapParseException {
        throw new MailcapParseException("Encountered a " + MailcapTokenizer.nameForToken(i3) + " token (" + str + ") while expecting a " + MailcapTokenizer.nameForToken(i) + " or a " + MailcapTokenizer.nameForToken(i2) + " token.");
    }

    public static void reportParseError(int i, int i2, String str) throws MailcapParseException {
        throw new MailcapParseException("Encountered a " + MailcapTokenizer.nameForToken(i2) + " token (" + str + ") while expecting a " + MailcapTokenizer.nameForToken(i) + " token.");
    }

    public void appendToMailcap(String str) {
        if (LogSupport.isLoggable()) {
            LogSupport.log("appendToMailcap: ".concat(String.valueOf(str)));
        }
        try {
            parse(new StringReader(str));
        } catch (IOException unused) {
        }
    }

    public Map getMailcapFallbackList(String str) {
        Map map = (Map) this.fallback_hash.get(str);
        int iIndexOf = str.indexOf(47) + 1;
        if (str.substring(iIndexOf).equals(Marker.ANY_MARKER)) {
            return map;
        }
        Map map2 = (Map) this.fallback_hash.get(str.substring(0, iIndexOf) + Marker.ANY_MARKER);
        return map2 != null ? map != null ? mergeResults(map, map2) : map2 : map;
    }

    public Map getMailcapList(String str) {
        Map map = (Map) this.type_hash.get(str);
        int iIndexOf = str.indexOf(47) + 1;
        if (str.substring(iIndexOf).equals(Marker.ANY_MARKER)) {
            return map;
        }
        Map map2 = (Map) this.type_hash.get(str.substring(0, iIndexOf) + Marker.ANY_MARKER);
        return map2 != null ? map != null ? mergeResults(map, map2) : map2 : map;
    }

    public String[] getMimeTypes() {
        HashSet hashSet = new HashSet(this.type_hash.keySet());
        hashSet.addAll(this.fallback_hash.keySet());
        hashSet.addAll(this.native_commands.keySet());
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    public String[] getNativeCommands(String str) {
        List list = (List) this.native_commands.get(str.toLowerCase(Locale.ENGLISH));
        if (list != null) {
            return (String[]) list.toArray(new String[list.size()]);
        }
        return null;
    }

    public void parseLine(String str) throws MailcapParseException, IOException {
        String lowerCase;
        int iNextToken;
        MailcapTokenizer mailcapTokenizer = new MailcapTokenizer(str);
        mailcapTokenizer.setIsAutoquoting(false);
        if (LogSupport.isLoggable()) {
            LogSupport.log("parse: ".concat(String.valueOf(str)));
        }
        int iNextToken2 = mailcapTokenizer.nextToken();
        if (iNextToken2 != 2) {
            reportParseError(2, iNextToken2, mailcapTokenizer.getCurrentTokenValue());
        }
        String currentTokenValue = mailcapTokenizer.getCurrentTokenValue();
        Locale locale = Locale.ENGLISH;
        String lowerCase2 = currentTokenValue.toLowerCase(locale);
        int iNextToken3 = mailcapTokenizer.nextToken();
        if (iNextToken3 != 47 && iNextToken3 != 59) {
            reportParseError(47, 59, iNextToken3, mailcapTokenizer.getCurrentTokenValue());
        }
        if (iNextToken3 == 47) {
            int iNextToken4 = mailcapTokenizer.nextToken();
            if (iNextToken4 != 2) {
                reportParseError(2, iNextToken4, mailcapTokenizer.getCurrentTokenValue());
            }
            lowerCase = mailcapTokenizer.getCurrentTokenValue().toLowerCase(locale);
            iNextToken3 = mailcapTokenizer.nextToken();
        } else {
            lowerCase = Marker.ANY_MARKER;
        }
        String str2 = lowerCase2 + "/" + lowerCase;
        if (LogSupport.isLoggable()) {
            LogSupport.log("  Type: ".concat(String.valueOf(str2)));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (iNextToken3 != 59) {
            reportParseError(59, iNextToken3, mailcapTokenizer.getCurrentTokenValue());
        }
        mailcapTokenizer.setIsAutoquoting(true);
        int iNextToken5 = mailcapTokenizer.nextToken();
        mailcapTokenizer.setIsAutoquoting(false);
        if (iNextToken5 != 2 && iNextToken5 != 59) {
            reportParseError(2, 59, iNextToken5, mailcapTokenizer.getCurrentTokenValue());
        }
        if (iNextToken5 == 2) {
            List list = (List) this.native_commands.get(str2);
            if (list == null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(str);
                this.native_commands.put(str2, arrayList);
            } else {
                list.add(str);
            }
        }
        if (iNextToken5 != 59) {
            iNextToken5 = mailcapTokenizer.nextToken();
        }
        if (iNextToken5 != 59) {
            if (iNextToken5 != 5) {
                reportParseError(5, 59, iNextToken5, mailcapTokenizer.getCurrentTokenValue());
                return;
            }
            return;
        }
        boolean z = false;
        do {
            int iNextToken6 = mailcapTokenizer.nextToken();
            if (iNextToken6 != 2) {
                reportParseError(2, iNextToken6, mailcapTokenizer.getCurrentTokenValue());
            }
            String lowerCase3 = mailcapTokenizer.getCurrentTokenValue().toLowerCase(Locale.ENGLISH);
            iNextToken = mailcapTokenizer.nextToken();
            if (iNextToken != 61 && iNextToken != 59 && iNextToken != 5) {
                reportParseError(61, 59, 5, iNextToken, mailcapTokenizer.getCurrentTokenValue());
            }
            if (iNextToken == 61) {
                mailcapTokenizer.setIsAutoquoting(true);
                int iNextToken7 = mailcapTokenizer.nextToken();
                mailcapTokenizer.setIsAutoquoting(false);
                if (iNextToken7 != 2) {
                    reportParseError(2, iNextToken7, mailcapTokenizer.getCurrentTokenValue());
                }
                String currentTokenValue2 = mailcapTokenizer.getCurrentTokenValue();
                if (lowerCase3.startsWith("x-java-")) {
                    String strSubstring = lowerCase3.substring(7);
                    if (strSubstring.equals("fallback-entry") && currentTokenValue2.equalsIgnoreCase("true")) {
                        z = true;
                    } else {
                        if (LogSupport.isLoggable()) {
                            LogSupport.log("    Command: " + strSubstring + ", Class: " + currentTokenValue2);
                        }
                        List arrayList2 = (List) linkedHashMap.get(strSubstring);
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                            linkedHashMap.put(strSubstring, arrayList2);
                        }
                        if (addReverse) {
                            arrayList2.add(0, currentTokenValue2);
                        } else {
                            arrayList2.add(currentTokenValue2);
                        }
                    }
                }
                iNextToken = mailcapTokenizer.nextToken();
            }
        } while (iNextToken == 59);
        Map map = z ? this.fallback_hash : this.type_hash;
        Map map2 = (Map) map.get(str2);
        if (map2 == null) {
            map.put(str2, linkedHashMap);
            return;
        }
        if (LogSupport.isLoggable()) {
            LogSupport.log("Merging commands for type ".concat(String.valueOf(str2)));
        }
        for (String str3 : map2.keySet()) {
            List list2 = (List) map2.get(str3);
            List<String> list3 = (List) linkedHashMap.get(str3);
            if (list3 != null) {
                for (String str4 : list3) {
                    if (!list2.contains(str4)) {
                        if (addReverse) {
                            list2.add(0, str4);
                        } else {
                            list2.add(str4);
                        }
                    }
                }
            }
        }
        for (String str5 : linkedHashMap.keySet()) {
            if (!map2.containsKey(str5)) {
                map2.put(str5, (List) linkedHashMap.get(str5));
            }
        }
    }
}
