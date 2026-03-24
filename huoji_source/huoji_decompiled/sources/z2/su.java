package z2;

import io.reactivex.Completable;
import io.reactivex.Flowable;
import io.reactivex.Maybe;
import io.reactivex.Observable;
import io.reactivex.Scheduler;
import io.reactivex.Single;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Objects;
import retrofit2.CallAdapter;
import retrofit2.Response;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes2.dex */
public final class su extends CallAdapter.Factory {
    private final Scheduler OooO00o;

    private su(Scheduler scheduler) {
        this.OooO00o = scheduler;
    }

    public static su OooO00o() {
        return new su(null);
    }

    public static su OooO0O0(Scheduler scheduler) {
        Objects.requireNonNull(scheduler, "scheduler == null");
        return new su(scheduler);
    }

    @Override // retrofit2.CallAdapter.Factory
    public CallAdapter<?> get(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        Type parameterUpperBound;
        boolean z;
        boolean z3;
        Class<?> rawType = CallAdapter.Factory.getRawType(type);
        if (rawType == Completable.class) {
            return new ru(Void.class, this.OooO00o, false, true, false, false, false, true);
        }
        boolean z4 = rawType == Flowable.class;
        boolean z5 = rawType == Single.class;
        boolean z6 = rawType == Maybe.class;
        if (rawType != Observable.class && !z4 && !z5 && !z6) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            String str = !z4 ? z5 ? "Single" : "Observable" : "Flowable";
            throw new IllegalStateException(str + " return type must be parameterized as " + str + "<Foo> or " + str + "<? extends Foo>");
        }
        Type parameterUpperBound2 = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) type);
        Class<?> rawType2 = CallAdapter.Factory.getRawType(parameterUpperBound2);
        if (rawType2 == Response.class) {
            if (!(parameterUpperBound2 instanceof ParameterizedType)) {
                throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
            }
            parameterUpperBound = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) parameterUpperBound2);
            z = false;
        } else {
            if (rawType2 != pu.class) {
                parameterUpperBound = parameterUpperBound2;
                z = false;
                z3 = true;
                return new ru(parameterUpperBound, this.OooO00o, z, z3, z4, z5, z6, false);
            }
            if (!(parameterUpperBound2 instanceof ParameterizedType)) {
                throw new IllegalStateException("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
            }
            parameterUpperBound = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) parameterUpperBound2);
            z = true;
        }
        z3 = false;
        return new ru(parameterUpperBound, this.OooO00o, z, z3, z4, z5, z6, false);
    }
}
