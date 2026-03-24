package z2;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.plugins.RxJavaPlugins;
import retrofit2.Response;

/* JADX INFO: loaded from: classes2.dex */
public final class qu<T> extends Observable<pu<T>> {
    private final Observable<Response<T>> OoooOoO;

    public static class OooO00o<R> implements Observer<Response<R>> {
        private final Observer<? super pu<R>> OoooOoO;

        public OooO00o(Observer<? super pu<R>> observer) {
            this.OoooOoO = observer;
        }

        @Override // io.reactivex.Observer
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public void onNext(Response<R> response) {
            this.OoooOoO.onNext(pu.OooO0Oo(response));
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.OoooOoO.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            try {
                this.OoooOoO.onNext(pu.OooO00o(th));
                this.OoooOoO.onComplete();
            } catch (Throwable th2) {
                try {
                    this.OoooOoO.onError(th2);
                } catch (Throwable th3) {
                    Exceptions.throwIfFatal(th3);
                    RxJavaPlugins.onError(new CompositeException(th2, th3));
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.OoooOoO.onSubscribe(disposable);
        }
    }

    public qu(Observable<Response<T>> observable) {
        this.OoooOoO = observable;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super pu<T>> observer) {
        this.OoooOoO.subscribe(new OooO00o(observer));
    }
}
