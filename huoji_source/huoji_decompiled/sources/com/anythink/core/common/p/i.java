package com.anythink.core.common.p;

import com.anythink.core.common.f.av;
import com.anythink.core.common.f.q;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class i {
    private List<av> a;

    public i(List<av> list) {
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        if (list != null) {
            arrayList.addAll(list);
        }
    }

    private static void a(int i, List<av> list) {
        if (list != null && i < list.size()) {
            while (i < list.size()) {
                av avVar = list.get(i);
                if (avVar != null) {
                    avVar.C(i);
                }
                i++;
            }
        }
    }

    private void a(av avVar, int i, av avVar2) {
        q qVarM;
        q qVarM2;
        if (avVar.k() && (qVarM2 = avVar.M()) != null) {
            qVarM2.q = avVar2 != null ? com.anythink.core.common.o.h.a(avVar2) : com.anythink.core.common.o.h.a(avVar);
        }
        if (i > 0) {
            av avVar3 = this.a.get(i - 1);
            if (!avVar3.k() || (qVarM = avVar3.M()) == null) {
                return;
            }
            qVarM.q = com.anythink.core.common.o.h.a(avVar);
        }
    }

    public final synchronized List<av> a() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        arrayList.addAll(this.a);
        return arrayList;
    }

    public final synchronized void a(av avVar) {
        List<av> list = this.a;
        if (list != null) {
            if (list.size() == 0) {
                avVar.C(0);
                this.a.add(avVar);
                a(avVar, 0, null);
                return;
            }
            for (int i = 0; i < this.a.size(); i++) {
                av avVar2 = this.a.get(i);
                if (com.anythink.core.common.o.h.a(avVar) > com.anythink.core.common.o.h.a(avVar2)) {
                    avVar.C(i);
                    this.a.add(i, avVar);
                    a(avVar, i, avVar2);
                    int i2 = i + 1;
                    List<av> list2 = this.a;
                    if (list2 != null && i2 < list2.size()) {
                        while (i2 < list2.size()) {
                            av avVar3 = list2.get(i2);
                            if (avVar3 != null) {
                                avVar3.C(i2);
                            }
                            i2++;
                        }
                    }
                    return;
                }
            }
            avVar.C(this.a.size());
            this.a.add(avVar);
            a(avVar, this.a.size() - 1, null);
        }
    }
}
