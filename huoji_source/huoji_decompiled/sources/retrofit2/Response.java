package retrofit2;

import javax.annotation.Nullable;
import okhttp3.Protocol;
import z2.jx;
import z2.qx;
import z2.sx;
import z2.tx;

/* JADX INFO: loaded from: classes2.dex */
public final class Response<T> {

    @Nullable
    private final T body;

    @Nullable
    private final tx errorBody;
    private final sx rawResponse;

    private Response(sx sxVar, @Nullable T t, @Nullable tx txVar) {
        this.rawResponse = sxVar;
        this.body = t;
        this.errorBody = txVar;
    }

    public static <T> Response<T> error(int i, tx txVar) {
        if (i >= 400) {
            return error(txVar, new sx.OooO00o().OooO0oO(i).OooOO0O("Response.error()").OooOOO(Protocol.HTTP_1_1).OooOOo0(new qx.OooO00o().OooOOo0("http://localhost/").OooO0O0()).OooO0OO());
        }
        throw new IllegalArgumentException("code < 400: " + i);
    }

    public static <T> Response<T> error(tx txVar, sx sxVar) {
        Utils.checkNotNull(txVar, "body == null");
        Utils.checkNotNull(sxVar, "rawResponse == null");
        if (sxVar.o00o0O()) {
            throw new IllegalArgumentException("rawResponse should not be successful response");
        }
        return new Response<>(sxVar, null, txVar);
    }

    public static <T> Response<T> success(int i, @Nullable T t) {
        if (i >= 200 && i < 300) {
            return success(t, new sx.OooO00o().OooO0oO(i).OooOO0O("Response.success()").OooOOO(Protocol.HTTP_1_1).OooOOo0(new qx.OooO00o().OooOOo0("http://localhost/").OooO0O0()).OooO0OO());
        }
        throw new IllegalArgumentException("code < 200 or >= 300: " + i);
    }

    public static <T> Response<T> success(@Nullable T t) {
        return success(t, new sx.OooO00o().OooO0oO(200).OooOO0O("OK").OooOOO(Protocol.HTTP_1_1).OooOOo0(new qx.OooO00o().OooOOo0("http://localhost/").OooO0O0()).OooO0OO());
    }

    public static <T> Response<T> success(@Nullable T t, jx jxVar) {
        Utils.checkNotNull(jxVar, "headers == null");
        return success(t, new sx.OooO00o().OooO0oO(200).OooOO0O("OK").OooOOO(Protocol.HTTP_1_1).OooOO0(jxVar).OooOOo0(new qx.OooO00o().OooOOo0("http://localhost/").OooO0O0()).OooO0OO());
    }

    public static <T> Response<T> success(@Nullable T t, sx sxVar) {
        Utils.checkNotNull(sxVar, "rawResponse == null");
        if (sxVar.o00o0O()) {
            return new Response<>(sxVar, t, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    @Nullable
    public T body() {
        return this.body;
    }

    public int code() {
        return this.rawResponse.OoooooO();
    }

    @Nullable
    public tx errorBody() {
        return this.errorBody;
    }

    public jx headers() {
        return this.rawResponse.o00Oo0();
    }

    public boolean isSuccessful() {
        return this.rawResponse.o00o0O();
    }

    public String message() {
        return this.rawResponse.o00ooo();
    }

    public sx raw() {
        return this.rawResponse;
    }

    public String toString() {
        return this.rawResponse.toString();
    }
}
