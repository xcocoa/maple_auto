package z2;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.slf4j.helpers.MessageFormatter;
import z2.oO0Oo;

/* JADX INFO: loaded from: classes.dex */
public class oO000O0<Data, ResourceType, Transcode> {
    private final Class<Data> OooO00o;
    private final Pools.Pool<List<Throwable>> OooO0O0;
    private final List<? extends oO0Oo<Data, ResourceType, Transcode>> OooO0OO;
    private final String OooO0Oo;

    public oO000O0(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<oO0Oo<Data, ResourceType, Transcode>> list, Pools.Pool<List<Throwable>> pool) {
        this.OooO00o = cls;
        this.OooO0O0 = pool;
        this.OooO0OO = (List) r2.OooO0OO(list);
        this.OooO0Oo = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    private oO0Ooooo<Transcode> OooO0OO(o0O<Data> o0o, @NonNull o0O0OOO0 o0o0ooo0, int i, int i2, oO0Oo.OooO00o<ResourceType> oooO00o, List<Throwable> list) throws GlideException {
        int size = this.OooO0OO.size();
        oO0Ooooo<Transcode> oo0oooooOooO00o = null;
        for (int i3 = 0; i3 < size; i3++) {
            try {
                oo0oooooOooO00o = this.OooO0OO.get(i3).OooO00o(o0o, i, i2, o0o0ooo0, oooO00o);
            } catch (GlideException e) {
                list.add(e);
            }
            if (oo0oooooOooO00o != null) {
                break;
            }
        }
        if (oo0oooooOooO00o != null) {
            return oo0oooooOooO00o;
        }
        throw new GlideException(this.OooO0Oo, new ArrayList(list));
    }

    public Class<Data> OooO00o() {
        return this.OooO00o;
    }

    public oO0Ooooo<Transcode> OooO0O0(o0O<Data> o0o, @NonNull o0O0OOO0 o0o0ooo0, int i, int i2, oO0Oo.OooO00o<ResourceType> oooO00o) throws GlideException {
        List<Throwable> list = (List) r2.OooO0Oo(this.OooO0O0.acquire());
        try {
            return OooO0OO(o0o, o0o0ooo0, i, i2, oooO00o, list);
        } finally {
            this.OooO0O0.release(list);
        }
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.OooO0OO.toArray()) + MessageFormatter.DELIM_STOP;
    }
}
