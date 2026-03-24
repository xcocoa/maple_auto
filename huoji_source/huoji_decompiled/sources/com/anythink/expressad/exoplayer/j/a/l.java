package com.anythink.expressad.exoplayer.j.a;

import androidx.annotation.Nullable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class l implements i {
    public static final l b = new l(Collections.emptyMap());
    private static final int c = 10485760;
    private int d;
    private final Map<String, byte[]> e;

    private l(Map<String, byte[]> map) {
        this.e = Collections.unmodifiableMap(map);
    }

    public static l a(DataInputStream dataInputStream) throws IOException {
        int i = dataInputStream.readInt();
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < i; i2++) {
            String utf = dataInputStream.readUTF();
            int i3 = dataInputStream.readInt();
            if (i3 < 0 || i3 > 10485760) {
                throw new IOException("Invalid value size: ".concat(String.valueOf(i3)));
            }
            byte[] bArr = new byte[i3];
            dataInputStream.readFully(bArr);
            map.put(utf, bArr);
        }
        return new l(map);
    }

    private static Map<String, byte[]> a(Map<String, byte[]> map, k kVar) {
        HashMap map2 = new HashMap(map);
        a((HashMap<String, byte[]>) map2, kVar.a());
        a((HashMap<String, byte[]>) map2, kVar.b());
        return map2;
    }

    private static void a(HashMap<String, byte[]> map, List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            map.remove(list.get(i));
        }
    }

    private static void a(HashMap<String, byte[]> map, Map<String, Object> map2) {
        byte[] bytes;
        for (String str : map2.keySet()) {
            Object obj = map2.get(str);
            if (obj instanceof Long) {
                bytes = ByteBuffer.allocate(8).putLong(((Long) obj).longValue()).array();
            } else if (obj instanceof String) {
                bytes = ((String) obj).getBytes(Charset.forName("UTF-8"));
            } else {
                if (!(obj instanceof byte[])) {
                    throw new IllegalArgumentException();
                }
                bytes = (byte[]) obj;
            }
            if (bytes.length > 10485760) {
                throw new IllegalArgumentException(String.format("The size of %s (%d) is greater than maximum allowed: %d", str, Integer.valueOf(bytes.length), 10485760));
            }
            map.put(str, bytes);
        }
    }

    private boolean a(Map<String, byte[]> map) {
        if (this.e.size() != map.size()) {
            return false;
        }
        for (Map.Entry<String, byte[]> entry : this.e.entrySet()) {
            if (!Arrays.equals(entry.getValue(), map.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    private static byte[] a(Object obj) {
        if (obj instanceof Long) {
            return ByteBuffer.allocate(8).putLong(((Long) obj).longValue()).array();
        }
        if (obj instanceof String) {
            return ((String) obj).getBytes(Charset.forName("UTF-8"));
        }
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.anythink.expressad.exoplayer.j.a.i
    public final long a(String str) {
        if (this.e.containsKey(str)) {
            return ByteBuffer.wrap(this.e.get(str)).getLong();
        }
        return -1L;
    }

    public final l a(k kVar) {
        HashMap map = new HashMap(this.e);
        a((HashMap<String, byte[]>) map, kVar.a());
        a((HashMap<String, byte[]>) map, kVar.b());
        return a((Map<String, byte[]>) map) ? this : new l(map);
    }

    @Override // com.anythink.expressad.exoplayer.j.a.i
    public final String a(String str, String str2) {
        return this.e.containsKey(str) ? new String(this.e.get(str), Charset.forName("UTF-8")) : str2;
    }

    public final void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.e.size());
        for (Map.Entry<String, byte[]> entry : this.e.entrySet()) {
            dataOutputStream.writeUTF(entry.getKey());
            byte[] value = entry.getValue();
            dataOutputStream.writeInt(value.length);
            dataOutputStream.write(value);
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.a.i
    public final byte[] a(String str, byte[] bArr) {
        if (!this.e.containsKey(str)) {
            return bArr;
        }
        byte[] bArr2 = this.e.get(str);
        return Arrays.copyOf(bArr2, bArr2.length);
    }

    @Override // com.anythink.expressad.exoplayer.j.a.i
    public final boolean b(String str) {
        return this.e.containsKey(str);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        return a(((l) obj).e);
    }

    public final int hashCode() {
        if (this.d == 0) {
            int iHashCode = 0;
            for (Map.Entry<String, byte[]> entry : this.e.entrySet()) {
                iHashCode += Arrays.hashCode(entry.getValue()) ^ entry.getKey().hashCode();
            }
            this.d = iHashCode;
        }
        return this.d;
    }
}
