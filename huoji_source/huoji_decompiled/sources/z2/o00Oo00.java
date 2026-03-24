package z2;

import android.app.Activity;
import android.app.Fragment;
import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.MemoryCategory;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.request.target.ImageViewTargetFactory;
import com.bumptech.glide.request.target.Target;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import z2.e;
import z2.o0OO00o0;
import z2.oO0O0;
import z2.oO0O00o0;
import z2.oO0O00oO;
import z2.oO0O0O0o;
import z2.oO0O0Oo0;
import z2.oO0OO00;
import z2.oOO0;
import z2.oOO00;
import z2.oOO0000;
import z2.oOO000o;
import z2.oOO00O0;
import z2.oOO00OO;
import z2.oOO0O0;
import z2.oOO0O000;
import z2.oOO0O00O;
import z2.oOO0O0O0;
import z2.oOo0oooO;

/* JADX INFO: loaded from: classes.dex */
public class o00Oo00 implements ComponentCallbacks2 {
    private static volatile o00Oo00 o00O0O = null;
    private static volatile boolean o00Oo0 = false;
    private static final String o0OoOo0 = "image_manager_disk_cache";
    private static final String ooOO = "Glide";
    private final ooo0Oo0 OoooOoO;
    private final oO000o00 OoooOoo;
    private final oO0OO00o Ooooo00;
    private final oO0O00 Ooooo0o;
    private final o0O00o0 OooooO0;
    private final Registry OooooOO;
    private final oO0OOo0o OooooOo;
    private final j0 Oooooo;
    private final r0 Oooooo0;
    private final List<o0> OoooooO = new ArrayList();
    private MemoryCategory Ooooooo = MemoryCategory.NORMAL;

    public o00Oo00(@NonNull Context context, @NonNull ooo0Oo0 ooo0oo0, @NonNull oO0OO00o oo0oo00o, @NonNull oO000o00 oo000o00, @NonNull oO0OOo0o oo0ooo0o, @NonNull r0 r0Var, @NonNull j0 j0Var, int i, @NonNull p1 p1Var, @NonNull Map<Class<?>, o0O00000<?, ?>> map, @NonNull List<o1<Object>> list, boolean z) {
        this.OoooOoO = ooo0oo0;
        this.OoooOoo = oo000o00;
        this.OooooOo = oo0ooo0o;
        this.Ooooo00 = oo0oo00o;
        this.Oooooo0 = r0Var;
        this.Oooooo = j0Var;
        this.Ooooo0o = new oO0O00(oo0oo00o, oo000o00, (DecodeFormat) p1Var.Oooo0o0().OooO0OO(oOOOoo00.OooO0oO));
        Resources resources = context.getResources();
        Registry registry = new Registry();
        this.OooooOO = registry;
        registry.OooOo00(new oOOO0OOO());
        if (Build.VERSION.SDK_INT >= 27) {
            registry.OooOo00(new oOOo0O00());
        }
        List<ImageHeaderParser> listOooO0oO = registry.OooO0oO();
        oOOOoo00 oooooo00 = new oOOOoo00(listOooO0oO, resources.getDisplayMetrics(), oo000o00, oo0ooo0o);
        p pVar = new p(context, listOooO0oO, oo000o00, oo0ooo0o);
        o0O0OOOo<ParcelFileDescriptor, Bitmap> o0o0ooooOooO0oO = d.OooO0oO(oo000o00);
        oOOO00Oo oooo00oo = new oOOO00Oo(oooooo00);
        Oo0000 oo0000 = new Oo0000(oooooo00, oo0ooo0o);
        k kVar = new k(context);
        oOO0000.OooO0OO oooO0OO = new oOO0000.OooO0OO(resources);
        oOO0000.OooO0o oooO0o = new oOO0000.OooO0o(resources);
        oOO0000.OooO0O0 oooO0O0 = new oOO0000.OooO0O0(resources);
        oOO0000.OooO00o oooO00o = new oOO0000.OooO00o(resources);
        ooooO0O0 ooooo0o0 = new ooooO0O0(oo0ooo0o);
        z zVar = new z();
        c0 c0Var = new c0();
        ContentResolver contentResolver = context.getContentResolver();
        Registry registryOooOo0 = registry.OooO00o(ByteBuffer.class, new oO0O0O00()).OooO00o(InputStream.class, new oOO000(oo0ooo0o)).OooO0o0(Registry.OooOO0o, ByteBuffer.class, Bitmap.class, oooo00oo).OooO0o0(Registry.OooOO0o, InputStream.class, Bitmap.class, oo0000).OooO0o0(Registry.OooOO0o, ParcelFileDescriptor.class, Bitmap.class, o0o0ooooOooO0oO).OooO0o0(Registry.OooOO0o, AssetFileDescriptor.class, Bitmap.class, d.OooO0OO(oo000o00)).OooO0Oo(Bitmap.class, Bitmap.class, oOO00.OooO00o.OooO0O0()).OooO0o0(Registry.OooOO0o, Bitmap.class, Bitmap.class, new b()).OooO0O0(Bitmap.class, ooooo0o0).OooO0o0(Registry.OooOOO0, ByteBuffer.class, BitmapDrawable.class, new oOO0OO(resources, oooo00oo)).OooO0o0(Registry.OooOOO0, InputStream.class, BitmapDrawable.class, new oOO0OO(resources, oo0000)).OooO0o0(Registry.OooOOO0, ParcelFileDescriptor.class, BitmapDrawable.class, new oOO0OO(resources, o0o0ooooOooO0oO)).OooO0O0(BitmapDrawable.class, new oOO0OOO(oo000o00, ooooo0o0)).OooO0o0(Registry.OooOO0O, InputStream.class, r.class, new y(listOooO0oO, pVar, oo0ooo0o)).OooO0o0(Registry.OooOO0O, ByteBuffer.class, r.class, pVar).OooO0O0(r.class, new s()).OooO0Oo(o0O00OO.class, o0O00OO.class, oOO00.OooO00o.OooO0O0()).OooO0o0(Registry.OooOO0o, o0O00OO.class, Bitmap.class, new w(oo000o00)).OooO0OO(Uri.class, Drawable.class, kVar).OooO0OO(Uri.class, Bitmap.class, new O0000000(kVar, oo000o00)).OooOo0(new e.OooO00o()).OooO0Oo(File.class, ByteBuffer.class, new oO0O0O0o.OooO0O0()).OooO0Oo(File.class, InputStream.class, new oO0O0Oo0.OooO()).OooO0OO(File.class, File.class, new m()).OooO0Oo(File.class, ParcelFileDescriptor.class, new oO0O0Oo0.OooO0O0()).OooO0Oo(File.class, File.class, oOO00.OooO00o.OooO0O0()).OooOo0(new o0OO00o0.OooO00o(oo0ooo0o));
        Class cls = Integer.TYPE;
        registryOooOo0.OooO0Oo(cls, InputStream.class, oooO0OO).OooO0Oo(cls, ParcelFileDescriptor.class, oooO0O0).OooO0Oo(Integer.class, InputStream.class, oooO0OO).OooO0Oo(Integer.class, ParcelFileDescriptor.class, oooO0O0).OooO0Oo(Integer.class, Uri.class, oooO0o).OooO0Oo(cls, AssetFileDescriptor.class, oooO00o).OooO0Oo(Integer.class, AssetFileDescriptor.class, oooO00o).OooO0Oo(cls, Uri.class, oooO0o).OooO0Oo(String.class, InputStream.class, new oOo0oooO.OooO0OO()).OooO0Oo(Uri.class, InputStream.class, new oOo0oooO.OooO0OO()).OooO0Oo(String.class, InputStream.class, new oOO000o.OooO0OO()).OooO0Oo(String.class, ParcelFileDescriptor.class, new oOO000o.OooO0O0()).OooO0Oo(String.class, AssetFileDescriptor.class, new oOO000o.OooO00o()).OooO0Oo(Uri.class, InputStream.class, new oOO0O000.OooO00o()).OooO0Oo(Uri.class, InputStream.class, new oO0O00oO.OooO0OO(context.getAssets())).OooO0Oo(Uri.class, ParcelFileDescriptor.class, new oO0O00oO.OooO0O0(context.getAssets())).OooO0Oo(Uri.class, InputStream.class, new oOO0O00O.OooO00o(context)).OooO0Oo(Uri.class, InputStream.class, new oOO0O0.OooO00o(context)).OooO0Oo(Uri.class, InputStream.class, new oOO00O0.OooO0o(contentResolver)).OooO0Oo(Uri.class, ParcelFileDescriptor.class, new oOO00O0.OooO0O0(contentResolver)).OooO0Oo(Uri.class, AssetFileDescriptor.class, new oOO00O0.OooO00o(contentResolver)).OooO0Oo(Uri.class, InputStream.class, new oOO00OO.OooO00o()).OooO0Oo(URL.class, InputStream.class, new oOO0O0O0.OooO00o()).OooO0Oo(Uri.class, File.class, new oO0OO00.OooO00o(context)).OooO0Oo(oOo0o0oO.class, InputStream.class, new oOO0.OooO00o()).OooO0Oo(byte[].class, ByteBuffer.class, new oO0O0.OooO00o()).OooO0Oo(byte[].class, InputStream.class, new oO0O0.OooO0o()).OooO0Oo(Uri.class, Uri.class, oOO00.OooO00o.OooO0O0()).OooO0Oo(Drawable.class, Drawable.class, oOO00.OooO00o.OooO0O0()).OooO0OO(Drawable.class, Drawable.class, new l()).OooOo(Bitmap.class, BitmapDrawable.class, new a0(resources)).OooOo(Bitmap.class, byte[].class, zVar).OooOo(Drawable.class, byte[].class, new b0(oo000o00, zVar, c0Var)).OooOo(r.class, byte[].class, c0Var);
        this.OooooO0 = new o0O00o0(context, oo0ooo0o, registry, new ImageViewTargetFactory(), p1Var, map, list, ooo0oo0, z, i);
    }

    private static void OooO00o(@NonNull Context context) {
        if (o00Oo0) {
            throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
        }
        o00Oo0 = true;
        OooOOo(context);
        o00Oo0 = false;
    }

    @NonNull
    public static o00Oo00 OooO0Oo(@NonNull Context context) {
        if (o00O0O == null) {
            synchronized (o00Oo00.class) {
                if (o00O0O == null) {
                    OooO00o(context);
                }
            }
        }
        return o00O0O;
    }

    @Nullable
    private static o00OOO0O OooO0o0() {
        try {
            return (o00OOO0O) Class.forName("z2.o0o0Oo").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException unused) {
            if (Log.isLoggable(ooOO, 5)) {
                Log.w(ooOO, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
            }
            return null;
        } catch (IllegalAccessException e) {
            e = e;
            OooOoO0(e);
            return null;
        } catch (InstantiationException e2) {
            e = e2;
            OooOoO0(e);
            return null;
        } catch (NoSuchMethodException e3) {
            e = e3;
            OooOoO0(e);
            return null;
        } catch (InvocationTargetException e4) {
            e = e4;
            OooOoO0(e);
            return null;
        }
    }

    @Nullable
    public static File OooOO0O(@NonNull Context context) {
        return OooOO0o(context, "image_manager_disk_cache");
    }

    @Nullable
    public static File OooOO0o(@NonNull Context context, @NonNull String str) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            if (Log.isLoggable(ooOO, 6)) {
                Log.e(ooOO, "default disk cache dir is null");
            }
            return null;
        }
        File file = new File(cacheDir, str);
        if (file.mkdirs() || (file.exists() && file.isDirectory())) {
            return file;
        }
        return null;
    }

    @NonNull
    private static r0 OooOOOO(@Nullable Context context) {
        r2.OooO0o0(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return OooO0Oo(context).OooOOO();
    }

    @VisibleForTesting
    public static synchronized void OooOOOo(@NonNull Context context, @NonNull o0oOO o0ooo) {
        if (o00O0O != null) {
            OooOo();
        }
        OooOOoo(context, o0ooo);
    }

    private static void OooOOo(@NonNull Context context) {
        OooOOoo(context, new o0oOO());
    }

    @VisibleForTesting
    @Deprecated
    public static synchronized void OooOOo0(o00Oo00 o00oo00) {
        if (o00O0O != null) {
            OooOo();
        }
        o00O0O = o00oo00;
    }

    private static void OooOOoo(@NonNull Context context, @NonNull o0oOO o0ooo) {
        Context applicationContext = context.getApplicationContext();
        o00OOO0O o00ooo0oOooO0o0 = OooO0o0();
        List<y0> listEmptyList = Collections.emptyList();
        if (o00ooo0oOooO0o0 == null || o00ooo0oOooO0o0.OooO0OO()) {
            listEmptyList = new a1(applicationContext).OooO00o();
        }
        if (o00ooo0oOooO0o0 != null && !o00ooo0oOooO0o0.OooO0Oo().isEmpty()) {
            Set<Class<?>> setOooO0Oo = o00ooo0oOooO0o0.OooO0Oo();
            Iterator<y0> it = listEmptyList.iterator();
            while (it.hasNext()) {
                y0 next = it.next();
                if (setOooO0Oo.contains(next.getClass())) {
                    if (Log.isLoggable(ooOO, 3)) {
                        Log.d(ooOO, "AppGlideModule excludes manifest GlideModule: " + next);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable(ooOO, 3)) {
            Iterator<y0> it2 = listEmptyList.iterator();
            while (it2.hasNext()) {
                Log.d(ooOO, "Discovered GlideModule from manifest: " + it2.next().getClass());
            }
        }
        o0ooo.OooOOo(o00ooo0oOooO0o0 != null ? o00ooo0oOooO0o0.OooO0o0() : null);
        Iterator<y0> it3 = listEmptyList.iterator();
        while (it3.hasNext()) {
            it3.next().OooO00o(applicationContext, o0ooo);
        }
        if (o00ooo0oOooO0o0 != null) {
            o00ooo0oOooO0o0.OooO00o(applicationContext, o0ooo);
        }
        o00Oo00 o00oo00OooO0O0 = o0ooo.OooO0O0(applicationContext);
        Iterator<y0> it4 = listEmptyList.iterator();
        while (it4.hasNext()) {
            it4.next().OooO0O0(applicationContext, o00oo00OooO0O0, o00oo00OooO0O0.OooooOO);
        }
        if (o00ooo0oOooO0o0 != null) {
            o00ooo0oOooO0o0.OooO0O0(applicationContext, o00oo00OooO0O0, o00oo00OooO0O0.OooooOO);
        }
        applicationContext.registerComponentCallbacks(o00oo00OooO0O0);
        o00O0O = o00oo00OooO0O0;
    }

    @VisibleForTesting
    public static synchronized void OooOo() {
        if (o00O0O != null) {
            o00O0O.OooO().getApplicationContext().unregisterComponentCallbacks(o00O0O);
            o00O0O.OoooOoO.OooOO0o();
        }
        o00O0O = null;
    }

    private static void OooOoO0(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    @NonNull
    @Deprecated
    public static o0 OooOoo(@NonNull Fragment fragment) {
        return OooOOOO(fragment.getActivity()).OooOO0(fragment);
    }

    @NonNull
    public static o0 OooOoo0(@NonNull Activity activity) {
        return OooOOOO(activity).OooO(activity);
    }

    @NonNull
    public static o0 OooOooO(@NonNull Context context) {
        return OooOOOO(context).OooOO0O(context);
    }

    @NonNull
    public static o0 OooOooo(@NonNull View view) {
        return OooOOOO(view.getContext()).OooOO0o(view);
    }

    @NonNull
    public static o0 Oooo000(@NonNull androidx.fragment.app.Fragment fragment) {
        return OooOOOO(fragment.getActivity()).OooOOO0(fragment);
    }

    @NonNull
    public static o0 Oooo00O(@NonNull FragmentActivity fragmentActivity) {
        return OooOOOO(fragmentActivity).OooOOO(fragmentActivity);
    }

    @NonNull
    public Context OooO() {
        return this.OooooO0.getBaseContext();
    }

    public void OooO0O0() {
        t2.OooO00o();
        this.OoooOoO.OooO0o0();
    }

    public void OooO0OO() {
        t2.OooO0O0();
        this.Ooooo00.OooO0O0();
        this.OoooOoo.OooO0O0();
        this.OooooOo.OooO0O0();
    }

    @NonNull
    public oO0OOo0o OooO0o() {
        return this.OooooOo;
    }

    @NonNull
    public oO000o00 OooO0oO() {
        return this.OoooOoo;
    }

    public j0 OooO0oo() {
        return this.Oooooo;
    }

    @NonNull
    public o0O00o0 OooOO0() {
        return this.OooooO0;
    }

    @NonNull
    public r0 OooOOO() {
        return this.Oooooo0;
    }

    @NonNull
    public Registry OooOOO0() {
        return this.OooooOO;
    }

    public void OooOo0(o0 o0Var) {
        synchronized (this.OoooooO) {
            if (this.OoooooO.contains(o0Var)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            this.OoooooO.add(o0Var);
        }
    }

    public void OooOo00(@NonNull oO0O00o0.OooO00o... oooO00oArr) {
        this.Ooooo0o.OooO0OO(oooO00oArr);
    }

    public boolean OooOo0O(@NonNull Target<?> target) {
        synchronized (this.OoooooO) {
            Iterator<o0> it = this.OoooooO.iterator();
            while (it.hasNext()) {
                if (it.next().Oooo(target)) {
                    return true;
                }
            }
            return false;
        }
    }

    @NonNull
    public MemoryCategory OooOo0o(@NonNull MemoryCategory memoryCategory) {
        t2.OooO0O0();
        this.Ooooo00.OooO0OO(memoryCategory.getMultiplier());
        this.OoooOoo.OooO0OO(memoryCategory.getMultiplier());
        MemoryCategory memoryCategory2 = this.Ooooooo;
        this.Ooooooo = memoryCategory;
        return memoryCategory2;
    }

    public void OooOoO(int i) {
        t2.OooO0O0();
        this.Ooooo00.OooO00o(i);
        this.OoooOoo.OooO00o(i);
        this.OooooOo.OooO00o(i);
    }

    public void OooOoOO(o0 o0Var) {
        synchronized (this.OoooooO) {
            if (!this.OoooooO.contains(o0Var)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            this.OoooooO.remove(o0Var);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        OooO0OO();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        OooOoO(i);
    }
}
