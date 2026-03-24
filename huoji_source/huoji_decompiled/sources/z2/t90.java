package z2;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class t90 {
    private final Method OooO00o;

    public t90(Method method) {
        this.OooO00o = method;
    }

    private void OooO0O0(GenericArrayType genericArrayType, List<Throwable> list) {
        OooO0Oo(genericArrayType.getGenericComponentType(), list);
    }

    private void OooO0OO(ParameterizedType parameterizedType, List<Throwable> list) {
        for (Type type : parameterizedType.getActualTypeArguments()) {
            OooO0Oo(type, list);
        }
    }

    private void OooO0Oo(Type type, List<Throwable> list) {
        if (type instanceof TypeVariable) {
            list.add(new Exception("Method " + this.OooO00o.getName() + "() contains unresolved type variable " + type));
            return;
        }
        if (type instanceof ParameterizedType) {
            OooO0OO((ParameterizedType) type, list);
        } else if (type instanceof WildcardType) {
            OooO0o0((WildcardType) type, list);
        } else if (type instanceof GenericArrayType) {
            OooO0O0((GenericArrayType) type, list);
        }
    }

    private void OooO0o0(WildcardType wildcardType, List<Throwable> list) {
        for (Type type : wildcardType.getUpperBounds()) {
            OooO0Oo(type, list);
        }
        for (Type type2 : wildcardType.getLowerBounds()) {
            OooO0Oo(type2, list);
        }
    }

    public void OooO00o(List<Throwable> list) {
        for (Type type : this.OooO00o.getGenericParameterTypes()) {
            OooO0Oo(type, list);
        }
    }
}
