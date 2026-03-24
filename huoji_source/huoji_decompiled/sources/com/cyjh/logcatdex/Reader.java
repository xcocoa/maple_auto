package com.cyjh.logcatdex;

import java.util.List;

/* JADX INFO: loaded from: assets/AppReboot.dex */
public interface Reader {

    public interface UpdateHandler {
        boolean isCancelled();

        void update(int i, List<String> list);
    }

    void read(String str, UpdateHandler updateHandler);
}
