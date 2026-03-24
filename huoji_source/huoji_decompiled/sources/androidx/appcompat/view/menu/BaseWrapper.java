package androidx.appcompat.view.menu;

/* JADX INFO: loaded from: classes.dex */
public class BaseWrapper<T> {
    public final T mWrappedObject;

    public BaseWrapper(T t) {
        if (t == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.mWrappedObject = t;
    }

    public T getWrappedObject() {
        return this.mWrappedObject;
    }
}
