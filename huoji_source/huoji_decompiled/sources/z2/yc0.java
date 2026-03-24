package z2;

/* JADX INFO: loaded from: classes2.dex */
public interface yc0<T> {
    void onComplete();

    void onError(Throwable th);

    void onNext(T t);

    void onSubscribe(zc0 zc0Var);
}
