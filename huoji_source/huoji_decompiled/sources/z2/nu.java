package z2;

import com.jakewharton.retrofit2.adapter.rxjava2.HttpException;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.plugins.RxJavaPlugins;
import retrofit2.Response;

/* JADX INFO: loaded from: classes2.dex */
public final class nu<T> extends Observable<T> {
    private final Observable<Response<T>> OoooOoO;

    public static class OooO00o<R> implements Observer<Response<R>> {
        private final Observer<? super R> OoooOoO;
        private boolean OoooOoo;

        public OooO00o(Observer<? super R> observer) {
            this.OoooOoO = observer;
        }

        @Override // io.reactivex.Observer
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public void onNext(Response<R> response) {
            if (response.isSuccessful()) {
                this.OoooOoO.onNext(response.body());
                return;
            }
            this.OoooOoo = true;
            HttpException httpException = new HttpException(response);
            try {
                this.OoooOoO.onError(httpException);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(new CompositeException(httpException, th));
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.OoooOoo) {
                return;
            }
            this.OoooOoO.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.OoooOoo) {
                this.OoooOoO.onError(th);
                return;
            }
            AssertionError assertionError = new AssertionError("This should never happen! Report as a bug with the full stacktrace.");
            assertionError.initCause(th);
            RxJavaPlugins.onError(assertionError);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.OoooOoO.onSubscribe(disposable);
        }
    }

    public nu(Observable<Response<T>> observable) {
        this.OoooOoO = observable;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.OoooOoO.subscribe(new OooO00o(observer));
    }
}
