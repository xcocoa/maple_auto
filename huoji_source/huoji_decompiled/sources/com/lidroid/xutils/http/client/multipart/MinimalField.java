package com.lidroid.xutils.http.client.multipart;

/* JADX INFO: loaded from: classes2.dex */
public class MinimalField {
    private final String name;
    private final String value;

    public MinimalField(String str, String str2) {
        this.name = str;
        this.value = str2;
    }

    public String getBody() {
        return this.value;
    }

    public String getName() {
        return this.name;
    }

    public String toString() {
        return this.name + ": " + this.value;
    }
}
