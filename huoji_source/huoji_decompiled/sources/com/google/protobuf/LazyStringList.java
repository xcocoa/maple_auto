package com.google.protobuf;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface LazyStringList extends List<String> {
    void add(ByteString byteString);

    ByteString getByteString(int i);

    List<?> getUnderlyingElements();
}
