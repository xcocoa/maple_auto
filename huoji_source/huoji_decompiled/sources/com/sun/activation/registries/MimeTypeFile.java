package com.sun.activation.registries;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.util.Hashtable;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes2.dex */
public class MimeTypeFile {
    private String fname;
    private Hashtable type_hash;

    public MimeTypeFile() {
        this.fname = null;
        this.type_hash = new Hashtable();
    }

    public MimeTypeFile(InputStream inputStream) throws IOException {
        this.fname = null;
        this.type_hash = new Hashtable();
        parse(new BufferedReader(new InputStreamReader(inputStream, "iso-8859-1")));
    }

    public MimeTypeFile(String str) throws IOException {
        this.fname = null;
        this.type_hash = new Hashtable();
        this.fname = str;
        FileReader fileReader = new FileReader(new File(this.fname));
        try {
            parse(new BufferedReader(fileReader));
        } finally {
            try {
                fileReader.close();
            } catch (IOException unused) {
            }
        }
    }

    private void parse(BufferedReader bufferedReader) throws IOException {
        String strSubstring;
        String line;
        loop0: while (true) {
            strSubstring = null;
            while (true) {
                line = bufferedReader.readLine();
                if (line == null) {
                    break loop0;
                }
                if (strSubstring != null) {
                    line = strSubstring + line;
                }
                int length = line.length();
                if (line.length() > 0) {
                    int i = length - 1;
                    if (line.charAt(i) == '\\') {
                        strSubstring = line.substring(0, i);
                    }
                }
            }
            parseEntry(line);
        }
        if (strSubstring != null) {
            parseEntry(strSubstring);
        }
    }

    private void parseEntry(String str) {
        String strTrim = str.trim();
        if (strTrim.length() == 0 || strTrim.charAt(0) == '#') {
            return;
        }
        if (strTrim.indexOf(61) <= 0) {
            StringTokenizer stringTokenizer = new StringTokenizer(strTrim);
            if (stringTokenizer.countTokens() == 0) {
                return;
            }
            String strNextToken = stringTokenizer.nextToken();
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken2 = stringTokenizer.nextToken();
                MimeTypeEntry mimeTypeEntry = new MimeTypeEntry(strNextToken, strNextToken2);
                this.type_hash.put(strNextToken2, mimeTypeEntry);
                if (LogSupport.isLoggable()) {
                    LogSupport.log("Added: " + mimeTypeEntry.toString());
                }
            }
            return;
        }
        LineTokenizer lineTokenizer = new LineTokenizer(strTrim);
        String str2 = null;
        while (lineTokenizer.hasMoreTokens()) {
            String strNextToken3 = lineTokenizer.nextToken();
            String strNextToken4 = (lineTokenizer.hasMoreTokens() && lineTokenizer.nextToken().equals("=") && lineTokenizer.hasMoreTokens()) ? lineTokenizer.nextToken() : null;
            if (strNextToken4 == null) {
                if (LogSupport.isLoggable()) {
                    LogSupport.log("Bad .mime.types entry: ".concat(String.valueOf(strTrim)));
                    return;
                }
                return;
            } else if (strNextToken3.equals("type")) {
                str2 = strNextToken4;
            } else if (strNextToken3.equals("exts")) {
                StringTokenizer stringTokenizer2 = new StringTokenizer(strNextToken4, ",");
                while (stringTokenizer2.hasMoreTokens()) {
                    String strNextToken5 = stringTokenizer2.nextToken();
                    MimeTypeEntry mimeTypeEntry2 = new MimeTypeEntry(str2, strNextToken5);
                    this.type_hash.put(strNextToken5, mimeTypeEntry2);
                    if (LogSupport.isLoggable()) {
                        LogSupport.log("Added: " + mimeTypeEntry2.toString());
                    }
                }
            }
        }
    }

    public void appendToRegistry(String str) {
        try {
            parse(new BufferedReader(new StringReader(str)));
        } catch (IOException unused) {
        }
    }

    public String getMIMETypeString(String str) {
        MimeTypeEntry mimeTypeEntry = getMimeTypeEntry(str);
        if (mimeTypeEntry != null) {
            return mimeTypeEntry.getMIMEType();
        }
        return null;
    }

    public MimeTypeEntry getMimeTypeEntry(String str) {
        return (MimeTypeEntry) this.type_hash.get(str);
    }
}
