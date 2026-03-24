package com.bumptech.glide.load.engine;

import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import z2.n2;
import z2.o0O;
import z2.o0O00o0;
import z2.o0O0O0Oo;
import z2.o0O0OO0;
import z2.o0O0OOO0;
import z2.o0O0o000;
import z2.o0O0oo00;
import z2.o0OOO0OO;
import z2.o0OOOO00;
import z2.o0OOOO0o;
import z2.o0OOo000;
import z2.o0o0000;
import z2.o0oo0000;
import z2.oO00000o;
import z2.oO0000o0;
import z2.oO000O0;
import z2.oO000O0O;
import z2.oO000OOo;
import z2.oO00Oo0;
import z2.oO0Oo;
import z2.oO0OoOO0;
import z2.oO0Ooooo;
import z2.oO0o0o;
import z2.oOOOoo00;
import z2.oo0OOoo;
import z2.v2;
import z2.w2;
import z2.x2;

/* JADX INFO: loaded from: classes.dex */
public class DecodeJob<R> implements o0OOo000.OooO00o, Runnable, Comparable<DecodeJob<?>>, v2.OooOO0 {
    private static final String o000000O = "DecodeJob";
    private final OooO Ooooo0o;
    private final Pools.Pool<DecodeJob<?>> OooooO0;
    private o0O0O0Oo Oooooo;
    private o0O00o0 Oooooo0;
    private Priority OoooooO;
    private oO00000o Ooooooo;
    private volatile boolean o000000;
    private volatile boolean o000OOo;
    private o0oo0000 o00O0O;
    private o0O0OOO0 o00Oo0;
    private OooO0O0<R> o00Ooo;
    private int o00o0O;
    private boolean o00oO0O;
    private long o00oO0o;
    private Stage o00ooo;
    private volatile o0OOo000 o0O0O00;
    private DataSource o0OO00O;
    private o0O0O0Oo o0OOO0o;
    private Object o0Oo0oo;
    private int o0OoOo0;
    private Object o0ooOO0;
    private Thread o0ooOOo;
    private o0O0O0Oo o0ooOoO;
    private RunReason oo000o;
    private o0O0oo00<?> oo0o0Oo;
    private int ooOO;
    private final o0o0000<R> OoooOoO = new o0o0000<>();
    private final List<Throwable> OoooOoo = new ArrayList();
    private final x2 Ooooo00 = x2.OooO00o();
    private final OooO0o<?> OooooOO = new OooO0o<>();
    private final OooOO0 OooooOo = new OooOO0();

    public interface OooO {
        oO00Oo0 OooO00o();
    }

    public static /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;
        public static final /* synthetic */ int[] OooO0O0;
        public static final /* synthetic */ int[] OooO0OO;

        static {
            int[] iArr = new int[EncodeStrategy.values().length];
            OooO0OO = iArr;
            try {
                iArr[EncodeStrategy.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO0OO[EncodeStrategy.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Stage.values().length];
            OooO0O0 = iArr2;
            try {
                iArr2[Stage.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                OooO0O0[Stage.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                OooO0O0[Stage.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                OooO0O0[Stage.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                OooO0O0[Stage.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[RunReason.values().length];
            OooO00o = iArr3;
            try {
                iArr3[RunReason.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                OooO00o[RunReason.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                OooO00o[RunReason.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public interface OooO0O0<R> {
        void OooO00o(GlideException glideException);

        void OooO0O0(oO0Ooooo<R> oo0ooooo, DataSource dataSource);

        void OooO0OO(DecodeJob<?> decodeJob);
    }

    public final class OooO0OO<Z> implements oO0Oo.OooO00o<Z> {
        private final DataSource OooO00o;

        public OooO0OO(DataSource dataSource) {
            this.OooO00o = dataSource;
        }

        @Override // z2.oO0Oo.OooO00o
        @NonNull
        public oO0Ooooo<Z> OooO00o(@NonNull oO0Ooooo<Z> oo0ooooo) {
            return DecodeJob.this.OooOo0O(this.OooO00o, oo0ooooo);
        }
    }

    public static class OooO0o<Z> {
        private o0O0O0Oo OooO00o;
        private oo0OOoo<Z> OooO0O0;
        private oO000O0O<Z> OooO0OO;

        public void OooO00o() {
            this.OooO00o = null;
            this.OooO0O0 = null;
            this.OooO0OO = null;
        }

        public void OooO0O0(OooO oooO, o0O0OOO0 o0o0ooo0) {
            w2.OooO00o("DecodeJob.encode");
            try {
                oooO.OooO00o().OooO00o(this.OooO00o, new o0OOOO0o(this.OooO0O0, this.OooO0OO, o0o0ooo0));
            } finally {
                this.OooO0OO.OooO0o0();
                w2.OooO0o0();
            }
        }

        public boolean OooO0OO() {
            return this.OooO0OO != null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <X> void OooO0Oo(o0O0O0Oo o0o0o0oo, oo0OOoo<X> oo0oooo, oO000O0O<X> oo000o0o) {
            this.OooO00o = o0o0o0oo;
            this.OooO0O0 = oo0oooo;
            this.OooO0OO = oo000o0o;
        }
    }

    public static class OooOO0 {
        private boolean OooO00o;
        private boolean OooO0O0;
        private boolean OooO0OO;

        private boolean OooO00o(boolean z) {
            return (this.OooO0OO || z || this.OooO0O0) && this.OooO00o;
        }

        public synchronized boolean OooO0O0() {
            this.OooO0O0 = true;
            return OooO00o(false);
        }

        public synchronized boolean OooO0OO() {
            this.OooO0OO = true;
            return OooO00o(false);
        }

        public synchronized boolean OooO0Oo(boolean z) {
            this.OooO00o = true;
            return OooO00o(z);
        }

        public synchronized void OooO0o0() {
            this.OooO0O0 = false;
            this.OooO00o = false;
            this.OooO0OO = false;
        }
    }

    public enum RunReason {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    public enum Stage {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    public DecodeJob(OooO oooO, Pools.Pool<DecodeJob<?>> pool) {
        this.Ooooo0o = oooO;
        this.OooooO0 = pool;
    }

    private void OooO() {
        if (Log.isLoggable(o000000O, 2)) {
            OooOOOo("Retrieved data", this.o00oO0o, "data: " + this.o0Oo0oo + ", cache key: " + this.o0ooOoO + ", fetcher: " + this.oo0o0Oo);
        }
        oO0Ooooo<R> oo0oooooOooO0o = null;
        try {
            oo0oooooOooO0o = OooO0o(this.oo0o0Oo, this.o0Oo0oo, this.o0OO00O);
        } catch (GlideException e) {
            e.setLoggingDetails(this.o0OOO0o, this.o0OO00O);
            this.OoooOoo.add(e);
        }
        if (oo0oooooOooO0o != null) {
            OooOOo(oo0oooooOooO0o, this.o0OO00O);
        } else {
            OooOoO0();
        }
    }

    private <Data> oO0Ooooo<R> OooO0o(o0O0oo00<?> o0o0oo00, Data data, DataSource dataSource) throws GlideException {
        if (data == null) {
            return null;
        }
        try {
            long jOooO0O0 = n2.OooO0O0();
            oO0Ooooo<R> oo0oooooOooO0oo = OooO0oo(data, dataSource);
            if (Log.isLoggable(o000000O, 2)) {
                OooOOOO("Decoded result " + oo0oooooOooO0oo, jOooO0O0);
            }
            return oo0oooooOooO0oo;
        } finally {
            o0o0oo00.OooO0O0();
        }
    }

    private <Data> oO0Ooooo<R> OooO0oo(Data data, DataSource dataSource) throws GlideException {
        return OooOoO(data, dataSource, this.OoooOoO.OooO0oo(data.getClass()));
    }

    private o0OOo000 OooOO0() {
        int i = OooO00o.OooO0O0[this.o00ooo.ordinal()];
        if (i == 1) {
            return new oO0o0o(this.OoooOoO, this);
        }
        if (i == 2) {
            return new o0OOO0OO(this.OoooOoO, this);
        }
        if (i == 3) {
            return new oO000OOo(this.OoooOoO, this);
        }
        if (i == 4) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: " + this.o00ooo);
    }

    private Stage OooOO0O(Stage stage) {
        int i = OooO00o.OooO0O0[stage.ordinal()];
        if (i == 1) {
            return this.o00O0O.OooO00o() ? Stage.DATA_CACHE : OooOO0O(Stage.DATA_CACHE);
        }
        if (i == 2) {
            return this.o00oO0O ? Stage.FINISHED : Stage.SOURCE;
        }
        if (i == 3 || i == 4) {
            return Stage.FINISHED;
        }
        if (i == 5) {
            return this.o00O0O.OooO0O0() ? Stage.RESOURCE_CACHE : OooOO0O(Stage.RESOURCE_CACHE);
        }
        throw new IllegalArgumentException("Unrecognized stage: " + stage);
    }

    @NonNull
    private o0O0OOO0 OooOO0o(DataSource dataSource) {
        o0O0OOO0 o0o0ooo0 = this.o00Oo0;
        if (Build.VERSION.SDK_INT < 26) {
            return o0o0ooo0;
        }
        boolean z = dataSource == DataSource.RESOURCE_DISK_CACHE || this.OoooOoO.OooOo0o();
        o0O0OO0<Boolean> o0o0oo0 = oOOOoo00.OooOO0;
        Boolean bool = (Boolean) o0o0ooo0.OooO0OO(o0o0oo0);
        if (bool != null && (!bool.booleanValue() || z)) {
            return o0o0ooo0;
        }
        o0O0OOO0 o0o0ooo02 = new o0O0OOO0();
        o0o0ooo02.OooO0Oo(this.o00Oo0);
        o0o0ooo02.OooO0o0(o0o0oo0, Boolean.valueOf(z));
        return o0o0ooo02;
    }

    private int OooOOO0() {
        return this.OoooooO.ordinal();
    }

    private void OooOOOO(String str, long j) {
        OooOOOo(str, j, null);
    }

    private void OooOOOo(String str, long j, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(n2.OooO00o(j));
        sb.append(", load key: ");
        sb.append(this.Ooooooo);
        if (str2 != null) {
            str3 = ", " + str2;
        } else {
            str3 = "";
        }
        sb.append(str3);
        sb.append(", thread: ");
        sb.append(Thread.currentThread().getName());
        Log.v(o000000O, sb.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void OooOOo(oO0Ooooo<R> oo0ooooo, DataSource dataSource) {
        if (oo0ooooo instanceof oO0000o0) {
            ((oO0000o0) oo0ooooo).OooO00o();
        }
        oO000O0O oo000o0o = 0;
        if (this.OooooOO.OooO0OO()) {
            oo0ooooo = oO000O0O.OooO0OO(oo0ooooo);
            oo000o0o = oo0ooooo;
        }
        OooOOo0(oo0ooooo, dataSource);
        this.o00ooo = Stage.ENCODE;
        try {
            if (this.OooooOO.OooO0OO()) {
                this.OooooOO.OooO0O0(this.Ooooo0o, this.o00Oo0);
            }
            OooOo00();
        } finally {
            if (oo000o0o != 0) {
                oo000o0o.OooO0o0();
            }
        }
    }

    private void OooOOo0(oO0Ooooo<R> oo0ooooo, DataSource dataSource) {
        OooOoo0();
        this.o00Ooo.OooO0O0(oo0ooooo, dataSource);
    }

    private void OooOOoo() {
        OooOoo0();
        this.o00Ooo.OooO00o(new GlideException("Failed to load resource", new ArrayList(this.OoooOoo)));
        OooOo0();
    }

    private void OooOo() {
        this.OooooOo.OooO0o0();
        this.OooooOO.OooO00o();
        this.OoooOoO.OooO00o();
        this.o000OOo = false;
        this.Oooooo0 = null;
        this.Oooooo = null;
        this.o00Oo0 = null;
        this.OoooooO = null;
        this.Ooooooo = null;
        this.o00Ooo = null;
        this.o00ooo = null;
        this.o0O0O00 = null;
        this.o0ooOOo = null;
        this.o0ooOoO = null;
        this.o0Oo0oo = null;
        this.o0OO00O = null;
        this.oo0o0Oo = null;
        this.o00oO0o = 0L;
        this.o000000 = false;
        this.o0ooOO0 = null;
        this.OoooOoo.clear();
        this.OooooO0.release(this);
    }

    private void OooOo0() {
        if (this.OooooOo.OooO0OO()) {
            OooOo();
        }
    }

    private void OooOo00() {
        if (this.OooooOo.OooO0O0()) {
            OooOo();
        }
    }

    private <Data, ResourceType> oO0Ooooo<R> OooOoO(Data data, DataSource dataSource, oO000O0<Data, ResourceType, R> oo000o0) throws GlideException {
        o0O0OOO0 o0o0ooo0OooOO0o = OooOO0o(dataSource);
        o0O<Data> o0oOooOO0o = this.Oooooo0.OooO0oo().OooOO0o(data);
        try {
            return oo000o0.OooO0O0(o0oOooOO0o, o0o0ooo0OooOO0o, this.o0OoOo0, this.ooOO, new OooO0OO(dataSource));
        } finally {
            o0oOooOO0o.OooO0O0();
        }
    }

    private void OooOoO0() {
        this.o0ooOOo = Thread.currentThread();
        this.o00oO0o = n2.OooO0O0();
        boolean zOooO0O0 = false;
        while (!this.o000000 && this.o0O0O00 != null && !(zOooO0O0 = this.o0O0O00.OooO0O0())) {
            this.o00ooo = OooOO0O(this.o00ooo);
            this.o0O0O00 = OooOO0();
            if (this.o00ooo == Stage.SOURCE) {
                OooO0Oo();
                return;
            }
        }
        if ((this.o00ooo == Stage.FINISHED || this.o000000) && !zOooO0O0) {
            OooOOoo();
        }
    }

    private void OooOoOO() {
        int i = OooO00o.OooO00o[this.oo000o.ordinal()];
        if (i == 1) {
            this.o00ooo = OooOO0O(Stage.INITIALIZE);
            this.o0O0O00 = OooOO0();
        } else if (i != 2) {
            if (i == 3) {
                OooO();
                return;
            }
            throw new IllegalStateException("Unrecognized run reason: " + this.oo000o);
        }
        OooOoO0();
    }

    private void OooOoo0() {
        Throwable th;
        this.Ooooo00.OooO0OO();
        if (!this.o000OOo) {
            this.o000OOo = true;
            return;
        }
        if (this.OoooOoo.isEmpty()) {
            th = null;
        } else {
            List<Throwable> list = this.OoooOoo;
            th = list.get(list.size() - 1);
        }
        throw new IllegalStateException("Already notified", th);
    }

    @Override // z2.o0OOo000.OooO00o
    public void OooO00o(o0O0O0Oo o0o0o0oo, Exception exc, o0O0oo00<?> o0o0oo00, DataSource dataSource) {
        o0o0oo00.OooO0O0();
        GlideException glideException = new GlideException("Fetching data failed", exc);
        glideException.setLoggingDetails(o0o0o0oo, dataSource, o0o0oo00.OooO00o());
        this.OoooOoo.add(glideException);
        if (Thread.currentThread() == this.o0ooOOo) {
            OooOoO0();
        } else {
            this.oo000o = RunReason.SWITCH_TO_SOURCE_SERVICE;
            this.o00Ooo.OooO0OO(this);
        }
    }

    public void OooO0O0() {
        this.o000000 = true;
        o0OOo000 o0ooo000 = this.o0O0O00;
        if (o0ooo000 != null) {
            o0ooo000.cancel();
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NonNull DecodeJob<?> decodeJob) {
        int iOooOOO0 = OooOOO0() - decodeJob.OooOOO0();
        return iOooOOO0 == 0 ? this.o00o0O - decodeJob.o00o0O : iOooOOO0;
    }

    @Override // z2.o0OOo000.OooO00o
    public void OooO0Oo() {
        this.oo000o = RunReason.SWITCH_TO_SOURCE_SERVICE;
        this.o00Ooo.OooO0OO(this);
    }

    @Override // z2.o0OOo000.OooO00o
    public void OooO0o0(o0O0O0Oo o0o0o0oo, Object obj, o0O0oo00<?> o0o0oo00, DataSource dataSource, o0O0O0Oo o0o0o0oo2) {
        this.o0ooOoO = o0o0o0oo;
        this.o0Oo0oo = obj;
        this.oo0o0Oo = o0o0oo00;
        this.o0OO00O = dataSource;
        this.o0OOO0o = o0o0o0oo2;
        if (Thread.currentThread() != this.o0ooOOo) {
            this.oo000o = RunReason.DECODE_DATA;
            this.o00Ooo.OooO0OO(this);
        } else {
            w2.OooO00o("DecodeJob.decodeFromRetrievedData");
            try {
                OooO();
            } finally {
                w2.OooO0o0();
            }
        }
    }

    @Override // z2.v2.OooOO0
    @NonNull
    public x2 OooO0oO() {
        return this.Ooooo00;
    }

    public DecodeJob<R> OooOOO(o0O00o0 o0o00o0, Object obj, oO00000o oo00000o, o0O0O0Oo o0o0o0oo, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, o0oo0000 o0oo0000Var, Map<Class<?>, o0O0o000<?>> map, boolean z, boolean z3, boolean z4, o0O0OOO0 o0o0ooo0, OooO0O0<R> oooO0O0, int i3) {
        this.OoooOoO.OooOo0(o0o00o0, obj, o0o0o0oo, i, i2, o0oo0000Var, cls, cls2, priority, o0o0ooo0, map, z, z3, this.Ooooo0o);
        this.Oooooo0 = o0o00o0;
        this.Oooooo = o0o0o0oo;
        this.OoooooO = priority;
        this.Ooooooo = oo00000o;
        this.o0OoOo0 = i;
        this.ooOO = i2;
        this.o00O0O = o0oo0000Var;
        this.o00oO0O = z4;
        this.o00Oo0 = o0o0ooo0;
        this.o00Ooo = oooO0O0;
        this.o00o0O = i3;
        this.oo000o = RunReason.INITIALIZE;
        this.o0ooOO0 = obj;
        return this;
    }

    @NonNull
    public <Z> oO0Ooooo<Z> OooOo0O(DataSource dataSource, @NonNull oO0Ooooo<Z> oo0ooooo) {
        oO0Ooooo<Z> oo0oooooOooO0O0;
        o0O0o000<Z> o0o0o000;
        EncodeStrategy encodeStrategyOooO0O0;
        o0O0O0Oo o0oooo00;
        Class<?> cls = oo0ooooo.get().getClass();
        oo0OOoo<Z> oo0ooooOooOOO = null;
        if (dataSource != DataSource.RESOURCE_DISK_CACHE) {
            o0O0o000<Z> o0o0o000OooOOo = this.OoooOoO.OooOOo(cls);
            o0o0o000 = o0o0o000OooOOo;
            oo0oooooOooO0O0 = o0o0o000OooOOo.OooO0O0(this.Oooooo0, oo0ooooo, this.o0OoOo0, this.ooOO);
        } else {
            oo0oooooOooO0O0 = oo0ooooo;
            o0o0o000 = null;
        }
        if (!oo0ooooo.equals(oo0oooooOooO0O0)) {
            oo0ooooo.recycle();
        }
        if (this.OoooOoO.OooOo0O(oo0oooooOooO0O0)) {
            oo0ooooOooOOO = this.OoooOoO.OooOOO(oo0oooooOooO0O0);
            encodeStrategyOooO0O0 = oo0ooooOooOOO.OooO0O0(this.o00Oo0);
        } else {
            encodeStrategyOooO0O0 = EncodeStrategy.NONE;
        }
        oo0OOoo oo0oooo = oo0ooooOooOOO;
        if (!this.o00O0O.OooO0Oo(!this.OoooOoO.OooOo(this.o0ooOoO), dataSource, encodeStrategyOooO0O0)) {
            return oo0oooooOooO0O0;
        }
        if (oo0oooo == null) {
            throw new Registry.NoResultEncoderAvailableException(oo0oooooOooO0O0.get().getClass());
        }
        int i = OooO00o.OooO0OO[encodeStrategyOooO0O0.ordinal()];
        if (i == 1) {
            o0oooo00 = new o0OOOO00(this.o0ooOoO, this.Oooooo);
        } else {
            if (i != 2) {
                throw new IllegalArgumentException("Unknown strategy: " + encodeStrategyOooO0O0);
            }
            o0oooo00 = new oO0OoOO0(this.OoooOoO.OooO0O0(), this.o0ooOoO, this.Oooooo, this.o0OoOo0, this.ooOO, o0o0o000, cls, this.o00Oo0);
        }
        oO000O0O oo000o0oOooO0OO = oO000O0O.OooO0OO(oo0oooooOooO0O0);
        this.OooooOO.OooO0Oo(o0oooo00, oo0oooo, oo000o0oOooO0OO);
        return oo000o0oOooO0OO;
    }

    public void OooOo0o(boolean z) {
        if (this.OooooOo.OooO0Oo(z)) {
            OooOo();
        }
    }

    public boolean OooOoo() {
        Stage stageOooOO0O = OooOO0O(Stage.INITIALIZE);
        return stageOooOO0O == Stage.RESOURCE_CACHE || stageOooOO0O == Stage.DATA_CACHE;
    }

    @Override // java.lang.Runnable
    public void run() {
        w2.OooO0O0("DecodeJob#run(model=%s)", this.o0ooOO0);
        o0O0oo00<?> o0o0oo00 = this.oo0o0Oo;
        try {
            try {
                try {
                    if (this.o000000) {
                        OooOOoo();
                        if (o0o0oo00 != null) {
                            o0o0oo00.OooO0O0();
                        }
                        w2.OooO0o0();
                        return;
                    }
                    OooOoOO();
                    if (o0o0oo00 != null) {
                        o0o0oo00.OooO0O0();
                    }
                    w2.OooO0o0();
                } catch (CallbackException e) {
                    throw e;
                }
            } catch (Throwable th) {
                if (Log.isLoggable(o000000O, 3)) {
                    Log.d(o000000O, "DecodeJob threw unexpectedly, isCancelled: " + this.o000000 + ", stage: " + this.o00ooo, th);
                }
                if (this.o00ooo != Stage.ENCODE) {
                    this.OoooOoo.add(th);
                    OooOOoo();
                }
                if (!this.o000000) {
                    throw th;
                }
                throw th;
            }
        } catch (Throwable th2) {
            if (o0o0oo00 != null) {
                o0o0oo00.OooO0O0();
            }
            w2.OooO0o0();
            throw th2;
        }
    }
}
