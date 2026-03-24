package com.anythink.core.common.o;

import com.anythink.core.common.f.av;
import com.anythink.core.common.f.aw;
import com.anythink.core.common.f.az;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class w {
    public static List<az.a> a(String str, av avVar) {
        aw awVarA;
        if (avVar == null || (awVarA = com.anythink.core.common.a.a().a(str, avVar)) == null) {
            return null;
        }
        List<az.a> listF = awVarA.a((com.anythink.core.common.f.q) null).f();
        com.anythink.core.common.f.q qVarA = com.anythink.core.b.f.a().a(str, avVar);
        if (qVarA != null && !qVarA.a()) {
            if (listF == null) {
                listF = new ArrayList<>();
            }
            listF.add(new az.a(avVar, qVarA));
        }
        return listF;
    }

    public static boolean a(av avVar) {
        return avVar.d() == 15 && !avVar.k();
    }

    public static boolean a(List<av> list) {
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                av avVar = list.get(i);
                if (avVar != null && avVar.aa()) {
                    return true;
                }
            }
        }
        return false;
    }
}
