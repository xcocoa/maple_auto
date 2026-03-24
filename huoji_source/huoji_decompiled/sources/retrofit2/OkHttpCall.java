package retrofit2;

import java.io.IOException;
import java.util.Objects;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import z2.j00;
import z2.l00;
import z2.mx;
import z2.p00;
import z2.qx;
import z2.sx;
import z2.tw;
import z2.tx;
import z2.uw;
import z2.w00;

/* JADX INFO: loaded from: classes2.dex */
public final class OkHttpCall<T> implements Call<T> {
    private final Object[] args;
    private final tw.OooO00o callFactory;
    private volatile boolean canceled;

    @GuardedBy("this")
    @Nullable
    private Throwable creationFailure;

    @GuardedBy("this")
    private boolean executed;

    @GuardedBy("this")
    @Nullable
    private tw rawCall;
    private final RequestFactory requestFactory;
    private final Converter<tx, T> responseConverter;

    public static final class ExceptionCatchingResponseBody extends tx {
        private final tx delegate;
        private final l00 delegateSource;

        @Nullable
        public IOException thrownException;

        public ExceptionCatchingResponseBody(tx txVar) {
            this.delegate = txVar;
            this.delegateSource = w00.OooO0Oo(new p00(txVar.source()) { // from class: retrofit2.OkHttpCall.ExceptionCatchingResponseBody.1
                @Override // z2.p00, z2.e10
                public long read(j00 j00Var, long j) throws IOException {
                    try {
                        return super.read(j00Var, j);
                    } catch (IOException e) {
                        ExceptionCatchingResponseBody.this.thrownException = e;
                        throw e;
                    }
                }
            });
        }

        @Override // z2.tx, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.delegate.close();
        }

        @Override // z2.tx
        public long contentLength() {
            return this.delegate.contentLength();
        }

        @Override // z2.tx
        public mx contentType() {
            return this.delegate.contentType();
        }

        @Override // z2.tx
        public l00 source() {
            return this.delegateSource;
        }

        public void throwIfCaught() throws IOException {
            IOException iOException = this.thrownException;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    public static final class NoContentResponseBody extends tx {
        private final long contentLength;

        @Nullable
        private final mx contentType;

        public NoContentResponseBody(@Nullable mx mxVar, long j) {
            this.contentType = mxVar;
            this.contentLength = j;
        }

        @Override // z2.tx
        public long contentLength() {
            return this.contentLength;
        }

        @Override // z2.tx
        public mx contentType() {
            return this.contentType;
        }

        @Override // z2.tx
        public l00 source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    public OkHttpCall(RequestFactory requestFactory, Object[] objArr, tw.OooO00o oooO00o, Converter<tx, T> converter) {
        this.requestFactory = requestFactory;
        this.args = objArr;
        this.callFactory = oooO00o;
        this.responseConverter = converter;
    }

    private tw createRawCall() throws IOException {
        tw twVarOooO00o = this.callFactory.OooO00o(this.requestFactory.create(this.args));
        Objects.requireNonNull(twVarOooO00o, "Call.Factory returned null.");
        return twVarOooO00o;
    }

    @Override // retrofit2.Call
    public void cancel() {
        tw twVar;
        this.canceled = true;
        synchronized (this) {
            twVar = this.rawCall;
        }
        if (twVar != null) {
            twVar.cancel();
        }
    }

    @Override // retrofit2.Call
    public OkHttpCall<T> clone() {
        return new OkHttpCall<>(this.requestFactory, this.args, this.callFactory, this.responseConverter);
    }

    @Override // retrofit2.Call
    public void enqueue(final Callback<T> callback) {
        tw twVar;
        Throwable th;
        Utils.checkNotNull(callback, "callback == null");
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already executed.");
            }
            this.executed = true;
            twVar = this.rawCall;
            th = this.creationFailure;
            if (twVar == null && th == null) {
                try {
                    tw twVarCreateRawCall = createRawCall();
                    this.rawCall = twVarCreateRawCall;
                    twVar = twVarCreateRawCall;
                } catch (Throwable th2) {
                    th = th2;
                    Utils.throwIfFatal(th);
                    this.creationFailure = th;
                }
            }
        }
        if (th != null) {
            callback.onFailure(this, th);
            return;
        }
        if (this.canceled) {
            twVar.cancel();
        }
        twVar.OooOO0(new uw() { // from class: retrofit2.OkHttpCall.1
            private void callFailure(Throwable th3) {
                try {
                    callback.onFailure(OkHttpCall.this, th3);
                } catch (Throwable th4) {
                    Utils.throwIfFatal(th4);
                    th4.printStackTrace();
                }
            }

            @Override // z2.uw
            public void onFailure(tw twVar2, IOException iOException) {
                callFailure(iOException);
            }

            @Override // z2.uw
            public void onResponse(tw twVar2, sx sxVar) {
                try {
                    try {
                        callback.onResponse(OkHttpCall.this, OkHttpCall.this.parseResponse(sxVar));
                    } catch (Throwable th3) {
                        Utils.throwIfFatal(th3);
                        th3.printStackTrace();
                    }
                } catch (Throwable th4) {
                    Utils.throwIfFatal(th4);
                    callFailure(th4);
                }
            }
        });
    }

    @Override // retrofit2.Call
    public Response<T> execute() throws IOException {
        tw twVarCreateRawCall;
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already executed.");
            }
            this.executed = true;
            Throwable th = this.creationFailure;
            if (th != null) {
                if (th instanceof IOException) {
                    throw ((IOException) th);
                }
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                throw ((Error) th);
            }
            twVarCreateRawCall = this.rawCall;
            if (twVarCreateRawCall == null) {
                try {
                    twVarCreateRawCall = createRawCall();
                    this.rawCall = twVarCreateRawCall;
                } catch (IOException | Error | RuntimeException e) {
                    Utils.throwIfFatal(e);
                    this.creationFailure = e;
                    throw e;
                }
            }
        }
        if (this.canceled) {
            twVarCreateRawCall.cancel();
        }
        return parseResponse(twVarCreateRawCall.execute());
    }

    @Override // retrofit2.Call
    public boolean isCanceled() {
        boolean z = true;
        if (this.canceled) {
            return true;
        }
        synchronized (this) {
            tw twVar = this.rawCall;
            if (twVar == null || !twVar.isCanceled()) {
                z = false;
            }
        }
        return z;
    }

    @Override // retrofit2.Call
    public synchronized boolean isExecuted() {
        return this.executed;
    }

    public Response<T> parseResponse(sx sxVar) throws IOException {
        tx txVarOooOO0 = sxVar.OooOO0();
        sx sxVarOooO0OO = sxVar.o00oO0o().OooO0O0(new NoContentResponseBody(txVarOooOO0.contentType(), txVarOooOO0.contentLength())).OooO0OO();
        int iOoooooO = sxVarOooO0OO.OoooooO();
        if (iOoooooO < 200 || iOoooooO >= 300) {
            try {
                return Response.error(Utils.buffer(txVarOooOO0), sxVarOooO0OO);
            } finally {
                txVarOooOO0.close();
            }
        }
        if (iOoooooO == 204 || iOoooooO == 205) {
            txVarOooOO0.close();
            return Response.success((Object) null, sxVarOooO0OO);
        }
        ExceptionCatchingResponseBody exceptionCatchingResponseBody = new ExceptionCatchingResponseBody(txVarOooOO0);
        try {
            return Response.success(this.responseConverter.convert(exceptionCatchingResponseBody), sxVarOooO0OO);
        } catch (RuntimeException e) {
            exceptionCatchingResponseBody.throwIfCaught();
            throw e;
        }
    }

    @Override // retrofit2.Call
    public synchronized qx request() {
        tw twVar = this.rawCall;
        if (twVar != null) {
            return twVar.request();
        }
        Throwable th = this.creationFailure;
        if (th != null) {
            if (th instanceof IOException) {
                throw new RuntimeException("Unable to create request.", this.creationFailure);
            }
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            throw ((Error) th);
        }
        try {
            tw twVarCreateRawCall = createRawCall();
            this.rawCall = twVarCreateRawCall;
            return twVarCreateRawCall.request();
        } catch (IOException e) {
            this.creationFailure = e;
            throw new RuntimeException("Unable to create request.", e);
        } catch (Error e2) {
            e = e2;
            Utils.throwIfFatal(e);
            this.creationFailure = e;
            throw e;
        } catch (RuntimeException e3) {
            e = e3;
            Utils.throwIfFatal(e);
            this.creationFailure = e;
            throw e;
        }
    }
}
