package org.apache.commons.io.input;

/* JADX INFO: loaded from: classes2.dex */
public interface TailerListener {
    void fileNotFound();

    void fileRotated();

    void handle(Exception exc);

    void handle(String str);

    void init(Tailer tailer);
}
