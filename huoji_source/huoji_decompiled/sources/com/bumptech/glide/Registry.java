package com.bumptech.glide;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import z2.c1;
import z2.d0;
import z2.d1;
import z2.e0;
import z2.e1;
import z2.f1;
import z2.g1;
import z2.h1;
import z2.o0O;
import z2.o0O0OOOo;
import z2.o0OO000;
import z2.o0oO0O0o;
import z2.oO000O0;
import z2.oO0Oo;
import z2.oO0Ooooo;
import z2.oO0o0000;
import z2.oO0oO000;
import z2.oOo00o00;
import z2.oo0OOoo;
import z2.v2;

/* JADX INFO: loaded from: classes.dex */
public class Registry {
    public static final String OooOO0O = "Gif";
    public static final String OooOO0o = "Bitmap";
    private static final String OooOOO = "legacy_prepend_all";
    public static final String OooOOO0 = "BitmapDrawable";
    private static final String OooOOOO = "legacy_append";
    private final oOo00o00 OooO00o;
    private final c1 OooO0O0;
    private final g1 OooO0OO;
    private final h1 OooO0Oo;
    private final e0 OooO0o;
    private final o0OO000 OooO0o0;
    private final d1 OooO0oO;
    private final Pools.Pool<List<Throwable>> OooOO0;
    private final f1 OooO0oo = new f1();
    private final e1 OooO = new e1();

    public static class MissingComponentException extends RuntimeException {
        public MissingComponentException(@NonNull String str) {
            super(str);
        }
    }

    public static final class NoImageHeaderParserException extends MissingComponentException {
        public NoImageHeaderParserException() {
            super("Failed to find image header parser.");
        }
    }

    public static class NoModelLoaderAvailableException extends MissingComponentException {
        public NoModelLoaderAvailableException(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }

        public NoModelLoaderAvailableException(@NonNull Object obj) {
            super("Failed to find any ModelLoaders for model: " + obj);
        }
    }

    public static class NoResultEncoderAvailableException extends MissingComponentException {
        public NoResultEncoderAvailableException(@NonNull Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    public static class NoSourceEncoderAvailableException extends MissingComponentException {
        public NoSourceEncoderAvailableException(@NonNull Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public Registry() {
        Pools.Pool<List<Throwable>> poolOooO0o = v2.OooO0o();
        this.OooOO0 = poolOooO0o;
        this.OooO00o = new oOo00o00(poolOooO0o);
        this.OooO0O0 = new c1();
        this.OooO0OO = new g1();
        this.OooO0Oo = new h1();
        this.OooO0o0 = new o0OO000();
        this.OooO0o = new e0();
        this.OooO0oO = new d1();
        OooOoO(Arrays.asList(OooOO0O, OooOO0o, OooOOO0));
    }

    @NonNull
    private <Data, TResource, Transcode> List<oO0Oo<Data, TResource, Transcode>> OooO0o(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.OooO0OO.OooO0Oo(cls, cls2)) {
            for (Class cls5 : this.OooO0o.OooO0O0(cls4, cls3)) {
                arrayList.add(new oO0Oo(cls, cls4, cls5, this.OooO0OO.OooO0O0(cls, cls4), this.OooO0o.OooO00o(cls4, cls5), this.OooOO0));
            }
        }
        return arrayList;
    }

    @NonNull
    public <Model> List<oO0o0000<Model, ?>> OooO(@NonNull Model model) {
        List<oO0o0000<Model, ?>> listOooO0o0 = this.OooO00o.OooO0o0(model);
        if (listOooO0o0.isEmpty()) {
            throw new NoModelLoaderAvailableException(model);
        }
        return listOooO0o0;
    }

    @NonNull
    public <Data> Registry OooO00o(@NonNull Class<Data> cls, @NonNull o0oO0O0o<Data> o0oo0o0o) {
        this.OooO0O0.OooO00o(cls, o0oo0o0o);
        return this;
    }

    @NonNull
    public <TResource> Registry OooO0O0(@NonNull Class<TResource> cls, @NonNull oo0OOoo<TResource> oo0oooo) {
        this.OooO0Oo.OooO00o(cls, oo0oooo);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry OooO0OO(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull o0O0OOOo<Data, TResource> o0o0oooo) {
        OooO0o0(OooOOOO, cls, cls2, o0o0oooo);
        return this;
    }

    @NonNull
    public <Model, Data> Registry OooO0Oo(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull oO0oO000<Model, Data> oo0oo000) {
        this.OooO00o.OooO00o(cls, cls2, oo0oo000);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry OooO0o0(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull o0O0OOOo<Data, TResource> o0o0oooo) {
        this.OooO0OO.OooO00o(str, o0o0oooo, cls, cls2);
        return this;
    }

    @NonNull
    public List<ImageHeaderParser> OooO0oO() {
        List<ImageHeaderParser> listOooO0O0 = this.OooO0oO.OooO0O0();
        if (listOooO0O0.isEmpty()) {
            throw new NoImageHeaderParserException();
        }
        return listOooO0O0;
    }

    @Nullable
    public <Data, TResource, Transcode> oO000O0<Data, TResource, Transcode> OooO0oo(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        oO000O0<Data, TResource, Transcode> oo000o0OooO00o = this.OooO.OooO00o(cls, cls2, cls3);
        if (this.OooO.OooO0OO(oo000o0OooO00o)) {
            return null;
        }
        if (oo000o0OooO00o == null) {
            List<oO0Oo<Data, TResource, Transcode>> listOooO0o = OooO0o(cls, cls2, cls3);
            oo000o0OooO00o = listOooO0o.isEmpty() ? null : new oO000O0<>(cls, cls2, cls3, listOooO0o, this.OooOO0);
            this.OooO.OooO0Oo(cls, cls2, cls3, oo000o0OooO00o);
        }
        return oo000o0OooO00o;
    }

    @NonNull
    public <Model, TResource, Transcode> List<Class<?>> OooOO0(@NonNull Class<Model> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        List<Class<?>> listOooO0O0 = this.OooO0oo.OooO0O0(cls, cls2, cls3);
        if (listOooO0O0 == null) {
            listOooO0O0 = new ArrayList<>();
            Iterator<Class<?>> it = this.OooO00o.OooO0Oo(cls).iterator();
            while (it.hasNext()) {
                for (Class<?> cls4 : this.OooO0OO.OooO0Oo(it.next(), cls2)) {
                    if (!this.OooO0o.OooO0O0(cls4, cls3).isEmpty() && !listOooO0O0.contains(cls4)) {
                        listOooO0O0.add(cls4);
                    }
                }
            }
            this.OooO0oo.OooO0OO(cls, cls2, cls3, Collections.unmodifiableList(listOooO0O0));
        }
        return listOooO0O0;
    }

    @NonNull
    public <X> oo0OOoo<X> OooOO0O(@NonNull oO0Ooooo<X> oo0ooooo) throws NoResultEncoderAvailableException {
        oo0OOoo<X> oo0ooooOooO0O0 = this.OooO0Oo.OooO0O0(oo0ooooo.OooO0O0());
        if (oo0ooooOooO0O0 != null) {
            return oo0ooooOooO0O0;
        }
        throw new NoResultEncoderAvailableException(oo0ooooo.OooO0O0());
    }

    @NonNull
    public <X> o0O<X> OooOO0o(@NonNull X x) {
        return this.OooO0o0.OooO00o(x);
    }

    public boolean OooOOO(@NonNull oO0Ooooo<?> oo0ooooo) {
        return this.OooO0Oo.OooO0O0(oo0ooooo.OooO0O0()) != null;
    }

    @NonNull
    public <X> o0oO0O0o<X> OooOOO0(@NonNull X x) throws NoSourceEncoderAvailableException {
        o0oO0O0o<X> o0oo0o0oOooO0O0 = this.OooO0O0.OooO0O0(x.getClass());
        if (o0oo0o0oOooO0O0 != null) {
            return o0oo0o0oOooO0O0;
        }
        throw new NoSourceEncoderAvailableException(x.getClass());
    }

    @NonNull
    public <Data> Registry OooOOOO(@NonNull Class<Data> cls, @NonNull o0oO0O0o<Data> o0oo0o0o) {
        this.OooO0O0.OooO0OO(cls, o0oo0o0o);
        return this;
    }

    @NonNull
    public <TResource> Registry OooOOOo(@NonNull Class<TResource> cls, @NonNull oo0OOoo<TResource> oo0oooo) {
        this.OooO0Oo.OooO0OO(cls, oo0oooo);
        return this;
    }

    @NonNull
    public <Model, Data> Registry OooOOo(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull oO0oO000<Model, Data> oo0oo000) {
        this.OooO00o.OooO0oO(cls, cls2, oo0oo000);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry OooOOo0(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull o0O0OOOo<Data, TResource> o0o0oooo) {
        OooOOoo(OooOOO, cls, cls2, o0o0oooo);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry OooOOoo(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull o0O0OOOo<Data, TResource> o0o0oooo) {
        this.OooO0OO.OooO0o0(str, o0o0oooo, cls, cls2);
        return this;
    }

    @NonNull
    public <TResource, Transcode> Registry OooOo(@NonNull Class<TResource> cls, @NonNull Class<Transcode> cls2, @NonNull d0<TResource, Transcode> d0Var) {
        this.OooO0o.OooO0OO(cls, cls2, d0Var);
        return this;
    }

    @NonNull
    public Registry OooOo0(@NonNull o0O.OooO00o<?> oooO00o) {
        this.OooO0o0.OooO0O0(oooO00o);
        return this;
    }

    @NonNull
    public Registry OooOo00(@NonNull ImageHeaderParser imageHeaderParser) {
        this.OooO0oO.OooO00o(imageHeaderParser);
        return this;
    }

    @NonNull
    @Deprecated
    public <Data> Registry OooOo0O(@NonNull Class<Data> cls, @NonNull o0oO0O0o<Data> o0oo0o0o) {
        return OooO00o(cls, o0oo0o0o);
    }

    @NonNull
    @Deprecated
    public <TResource> Registry OooOo0o(@NonNull Class<TResource> cls, @NonNull oo0OOoo<TResource> oo0oooo) {
        return OooO0O0(cls, oo0oooo);
    }

    @NonNull
    public final Registry OooOoO(@NonNull List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        arrayList.add(0, OooOOO);
        arrayList.add(OooOOOO);
        this.OooO0OO.OooO0o(arrayList);
        return this;
    }

    @NonNull
    public <Model, Data> Registry OooOoO0(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull oO0oO000<? extends Model, ? extends Data> oo0oo000) {
        this.OooO00o.OooO(cls, cls2, oo0oo000);
        return this;
    }
}
