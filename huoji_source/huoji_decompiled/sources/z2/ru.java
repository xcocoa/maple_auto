package z2;

import io.reactivex.BackpressureStrategy;
import io.reactivex.Observable;
import io.reactivex.Scheduler;
import java.lang.reflect.Type;
import retrofit2.Call;
import retrofit2.CallAdapter;

/* JADX INFO: loaded from: classes2.dex */
public final class ru implements CallAdapter<Object> {
    private final Type OooO00o;
    private final Scheduler OooO0O0;
    private final boolean OooO0OO;
    private final boolean OooO0Oo;
    private final boolean OooO0o;
    private final boolean OooO0o0;
    private final boolean OooO0oO;
    private final boolean OooO0oo;

    public ru(Type type, Scheduler scheduler, boolean z, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.OooO00o = type;
        this.OooO0O0 = scheduler;
        this.OooO0OO = z;
        this.OooO0Oo = z3;
        this.OooO0o0 = z4;
        this.OooO0o = z5;
        this.OooO0oO = z6;
        this.OooO0oo = z7;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002d  */
    @Override // retrofit2.CallAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <R> Object adapt(Call<R> call) {
        Observable nuVar;
        Scheduler scheduler;
        Observable ouVar = new ou(call);
        if (!this.OooO0OO) {
            if (this.OooO0Oo) {
                nuVar = new nu(ouVar);
            }
            scheduler = this.OooO0O0;
            if (scheduler != null) {
                ouVar = ouVar.subscribeOn(scheduler);
            }
            return !this.OooO0o0 ? ouVar.toFlowable(BackpressureStrategy.LATEST) : this.OooO0o ? ouVar.singleOrError() : this.OooO0oO ? ouVar.singleElement() : this.OooO0oo ? ouVar.ignoreElements() : ouVar;
        }
        nuVar = new qu(ouVar);
        ouVar = nuVar;
        scheduler = this.OooO0O0;
        if (scheduler != null) {
        }
        if (!this.OooO0o0) {
        }
    }

    @Override // retrofit2.CallAdapter
    public Type responseType() {
        return this.OooO00o;
    }
}
