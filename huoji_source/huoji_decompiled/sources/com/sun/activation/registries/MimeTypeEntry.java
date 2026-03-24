package com.sun.activation.registries;

/* JADX INFO: loaded from: classes2.dex */
public class MimeTypeEntry {
    private String extension;
    private String type;

    public MimeTypeEntry(String str, String str2) {
        this.type = str;
        this.extension = str2;
    }

    public String getFileExtension() {
        return this.extension;
    }

    public String getMIMEType() {
        return this.type;
    }

    public String toString() {
        return "MIMETypeEntry: " + this.type + ", " + this.extension;
    }
}
