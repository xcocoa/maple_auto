package z2;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class l60 extends h60 {
    public l60(x90 x90Var) {
        super(x90Var);
    }

    @Override // z2.h60
    public Collection<Field> OooOO0(c60 c60Var) {
        Collection<Field> collectionOooOO0 = super.OooOO0(c60Var);
        String strValue = ((b60) c60Var.OooO0oO(b60.class)).value();
        ArrayList arrayList = new ArrayList();
        for (Field field : collectionOooOO0) {
            if (Arrays.asList(((a60) field.getAnnotation(a60.class)).value()).contains(strValue)) {
                arrayList.add(field);
            }
        }
        return arrayList;
    }

    @Override // z2.h60
    public Collection<s90> OooOO0O(c60 c60Var) {
        Collection<s90> collectionOooOO0O = super.OooOO0O(c60Var);
        String strValue = ((b60) c60Var.OooO0oO(b60.class)).value();
        ArrayList arrayList = new ArrayList();
        for (s90 s90Var : collectionOooOO0O) {
            if (Arrays.asList(((a60) s90Var.OooO00o(a60.class)).value()).contains(strValue)) {
                arrayList.add(s90Var);
            }
        }
        return arrayList;
    }

    @Override // z2.h60
    public Collection<Field> OooOO0o(c60 c60Var) {
        Collection<Field> collectionOooOO0o = super.OooOO0o(c60Var);
        String strValue = ((b60) c60Var.OooO0oO(b60.class)).value();
        ArrayList arrayList = new ArrayList();
        for (Field field : collectionOooOO0o) {
            if (Arrays.asList(((z50) field.getAnnotation(z50.class)).value()).contains(strValue)) {
                arrayList.add(field);
            }
        }
        return arrayList;
    }

    @Override // z2.h60
    public Collection<s90> OooOOO0(c60 c60Var) {
        Collection<s90> collectionOooOOO0 = super.OooOOO0(c60Var);
        String strValue = ((b60) c60Var.OooO0oO(b60.class)).value();
        ArrayList arrayList = new ArrayList();
        for (s90 s90Var : collectionOooOOO0) {
            if (Arrays.asList(((z50) s90Var.OooO00o(z50.class)).value()).contains(strValue)) {
                arrayList.add(s90Var);
            }
        }
        return arrayList;
    }
}
