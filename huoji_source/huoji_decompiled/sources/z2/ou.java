package z2;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.plugins.RxJavaPlugins;
import retrofit2.Call;
import retrofit2.Response;

/* JADX INFO: loaded from: classes2.dex */
public final class ou<T> extends Observable<Response<T>> {
    private final Call<T> OoooOoO;

    public static final class OooO00o implements Disposable {
        private final Call<?> OoooOoO;

        public OooO00o(Call<?> call) {
            this.OoooOoO = call;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.OoooOoO.cancel();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.OoooOoO.isCanceled();
        }
    }

    public ou(Call<T> call) {
        this.OoooOoO = call;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Response<T>> observer) {
        boolean z;
        Call<T> callClone = this.OoooOoO.clone();
        observer.onSubscribe(new OooO00o(callClone));
        try {
            Response<T> responseExecute = callClone.execute();
            if (!callClone.isCanceled()) {
                observer.onNext(responseExecute);
            }
            if (callClone.isCanceled()) {
                return;
            }
            try {
                observer.onComplete();
            } catch (Throwable th) {
                th = th;
                z = true;
                Exceptions.throwIfFatal(th);
                if (z) {
                    RxJavaPlugins.onError(th);
                    return;
                }
                if (callClone.isCanceled()) {
                    return;
                }
                try {
                    observer.onError(th);
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    RxJavaPlugins.onError(new CompositeException(th, th2));
                }
            }
        } catch (Throwable th3) {
            th = th3;
            z = false;
        }
    }
}
