package org.apache.commons.io;

import com.anythink.expressad.exoplayer.b;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class Charsets {

    @Deprecated
    public static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");

    @Deprecated
    public static final Charset US_ASCII = Charset.forName(b.i);

    @Deprecated
    public static final Charset UTF_16 = Charset.forName(b.k);

    @Deprecated
    public static final Charset UTF_16BE = Charset.forName("UTF-16BE");

    @Deprecated
    public static final Charset UTF_16LE = Charset.forName("UTF-16LE");

    @Deprecated
    public static final Charset UTF_8 = Charset.forName("UTF-8");

    public static SortedMap<String, Charset> requiredCharsets() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        Charset charset = ISO_8859_1;
        treeMap.put(charset.name(), charset);
        Charset charset2 = US_ASCII;
        treeMap.put(charset2.name(), charset2);
        Charset charset3 = UTF_16;
        treeMap.put(charset3.name(), charset3);
        Charset charset4 = UTF_16BE;
        treeMap.put(charset4.name(), charset4);
        Charset charset5 = UTF_16LE;
        treeMap.put(charset5.name(), charset5);
        Charset charset6 = UTF_8;
        treeMap.put(charset6.name(), charset6);
        return Collections.unmodifiableSortedMap(treeMap);
    }

    public static Charset toCharset(String str) {
        return str == null ? Charset.defaultCharset() : Charset.forName(str);
    }

    public static Charset toCharset(Charset charset) {
        return charset == null ? Charset.defaultCharset() : charset;
    }
}
