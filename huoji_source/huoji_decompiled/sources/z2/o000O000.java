package z2;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.Gallery;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.TextView;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.nio.channels.FileChannel;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.entity.StringEntity;
import org.json.JSONObject;
import z2.o000O000;

/* JADX INFO: loaded from: classes.dex */
public abstract class o000O000<T extends o000O000<T>> implements o00O00 {
    private static final Class<?>[] OoooOo0 = {View.class};
    private static Class<?>[] OoooOoO;
    private static Class<?>[] OoooOoo;
    private static final Class<?>[] Ooooo00;
    private static Class<?>[] Ooooo0o;
    private static final Class<?>[] OooooO0;
    private static Class<?>[] OooooOO;
    private static WeakHashMap<Dialog, Void> OooooOo;
    private Activity Oooo;
    private View Oooo0oo;
    public o000Oo0 OoooO;
    public View OoooO0;
    private Context OoooO00;
    public Object OoooO0O;
    private o0O0ooO OoooOO0;
    private HttpHost OoooOOO;
    private Constructor<T> OoooOOo;
    private int o000oOoO = 0;

    static {
        Class<?> cls = Integer.TYPE;
        OoooOoO = new Class[]{AdapterView.class, View.class, cls, Long.TYPE};
        OoooOoo = new Class[]{AbsListView.class, cls};
        Ooooo00 = new Class[]{CharSequence.class, cls, cls, cls};
        Ooooo0o = new Class[]{cls, cls};
        OooooO0 = new Class[]{cls};
        OooooOO = new Class[]{cls, Paint.class};
        OooooOo = new WeakHashMap<>();
    }

    public o000O000(Activity activity) {
        this.Oooo = activity;
    }

    public o000O000(Activity activity, View view) {
        this.Oooo0oo = view;
        this.OoooO0 = view;
        this.Oooo = activity;
    }

    public o000O000(Context context) {
        this.OoooO00 = context;
    }

    public o000O000(View view) {
        this.Oooo0oo = view;
        this.OoooO0 = view;
    }

    private View Oooo0OO(int i) {
        View view = this.Oooo0oo;
        if (view != null) {
            return view.findViewById(i);
        }
        Activity activity = this.Oooo;
        if (activity != null) {
            return activity.findViewById(i);
        }
        return null;
    }

    private View Oooo0o(int... iArr) {
        View viewOooo0OO = Oooo0OO(iArr[0]);
        for (int i = 1; i < iArr.length && viewOooo0OO != null; i++) {
            viewOooo0OO = viewOooo0OO.findViewById(iArr[i]);
        }
        return viewOooo0OO;
    }

    private View Oooo0o0(String str) {
        Activity activity;
        View childAt = this.Oooo0oo;
        if (childAt == null && ((activity = this.Oooo) == null || (childAt = ((ViewGroup) activity.findViewById(R.id.content)).getChildAt(0)) == null)) {
            return null;
        }
        return childAt.findViewWithTag(str);
    }

    private Constructor<T> OoooO() {
        if (this.OoooOOo == null) {
            try {
                this.OoooOOo = (Constructor<T>) getClass().getConstructor(View.class);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this.OoooOOo;
    }

    private void o000O(boolean z, int i, boolean z3) {
        View view = this.OoooO0;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            Context contextOoooOO0 = OoooOO0();
            if (i > 0 && z3) {
                i = o00O000.OooOOO(contextOoooOO0, i);
            }
            if (z) {
                layoutParams.width = i;
            } else {
                layoutParams.height = i;
            }
            this.OoooO0.setLayoutParams(layoutParams);
        }
    }

    private o00O000o o000O00O() {
        AbsListView absListView = (AbsListView) this.OoooO0;
        o00O000o o00o000o = (o00O000o) absListView.getTag(o00O00.OooOo0o);
        if (o00o000o != null) {
            return o00o000o;
        }
        o00O000o o00o000o2 = new o00O000o();
        absListView.setOnScrollListener(o00o000o2);
        absListView.setTag(o00O00.OooOo0o, o00o000o2);
        o00O000.OooO("set scroll listenr");
        return o00o000o2;
    }

    public <K> T OooO(String str, Map<String, ?> map, Class<K> cls, Object obj, String str2) {
        o000O0O0<K> o000o0o0 = new o000O0O0<>();
        o000o0o0.type(cls).weakHandler(obj, str2);
        return (T) OooO0oo(str, map, cls, o000o0o0);
    }

    public T OooO00o(Adapter adapter) {
        View view = this.OoooO0;
        if (view instanceof AdapterView) {
            ((AdapterView) view).setAdapter(adapter);
        }
        return (T) o000O0O();
    }

    public T OooO0O0(ExpandableListAdapter expandableListAdapter) {
        View view = this.OoooO0;
        if (view instanceof ExpandableListView) {
            ((ExpandableListView) view).setAdapter(expandableListAdapter);
        }
        return (T) o000O0O();
    }

    public <K> T OooO0OO(o000O0O0<K> o000o0o0) {
        return (T) o0000(o000o0o0);
    }

    public <K> T OooO0Oo(String str, Class<K> cls, long j, o000O0O0<K> o000o0o0) {
        o000o0o0.type(cls).url(str).fileCache(true).expire(j);
        return (T) OooO0OO(o000o0o0);
    }

    public <K> T OooO0o(String str, Class<K> cls, o000O0O0<K> o000o0o0) {
        o000o0o0.type(cls).url(str);
        return (T) OooO0OO(o000o0o0);
    }

    public <K> T OooO0o0(String str, Class<K> cls, long j, Object obj, String str2) {
        o000O0O0<K> o000o0o0 = new o000O0O0<>();
        o000o0o0.type(cls).weakHandler(obj, str2).fileCache(true).expire(j);
        return (T) OooO0o(str, cls, o000o0o0);
    }

    public <K> T OooO0oO(String str, Class<K> cls, Object obj, String str2) {
        o000O0O0<K> o000o0o0 = new o000O0O0<>();
        o000o0o0.type(cls).weakHandler(obj, str2);
        return (T) OooO0o(str, cls, o000o0o0);
    }

    public <K> T OooO0oo(String str, Map<String, ?> map, Class<K> cls, o000O0O0<K> o000o0o0) {
        o000o0o0.type(cls).url(str).params(map);
        return (T) OooO0OO(o000o0o0);
    }

    public T OooOO0() {
        o000OO0O.cancel();
        return (T) o000O0O();
    }

    public T OooOO0O(int i) {
        return (T) OooOO0o(i, null);
    }

    public T OooOO0o(int i, Animation.AnimationListener animationListener) {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(OoooOO0(), i);
        animationLoadAnimation.setAnimationListener(animationListener);
        return (T) OooOOO0(animationLoadAnimation);
    }

    public T OooOOO(o000Oo0 o000oo0) {
        this.OoooO = o000oo0;
        return (T) o000O0O();
    }

    public T OooOOO0(Animation animation) {
        View view = this.OoooO0;
        if (view != null && animation != null) {
            view.startAnimation(animation);
        }
        return (T) o000O0O();
    }

    public T OooOOOO(int i) {
        View view = this.OoooO0;
        if (view != null) {
            if (i != 0) {
                view.setBackgroundResource(i);
            } else {
                view.setBackgroundDrawable(null);
            }
        }
        return (T) o000O0O();
    }

    public T OooOOOo(int i) {
        View view = this.OoooO0;
        if (view != null) {
            view.setBackgroundColor(i);
        }
        return (T) o000O0O();
    }

    public T OooOOo(String str, long j) {
        return (T) OooO0o0(str, byte[].class, j, null, null);
    }

    public T OooOOo0(int i) {
        View view = this.OoooO0;
        if (view != null) {
            view.setBackgroundColor(OoooOO0().getResources().getColor(i));
        }
        return (T) o000O0O();
    }

    public T OooOOoo(boolean z) {
        View view = this.OoooO0;
        if (view instanceof CompoundButton) {
            ((CompoundButton) view).setChecked(z);
        }
        return (T) o000O0O();
    }

    public T OooOo(Object obj, String str) {
        return (T) OooOo0o(new o00O000o().OooO0OO(obj, str, true, OoooOo0));
    }

    public T OooOo0() {
        View view = this.OoooO0;
        if (view != null) {
            view.performClick();
        }
        return (T) o000O0O();
    }

    public T OooOo00() {
        View view = this.OoooO0;
        if (view != null) {
            if (view instanceof ImageView) {
                ImageView imageView = (ImageView) view;
                imageView.setImageBitmap(null);
                imageView.setTag(o00O00.OooOo0O, null);
            } else if (view instanceof WebView) {
                WebView webView = (WebView) view;
                webView.stopLoading();
                webView.clearView();
                webView.setTag(o00O00.OooOo0O, null);
            } else if (view instanceof TextView) {
                ((TextView) view).setText("");
            }
        }
        return (T) o000O0O();
    }

    public T OooOo0O(boolean z) {
        View view = this.OoooO0;
        if (view != null) {
            view.setClickable(z);
        }
        return (T) o000O0O();
    }

    public T OooOo0o(View.OnClickListener onClickListener) {
        View view = this.OoooO0;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
        return (T) o000O0O();
    }

    public T OooOoO() {
        View view = this.OoooO0;
        if (view instanceof AdapterView) {
            Adapter adapter = ((AdapterView) view).getAdapter();
            if (adapter instanceof BaseAdapter) {
                ((BaseAdapter) adapter).notifyDataSetChanged();
            }
        }
        return (T) o000O0O();
    }

    public T OooOoO0(View view) {
        Exception e;
        T tNewInstance;
        try {
            tNewInstance = OoooO().newInstance(view);
        } catch (Exception e2) {
            e = e2;
            tNewInstance = null;
        }
        try {
            tNewInstance.Oooo = this.Oooo;
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
        }
        return tNewInstance;
    }

    public <K> T OooOoOO(String str, Class<K> cls, o000O0O0<K> o000o0o0) {
        o000o0o0.url(str).type(cls).method(2);
        return (T) OooO0OO(o000o0o0);
    }

    public T OooOoo() {
        Iterator<Dialog> it = OooooOo.keySet().iterator();
        while (it.hasNext()) {
            try {
                it.next().dismiss();
            } catch (Exception unused) {
            }
            it.remove();
        }
        return (T) o000O0O();
    }

    public <K> T OooOoo0(String str, Class<K> cls, Object obj, String str2) {
        o000O0O0<K> o000o0o0 = new o000O0O0<>();
        o000o0o0.weakHandler(obj, str2);
        return (T) OooOoOO(str, cls, o000o0o0);
    }

    public T OooOooO(Dialog dialog) {
        if (dialog != null) {
            try {
                OooooOo.remove(dialog);
                dialog.dismiss();
            } catch (Exception unused) {
            }
        }
        return (T) o000O0O();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T OooOooo(String str, File file, o000O0O0<File> o000o0o0) {
        ((o000O0O0) o000o0o0.url(str)).type(File.class).targetFile(file);
        return (T) OooO0OO(o000o0o0);
    }

    public Bitmap Oooo(int i) {
        return o000OO00.getMemoryCached(OoooOO0(), i);
    }

    public T Oooo0(boolean z) {
        ExpandableListView expandableListView;
        ExpandableListAdapter expandableListAdapter;
        View view = this.OoooO0;
        if ((view instanceof ExpandableListView) && (expandableListAdapter = (expandableListView = (ExpandableListView) view).getExpandableListAdapter()) != null) {
            int groupCount = expandableListAdapter.getGroupCount();
            for (int i = 0; i < groupCount; i++) {
                if (z) {
                    expandableListView.expandGroup(i);
                } else {
                    expandableListView.collapseGroup(i);
                }
            }
        }
        return (T) o000O0O();
    }

    public T Oooo000(String str, File file, Object obj, String str2) {
        o000O0O0<File> o000o0o0 = new o000O0O0<>();
        o000o0o0.weakHandler(obj, str2);
        return (T) OooOooo(str, file, o000o0o0);
    }

    public T Oooo00O(boolean z) {
        View view = this.OoooO0;
        if (view != null) {
            view.setEnabled(z);
        }
        return (T) o000O0O();
    }

    public T Oooo00o(int i, boolean z) {
        View view = this.OoooO0;
        if (view instanceof ExpandableListView) {
            ExpandableListView expandableListView = (ExpandableListView) view;
            if (z) {
                expandableListView.expandGroup(i);
            } else {
                expandableListView.collapseGroup(i);
            }
        }
        return (T) o000O0O();
    }

    public T Oooo0O0(int i) {
        return (T) OooOoO0(Oooo0OO(i));
    }

    public Button Oooo0oO() {
        return (Button) this.OoooO0;
    }

    public File Oooo0oo(String str) {
        File fileOooOo0O = o00O000.OooOo0O(o00O000.OooOOo(OoooOO0(), 1), str);
        return fileOooOo0O == null ? o00O000.OooOo0O(o00O000.OooOOo(OoooOO0(), 0), str) : fileOooOo0O;
    }

    public Bitmap OoooO0(String str, int i) {
        File fileOooo0oo;
        Bitmap memoryCached = o000OO00.getMemoryCached(str, i);
        return (memoryCached != null || (fileOooo0oo = Oooo0oo(str)) == null) ? memoryCached : o000OO00.getResizedImage(fileOooo0oo.getAbsolutePath(), null, i, true, 0);
    }

    public Bitmap OoooO00(String str) {
        return OoooO0(str, 0);
    }

    public CheckBox OoooO0O() {
        return (CheckBox) this.OoooO0;
    }

    public Context OoooOO0() {
        Activity activity = this.Oooo;
        if (activity != null) {
            return activity;
        }
        View view = this.Oooo0oo;
        return view != null ? view.getContext() : this.OoooO00;
    }

    public Editable OoooOOO() {
        View view = this.OoooO0;
        if (view instanceof EditText) {
            return ((EditText) view).getEditableText();
        }
        return null;
    }

    public ExpandableListView OoooOOo() {
        return (ExpandableListView) this.OoooO0;
    }

    public Gallery OoooOo0() {
        return (Gallery) this.OoooO0;
    }

    public GridView OoooOoO() {
        return (GridView) this.OoooO0;
    }

    public ImageView OoooOoo() {
        return (ImageView) this.OoooO0;
    }

    public ListView Ooooo00() {
        return (ListView) this.OoooO0;
    }

    public ProgressBar Ooooo0o() {
        return (ProgressBar) this.OoooO0;
    }

    public RatingBar OooooO0() {
        return (RatingBar) this.OoooO0;
    }

    public SeekBar OooooOO() {
        return (SeekBar) this.OoooO0;
    }

    public Object OooooOo() {
        View view = this.OoooO0;
        if (view instanceof AdapterView) {
            return ((AdapterView) view).getSelectedItem();
        }
        return null;
    }

    public Spinner Oooooo() {
        return (Spinner) this.OoooO0;
    }

    public int Oooooo0() {
        View view = this.OoooO0;
        if (view instanceof AdapterView) {
            return ((AdapterView) view).getSelectedItemPosition();
        }
        return -1;
    }

    public Object OoooooO() {
        View view = this.OoooO0;
        if (view != null) {
            return view.getTag();
        }
        return null;
    }

    public Object Ooooooo(int i) {
        View view = this.OoooO0;
        if (view != null) {
            return view.getTag(i);
        }
        return null;
    }

    public T o000(float f) {
        View view = this.OoooO0;
        if (view instanceof RatingBar) {
            ((RatingBar) view).setRating(f);
        }
        return (T) o000O0O();
    }

    public <K> T o0000(o000OO0O<?, K> o000oo0o) {
        o000Oo0 o000oo0 = this.OoooO;
        if (o000oo0 != null) {
            o000oo0o.auth(o000oo0);
        }
        Object obj = this.OoooO0O;
        if (obj != null) {
            o000oo0o.progress(obj);
        }
        o0O0ooO o0o0ooo = this.OoooOO0;
        if (o0o0ooo != null) {
            o000oo0o.transformer(o0o0ooo);
        }
        o000oo0o.policy(this.o000oOoO);
        HttpHost httpHost = this.OoooOOO;
        if (httpHost != null) {
            o000oo0o.proxy(httpHost.getHostName(), this.OoooOOO.getPort());
        }
        Activity activity = this.Oooo;
        if (activity != null) {
            o000oo0o.async(activity);
        } else {
            o000oo0o.async(OoooOO0());
        }
        o000OoO();
        return (T) o000O0O();
    }

    public T o00000(String str, boolean z, boolean z3) {
        return (T) o00000O0(str, z, z3, 0, 0);
    }

    public T o000000(String str) {
        return (T) o00000O0(str, true, true, 0, 0);
    }

    public T o000000O(String str, o000OOo0 o000ooo0) {
        return (T) o000000o(str, o000ooo0, null);
    }

    public T o000000o(String str, o000OOo0 o000ooo0, String str2) {
        if (this.OoooO0 instanceof ImageView) {
            o000OO00.async(this.Oooo, OoooOO0(), (ImageView) this.OoooO0, str, this.OoooO0O, this.OoooO, o000ooo0, this.OoooOOO, str2);
            o000OoO();
        }
        return (T) o000O0O();
    }

    public T o00000O(String str, boolean z, boolean z3, int i, int i2, Bitmap bitmap, int i3) {
        return (T) o00000OO(str, z, z3, i, i2, bitmap, i3, 0.0f);
    }

    public T o00000O0(String str, boolean z, boolean z3, int i, int i2) {
        return (T) o00000O(str, z, z3, i, i2, null, 0);
    }

    public T o00000OO(String str, boolean z, boolean z3, int i, int i2, Bitmap bitmap, int i3, float f) {
        return (T) o00000Oo(str, z, z3, i, i2, bitmap, i3, f, 0, null);
    }

    public T o00000Oo(String str, boolean z, boolean z3, int i, int i2, Bitmap bitmap, int i3, float f, int i4, String str2) {
        if (this.OoooO0 instanceof ImageView) {
            o000OO00.async(this.Oooo, OoooOO0(), (ImageView) this.OoooO0, str, z, z3, i, i2, bitmap, i3, f, Float.MAX_VALUE, this.OoooO0O, this.OoooO, this.o000oOoO, i4, this.OoooOOO, str2);
            o000OoO();
        }
        return (T) o000O0O();
    }

    public T o00000o0(String str, boolean z, boolean z3, int i, int i2, o000OO00 o000oo00) {
        o000oo00.targetWidth(i).fallback(i2).url(str).memCache(z).fileCache(z3);
        return (T) oo0o0Oo(o000oo00);
    }

    public T o00000oO(String str) {
        File fileOooo0oo = Oooo0oo(str);
        if (fileOooo0oo != null) {
            fileOooo0oo.delete();
        }
        return (T) o000O0O();
    }

    public T o00000oo() {
        return (T) o000o000(4);
    }

    public T o0000O(Object obj, String str) {
        return (T) o000OO(new o00O000o().OooO0OO(obj, str, true, OoooOoO));
    }

    public T o0000O0(AdapterView.OnItemClickListener onItemClickListener) {
        View view = this.OoooO0;
        if (view instanceof AdapterView) {
            ((AdapterView) view).setOnItemClickListener(onItemClickListener);
        }
        return (T) o000O0O();
    }

    public Object o0000O00(String str, Class<?>[] clsArr, Object... objArr) {
        Object obj = this.OoooO0;
        if (obj == null) {
            obj = this.Oooo;
        }
        return o00O000.OooOooO(obj, str, false, false, clsArr, objArr);
    }

    public T o0000O0O(Object obj, String str) {
        return (T) o0000O0(new o00O000o().OooO0OO(obj, str, true, OoooOoO));
    }

    public T o0000OO(View.OnLongClickListener onLongClickListener) {
        View view = this.OoooO0;
        if (view != null) {
            view.setOnLongClickListener(onLongClickListener);
        }
        return (T) o000O0O();
    }

    public T o0000OO0() {
        View view = this.OoooO0;
        if (view != null) {
            view.performLongClick();
        }
        return (T) o000O0O();
    }

    public T o0000OOO(Object obj, String str) {
        return (T) o0000OO(new o00O000o().OooO0OO(obj, str, true, OoooOo0));
    }

    public File o0000OOo(String str, String str2) {
        File fileOooOoo0;
        File file = null;
        try {
            File fileOooo0oo = Oooo0oo(str);
            if (fileOooo0oo == null || (fileOooOoo0 = o00O000.OooOoo0()) == null) {
                return null;
            }
            File file2 = new File(fileOooOoo0, str2);
            try {
                file2.createNewFile();
                FileInputStream fileInputStream = new FileInputStream(fileOooo0oo);
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                FileChannel channel = fileInputStream.getChannel();
                FileChannel channel2 = fileOutputStream.getChannel();
                try {
                    channel.transferTo(0L, channel.size(), channel2);
                    o00O000.OooO0o(fileInputStream);
                    o00O000.OooO0o(fileOutputStream);
                    o00O000.OooO0o(channel);
                    o00O000.OooO0o(channel2);
                    return file2;
                } catch (Throwable th) {
                    o00O000.OooO0o(fileInputStream);
                    o00O000.OooO0o(fileOutputStream);
                    o00O000.OooO0o(channel);
                    o00O000.OooO0o(channel2);
                    throw th;
                }
            } catch (Exception e) {
                e = e;
                file = file2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        o00O000.OooOO0O(e);
        return file;
    }

    public T o0000Oo(int i, int i2) {
        Activity activity = this.Oooo;
        if (activity != null) {
            o00O000.OooOooO(activity, "overridePendingTransition", false, false, Ooooo0o, Integer.valueOf(i), Integer.valueOf(i2));
        }
        return (T) o000O0O();
    }

    public T o0000Oo0(float f, float f2, float f3, float f4) {
        View view = this.OoooO0;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                Context contextOoooOO0 = OoooOO0();
                ((ViewGroup.MarginLayoutParams) layoutParams).setMargins(o00O000.OooOOO(contextOoooOO0, f), o00O000.OooOOO(contextOoooOO0, f2), o00O000.OooOOO(contextOoooOO0, f3), o00O000.OooOOO(contextOoooOO0, f4));
                this.OoooO0.setLayoutParams(layoutParams);
            }
        }
        return (T) o000O0O();
    }

    public T o0000OoO(int i) {
        View view = this.OoooO0;
        while (view != null) {
            if (view.getId() == i) {
                break;
            }
            Object parent = view.getParent();
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        view = null;
        return (T) OooOoO0(view);
    }

    public View o0000Ooo(View view, int i, ViewGroup viewGroup) {
        Integer num;
        if (view != null && (num = (Integer) view.getTag(o00O00.OooOo)) != null && num.intValue() == i) {
            return view;
        }
        Activity activity = this.Oooo;
        View viewInflate = (activity != null ? activity.getLayoutInflater() : (LayoutInflater) OoooOO0().getSystemService("layout_inflater")).inflate(i, viewGroup, false);
        viewInflate.setTag(o00O00.OooOo, Integer.valueOf(i));
        return viewInflate;
    }

    public T o0000o(int i) {
        this.OoooO0O = Oooo0OO(i);
        return (T) o000O0O();
    }

    public T o0000o0(int i) {
        this.o000oOoO = i;
        return (T) o000O0O();
    }

    public <K> T o0000o0O(String str, String str2, HttpEntity httpEntity, Class<K> cls, o000O0O0<K> o000o0o0) {
        o000o0o0.url(str).type(cls).method(1).header("Content-Type", str2).param(o00O00.Oooo0o, httpEntity);
        return (T) OooO0OO(o000o0o0);
    }

    public <K> T o0000o0o(String str, JSONObject jSONObject, Class<K> cls, o000O0O0<K> o000o0o0) {
        try {
            return (T) o0000o0O(str, "application/json", new StringEntity(jSONObject.toString(), "UTF-8"), cls, o000o0o0);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public boolean o0000oO() {
        return this.OoooO0 != null;
    }

    public T o0000oO0(Dialog dialog) {
        this.OoooO0O = dialog;
        return (T) o000O0O();
    }

    public T o0000oOO(Object obj) {
        this.OoooO0O = obj;
        return (T) o000O0O();
    }

    public T o0000oOo(String str, int i) {
        this.OoooOOO = new HttpHost(str, i);
        return (T) o000O0O();
    }

    public boolean o0000oo() {
        View view = this.OoooO0;
        if (view instanceof CompoundButton) {
            return ((CompoundButton) view).isChecked();
        }
        return false;
    }

    public <K> T o0000oo0(String str, String str2, HttpEntity httpEntity, Class<K> cls, o000O0O0<K> o000o0o0) {
        o000o0o0.url(str).type(cls).method(3).header("Content-Type", str2).param(o00O00.Oooo0o, httpEntity);
        return (T) OooO0OO(o000o0o0);
    }

    public <K> T o0000ooO(String str, JSONObject jSONObject, Class<K> cls, o000O0O0<K> o000o0o0) {
        try {
            return (T) o0000oo0(str, "application/json", new StringEntity(jSONObject.toString(), "UTF-8"), cls, o000o0o0);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public T o000O0(int i) {
        View view = this.OoooO0;
        if (view instanceof AdapterView) {
            ((AdapterView) view).setSelection(i);
        }
        return (T) o000O0O();
    }

    public T o000O00(int i) {
        View view = this.OoooO0;
        if (view instanceof AbsListView) {
            o00O000.OooOooO(view, "setOverScrollMode", false, false, OooooO0, Integer.valueOf(i));
        }
        return (T) o000O0O();
    }

    public T o000O000(View view) {
        this.Oooo0oo = view;
        this.OoooO0 = view;
        o000OoO();
        this.OoooO00 = null;
        return (T) o000O0O();
    }

    public T o000O0O() {
        return this;
    }

    public boolean o000O0O0(int i, boolean z, View view, ViewGroup viewGroup, String str) {
        return o00O000o.OooOO0O(i, -1, view, viewGroup, str);
    }

    public boolean o000O0Oo(int i, int i2, boolean z, View view, ViewGroup viewGroup, String str) {
        return o00O000o.OooOO0O(i, i2, view, viewGroup, str);
    }

    public T o000O0o(AbsListView.OnScrollListener onScrollListener) {
        if (this.OoooO0 instanceof AbsListView) {
            o000O00O().OooO0Oo(onScrollListener);
        }
        return (T) o000O0O();
    }

    @Deprecated
    public boolean o000O0o0(View view, ViewGroup viewGroup, String str, float f) {
        return o00O000o.OooOOO0(view, viewGroup, str, f, true);
    }

    @Deprecated
    public boolean o000O0oO(View view, ViewGroup viewGroup, String str, float f, boolean z) {
        return o00O000o.OooOOO0(view, viewGroup, str, f, z);
    }

    public T o000O0oo(Dialog dialog) {
        if (dialog != null) {
            try {
                dialog.show();
                OooooOo.put(dialog, null);
            } catch (Exception unused) {
            }
        }
        return (T) o000O0O();
    }

    public T o000OO(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        View view = this.OoooO0;
        if (view instanceof AdapterView) {
            ((AdapterView) view).setOnItemSelectedListener(onItemSelectedListener);
        }
        return (T) o000O0O();
    }

    public <K> T o000OO00(o000O0O0<K> o000o0o0) {
        OooO0OO(o000o0o0);
        o000o0o0.block();
        return (T) o000O0O();
    }

    public boolean o000OO0O(int i, View view, ViewGroup viewGroup, String str) {
        if (viewGroup instanceof ExpandableListView) {
            throw new IllegalArgumentException("Please use the other shouldDelay methods for expandable list.");
        }
        return o00O000o.OooOO0o(i, view, viewGroup, str);
    }

    public T o000OO0o(Object obj) {
        View view = this.OoooO0;
        if (view != null) {
            view.setTag(obj);
        }
        return (T) o000O0O();
    }

    public T o000OOO(int i) {
        View view = this.OoooO0;
        if (view instanceof TextView) {
            ((TextView) view).setText(i);
        }
        return (T) o000O0O();
    }

    public T o000OOo(File file, boolean z, int i, o000OO00 o000oo00) {
        if (o000oo00 == null) {
            o000oo00 = new o000OO00();
        }
        o000OO00 o000oo002 = o000oo00;
        o000oo002.file(file);
        return (T) o00000o0(file != null ? file.getAbsolutePath() : null, z, true, i, 0, o000oo002);
    }

    public T o000OOo0(int i, Object... objArr) {
        Context contextOoooOO0 = OoooOO0();
        if (contextOoooOO0 != null) {
            o000Oo00(contextOoooOO0.getString(i, objArr));
        }
        return (T) o000O0O();
    }

    public T o000OOoO(Spanned spanned) {
        View view = this.OoooO0;
        if (view instanceof TextView) {
            ((TextView) view).setText(spanned);
        }
        return (T) o000O0O();
    }

    public T o000Oo(int i) {
        View view = this.OoooO0;
        if (view instanceof TextView) {
            ((TextView) view).setTextColor(i);
        }
        return (T) o000O0O();
    }

    public T o000Oo0(int i, Paint paint) {
        View view = this.OoooO0;
        if (view != null) {
            o00O000.OooOooO(view, "setLayerType", false, false, OooooOO, Integer.valueOf(i), paint);
        }
        return (T) o000O0O();
    }

    public T o000Oo00(CharSequence charSequence) {
        View view = this.OoooO0;
        if (view instanceof TextView) {
            ((TextView) view).setText(charSequence);
        }
        return (T) o000O0O();
    }

    public T o000Oo0O(CharSequence charSequence, boolean z) {
        return (z && (charSequence == null || charSequence.length() == 0)) ? (T) o00Ooo() : (T) o000Oo00(charSequence);
    }

    public T o000Oo0o(Object obj, String str) {
        View view = this.OoooO0;
        if (view instanceof TextView) {
            ((TextView) view).addTextChangedListener(new o00O000o().OooO0OO(obj, str, true, Ooooo00));
        }
        return (T) o000O0O();
    }

    public void o000OoO() {
        this.OoooO = null;
        this.OoooO0O = null;
        this.OoooOO0 = null;
        this.o000oOoO = 0;
        this.OoooOOO = null;
    }

    public T o000OoOO(int i) {
        return (T) o000Oo(OoooOO0().getResources().getColor(i));
    }

    public T o000OoOo(float f) {
        View view = this.OoooO0;
        if (view instanceof TextView) {
            ((TextView) view).setTextSize(f);
        }
        return (T) o000O0O();
    }

    public T o000Ooo(Object obj, String str) {
        if (this.OoooO0 instanceof AbsListView) {
            o000O00O().OooO0OO(obj, str, true, OoooOoo);
        }
        return (T) o000O0O();
    }

    public T o000Ooo0(o0O0ooO o0o0ooo) {
        this.OoooOO0 = o0o0ooo;
        return (T) o000O0O();
    }

    public T o000OooO(boolean z) {
        View view = this.OoooO0;
        if (view != null) {
            o00O000.OooooOO(view, z);
        }
        return (T) o000O0O();
    }

    public T o000Oooo(Typeface typeface) {
        View view = this.OoooO0;
        if (view instanceof TextView) {
            ((TextView) view).setTypeface(typeface);
        }
        return (T) o000O0O();
    }

    public T o000o00() {
        return (T) o000o000(0);
    }

    public T o000o000(int i) {
        View view = this.OoooO0;
        if (view != null && view.getVisibility() != i) {
            this.OoooO0.setVisibility(i);
        }
        return (T) o000O0O();
    }

    public T o000o00O(String str) {
        return (T) o000o00o(str, true, false, -16777216);
    }

    public T o000o00o(String str, boolean z, boolean z3, int i) {
        if (this.OoooO0 instanceof WebView) {
            o000Oo0(1, null);
            new o00O00o0((WebView) this.OoooO0, str, this.OoooO0O, z, z3, i).OooO0oo();
            this.OoooO0O = null;
        }
        return (T) o000O0O();
    }

    public T o000o0O0(int i, boolean z) {
        o000O(true, i, z);
        return (T) o000O0O();
    }

    public EditText o000oOoO() {
        return (EditText) this.OoooO0;
    }

    public View o00O0O() {
        return this.OoooO0;
    }

    public WebView o00Oo0() {
        return (WebView) this.OoooO0;
    }

    public T o00Ooo() {
        return (T) o000o000(8);
    }

    public T o00o0O() {
        Activity activity = this.Oooo;
        if (activity != null) {
            activity.getWindow().setFlags(16777216, 16777216);
        }
        return (T) o000O0O();
    }

    public T o00oO0O(View view) {
        this.OoooO0 = view;
        o000OoO();
        return (T) o000O0O();
    }

    public T o00oO0o(int i) {
        return (T) o00oO0O(Oooo0OO(i));
    }

    public T o00ooo(int i) {
        o000O(false, i, true);
        return (T) o000O0O();
    }

    public T o0O0O00(File file, int i) {
        return (T) o000OOo(file, true, i, null);
    }

    public T o0OO00O(Drawable drawable) {
        View view = this.OoooO0;
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            imageView.setTag(o00O00.OooOo0O, null);
            imageView.setImageDrawable(drawable);
        }
        return (T) o000O0O();
    }

    public T o0OOO0o(Bitmap bitmap) {
        View view = this.OoooO0;
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            imageView.setTag(o00O00.OooOo0O, null);
            imageView.setImageBitmap(bitmap);
        }
        return (T) o000O0O();
    }

    public T o0Oo0oo(Bitmap bitmap, float f) {
        o000OO00 o000oo00 = new o000OO00();
        o000oo00.ratio(f).bitmap(bitmap);
        return (T) oo0o0Oo(o000oo00);
    }

    public T o0OoO0o(int i, Object obj) {
        View view = this.OoooO0;
        if (view != null) {
            view.setTag(i, obj);
        }
        return (T) o000O0O();
    }

    public CharSequence o0OoOo0() {
        View view = this.OoooO0;
        if (view instanceof TextView) {
            return ((TextView) view).getText();
        }
        return null;
    }

    public T o0ooOO0(String str) {
        return (T) o00oO0O(Oooo0o0(str));
    }

    public T o0ooOOo(int... iArr) {
        return (T) o00oO0O(Oooo0o(iArr));
    }

    public T o0ooOoO(int i) {
        View view = this.OoooO0;
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            imageView.setTag(o00O00.OooOo0O, null);
            if (i == 0) {
                imageView.setImageBitmap(null);
            } else {
                imageView.setImageResource(i);
            }
        }
        return (T) o000O0O();
    }

    public T oo000o(int i, boolean z) {
        o000O(false, i, z);
        return (T) o000O0O();
    }

    public T oo0o0Oo(o000OO00 o000oo00) {
        View view = this.OoooO0;
        if (view instanceof ImageView) {
            o000oo00.imageView((ImageView) view);
            o0000(o000oo00);
        }
        return (T) o000O0O();
    }

    public TextView ooOO() {
        return (TextView) this.OoooO0;
    }

    public T oooo00o(int i) {
        o000O(true, i, true);
        return (T) o000O0O();
    }
}
