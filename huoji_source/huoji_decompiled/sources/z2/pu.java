package z2;

import java.util.Objects;
import retrofit2.Response;

/* JADX INFO: loaded from: classes2.dex */
public final class pu<T> {
    private final Response<T> OooO00o;
    private final Throwable OooO0O0;

    private pu(Response<T> response, Throwable th) {
        this.OooO00o = response;
        this.OooO0O0 = th;
    }

    public static <T> pu<T> OooO00o(Throwable th) {
        Objects.requireNonNull(th, "error == null");
        return new pu<>(null, th);
    }

    public static <T> pu<T> OooO0Oo(Response<T> response) {
        Objects.requireNonNull(response, "response == null");
        return new pu<>(response, null);
    }

    public Throwable OooO0O0() {
        return this.OooO0O0;
    }

    public boolean OooO0OO() {
        return this.OooO0O0 != null;
    }

    public Response<T> OooO0o0() {
        return this.OooO00o;
    }
}
