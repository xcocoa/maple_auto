package z2;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.engine.GlideException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class oO0Oo<DataType, ResourceType, Transcode> {
    private static final String OooO0o = "DecodePath";
    private final Class<DataType> OooO00o;
    private final List<? extends o0O0OOOo<DataType, ResourceType>> OooO0O0;
    private final d0<ResourceType, Transcode> OooO0OO;
    private final Pools.Pool<List<Throwable>> OooO0Oo;
    private final String OooO0o0;

    public interface OooO00o<ResourceType> {
        @NonNull
        oO0Ooooo<ResourceType> OooO00o(@NonNull oO0Ooooo<ResourceType> oo0ooooo);
    }

    public oO0Oo(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends o0O0OOOo<DataType, ResourceType>> list, d0<ResourceType, Transcode> d0Var, Pools.Pool<List<Throwable>> pool) {
        this.OooO00o = cls;
        this.OooO0O0 = list;
        this.OooO0OO = d0Var;
        this.OooO0Oo = pool;
        this.OooO0o0 = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    @NonNull
    private oO0Ooooo<ResourceType> OooO0O0(o0O<DataType> o0o, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) throws GlideException {
        List<Throwable> list = (List) r2.OooO0Oo(this.OooO0Oo.acquire());
        try {
            return OooO0OO(o0o, i, i2, o0o0ooo0, list);
        } finally {
            this.OooO0Oo.release(list);
        }
    }

    @NonNull
    private oO0Ooooo<ResourceType> OooO0OO(o0O<DataType> o0o, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0, List<Throwable> list) throws GlideException {
        int size = this.OooO0O0.size();
        oO0Ooooo<ResourceType> oo0oooooOooO0O0 = null;
        for (int i3 = 0; i3 < size; i3++) {
            o0O0OOOo<DataType, ResourceType> o0o0oooo = this.OooO0O0.get(i3);
            try {
                if (o0o0oooo.OooO00o(o0o.OooO00o(), o0o0ooo0)) {
                    oo0oooooOooO0O0 = o0o0oooo.OooO0O0(o0o.OooO00o(), i, i2, o0o0ooo0);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable(OooO0o, 2)) {
                    Log.v(OooO0o, "Failed to decode data for " + o0o0oooo, e);
                }
                list.add(e);
            }
            if (oo0oooooOooO0O0 != null) {
                break;
            }
        }
        if (oo0oooooOooO0O0 != null) {
            return oo0oooooOooO0O0;
        }
        throw new GlideException(this.OooO0o0, new ArrayList(list));
    }

    public oO0Ooooo<Transcode> OooO00o(o0O<DataType> o0o, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0, OooO00o<ResourceType> oooO00o) throws GlideException {
        return this.OooO0OO.OooO00o(oooO00o.OooO00o(OooO0O0(o0o, i, i2, o0o0ooo0)), o0o0ooo0);
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.OooO00o + ", decoders=" + this.OooO0O0 + ", transcoder=" + this.OooO0OO + MessageFormatter.DELIM_STOP;
    }
}
