package z2;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.widget.MediaController;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import pl.droidsonroids.gif.GifError;
import pl.droidsonroids.gif.GifInfoHandle;

/* JADX INFO: loaded from: classes2.dex */
public class ed0 extends Drawable implements Animatable, MediaController.MediaPlayerControl {
    public final ScheduledThreadPoolExecutor OoooOoO;
    public volatile boolean OoooOoo;
    public long Ooooo00;
    private final Rect Ooooo0o;
    public final Paint OooooO0;
    public final Bitmap OooooOO;
    public final GifInfoHandle OooooOo;
    private ColorStateList Oooooo;
    public final ConcurrentLinkedQueue<ad0> Oooooo0;
    private PorterDuffColorFilter OoooooO;
    private PorterDuff.Mode Ooooooo;
    private final qd0 o00O0O;
    private final Rect o00Oo0;
    public ScheduledFuture<?> o00Ooo;
    private int o00o0O;
    private int o00ooo;
    public final boolean o0OoOo0;
    private ud0 oo000o;
    public final md0 ooOO;

    public class OooO00o extends rd0 {
        public OooO00o(ed0 ed0Var) {
            super(ed0Var);
        }

        @Override // z2.rd0
        public void OooO00o() {
            if (ed0.this.OooooOo.OooOoo()) {
                ed0.this.start();
            }
        }
    }

    public class OooO0O0 extends rd0 {
        public final /* synthetic */ int OoooOoo;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0O0(ed0 ed0Var, int i) {
            super(ed0Var);
            this.OoooOoo = i;
        }

        @Override // z2.rd0
        public void OooO00o() {
            ed0 ed0Var = ed0.this;
            ed0Var.OooooOo.Oooo0(this.OoooOoo, ed0Var.OooooOO);
            this.OoooOoO.ooOO.sendEmptyMessageAtTime(-1, 0L);
        }
    }

    public class OooO0OO extends rd0 {
        public final /* synthetic */ int OoooOoo;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO0OO(ed0 ed0Var, int i) {
            super(ed0Var);
            this.OoooOoo = i;
        }

        @Override // z2.rd0
        public void OooO00o() {
            ed0 ed0Var = ed0.this;
            ed0Var.OooooOo.Oooo00O(this.OoooOoo, ed0Var.OooooOO);
            ed0.this.ooOO.sendEmptyMessageAtTime(-1, 0L);
        }
    }

    public ed0(@Nullable ContentResolver contentResolver, @NonNull Uri uri) throws IOException {
        this(GifInfoHandle.OooOoO0(contentResolver, uri), null, null, true);
    }

    public ed0(@NonNull AssetFileDescriptor assetFileDescriptor) throws IOException {
        this(new GifInfoHandle(assetFileDescriptor), null, null, true);
    }

    public ed0(@NonNull AssetManager assetManager, @NonNull String str) throws IOException {
        this(assetManager.openFd(str));
    }

    public ed0(@NonNull Resources resources, @DrawableRes @RawRes int i) throws Resources.NotFoundException, IOException {
        this(resources.openRawResourceFd(i));
        float fOooO0O0 = kd0.OooO0O0(resources, i);
        this.o00ooo = (int) (this.OooooOo.OooO() * fOooO0O0);
        this.o00o0O = (int) (this.OooooOo.OooOOo0() * fOooO0O0);
    }

    public ed0(@NonNull File file) throws IOException {
        this(file.getPath());
    }

    public ed0(@NonNull FileDescriptor fileDescriptor) throws IOException {
        this(new GifInfoHandle(fileDescriptor), null, null, true);
    }

    public ed0(@NonNull InputStream inputStream) throws IOException {
        this(new GifInfoHandle(inputStream), null, null, true);
    }

    public ed0(@NonNull String str) throws IOException {
        this(new GifInfoHandle(str), null, null, true);
    }

    public ed0(@NonNull ByteBuffer byteBuffer) throws IOException {
        this(new GifInfoHandle(byteBuffer), null, null, true);
    }

    public ed0(GifInfoHandle gifInfoHandle, ed0 ed0Var, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, boolean z) {
        this.OoooOoo = true;
        this.Ooooo00 = Long.MIN_VALUE;
        this.Ooooo0o = new Rect();
        this.OooooO0 = new Paint(6);
        this.Oooooo0 = new ConcurrentLinkedQueue<>();
        qd0 qd0Var = new qd0(this);
        this.o00O0O = qd0Var;
        this.o0OoOo0 = z;
        this.OoooOoO = scheduledThreadPoolExecutor == null ? id0.OooO00o() : scheduledThreadPoolExecutor;
        this.OooooOo = gifInfoHandle;
        Bitmap bitmap = null;
        if (ed0Var != null) {
            synchronized (ed0Var.OooooOo) {
                if (!ed0Var.OooooOo.OooOo0o() && ed0Var.OooooOo.OooO() >= gifInfoHandle.OooO() && ed0Var.OooooOo.OooOOo0() >= gifInfoHandle.OooOOo0()) {
                    ed0Var.Oooo0();
                    Bitmap bitmap2 = ed0Var.OooooOO;
                    bitmap2.eraseColor(0);
                    bitmap = bitmap2;
                }
            }
        }
        if (bitmap == null) {
            this.OooooOO = Bitmap.createBitmap(gifInfoHandle.OooOOo0(), gifInfoHandle.OooO(), Bitmap.Config.ARGB_8888);
        } else {
            this.OooooOO = bitmap;
        }
        this.OooooOO.setHasAlpha(!gifInfoHandle.OooOo0O());
        this.o00Oo0 = new Rect(0, 0, gifInfoHandle.OooOOo0(), gifInfoHandle.OooO());
        this.ooOO = new md0(this);
        qd0Var.OooO00o();
        this.o00o0O = gifInfoHandle.OooOOo0();
        this.o00ooo = gifInfoHandle.OooO();
    }

    public ed0(@NonNull ld0 ld0Var, @Nullable ed0 ed0Var, @Nullable ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, boolean z, @NonNull hd0 hd0Var) throws IOException {
        this(ld0Var.OooO0O0(hd0Var), ed0Var, scheduledThreadPoolExecutor, z);
    }

    public ed0(@NonNull byte[] bArr) throws IOException {
        this(new GifInfoHandle(bArr), null, null, true);
    }

    private void OooO0O0() {
        ScheduledFuture<?> scheduledFuture = this.o00Ooo;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.ooOO.removeMessages(-1);
    }

    @Nullable
    public static ed0 OooO0OO(@NonNull Resources resources, @DrawableRes @RawRes int i) {
        try {
            return new ed0(resources, i);
        } catch (IOException unused) {
            return null;
        }
    }

    private void OooOoO() {
        if (this.o0OoOo0 && this.OoooOoo) {
            long j = this.Ooooo00;
            if (j != Long.MIN_VALUE) {
                long jMax = Math.max(0L, j - SystemClock.uptimeMillis());
                this.Ooooo00 = Long.MIN_VALUE;
                this.OoooOoO.remove(this.o00O0O);
                this.o00Ooo = this.OoooOoO.schedule(this.o00O0O, jMax, TimeUnit.MILLISECONDS);
            }
        }
    }

    private void Oooo0() {
        this.OoooOoo = false;
        this.ooOO.removeMessages(-1);
        this.OooooOo.OooOoOO();
    }

    private PorterDuffColorFilter Oooo0OO(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public int OooO() {
        int iOooO0o0 = this.OooooOo.OooO0o0();
        return (iOooO0o0 == 0 || iOooO0o0 < this.OooooOo.OooOO0()) ? iOooO0o0 : iOooO0o0 - 1;
    }

    public void OooO00o(@NonNull ad0 ad0Var) {
        this.Oooooo0.add(ad0Var);
    }

    public long OooO0Oo() {
        return this.OooooOo.OooO0O0() + ((long) (Build.VERSION.SDK_INT >= 19 ? this.OooooOO.getAllocationByteCount() : OooOO0O()));
    }

    @FloatRange(from = 0.0d)
    public float OooO0o() {
        ud0 ud0Var = this.oo000o;
        if (ud0Var instanceof td0) {
            return ((td0) ud0Var).OooO0Oo();
        }
        return 0.0f;
    }

    @Nullable
    public String OooO0o0() {
        return this.OooooOo.OooO0OO();
    }

    public Bitmap OooO0oO() {
        Bitmap bitmap = this.OooooOO;
        Bitmap bitmapCopy = bitmap.copy(bitmap.getConfig(), this.OooooOO.isMutable());
        bitmapCopy.setHasAlpha(this.OooooOO.hasAlpha());
        return bitmapCopy;
    }

    public int OooO0oo() {
        return this.OooooOo.OooO0Oo();
    }

    @NonNull
    public GifError OooOO0() {
        return GifError.fromCode(this.OooooOo.OooOO0o());
    }

    public int OooOO0O() {
        return this.OooooOO.getRowBytes() * this.OooooOO.getHeight();
    }

    public int OooOO0o(@IntRange(from = 0) int i) {
        return this.OooooOo.OooO0oo(i);
    }

    public int OooOOO() {
        return this.OooooOo.OooOO0();
    }

    public long OooOOO0() {
        return this.OooooOo.OooOOOo();
    }

    public long OooOOOO() {
        return this.OooooOo.OooOO0O();
    }

    public int OooOOOo() {
        return this.OooooOo.OooOOO();
    }

    public int OooOOo(@IntRange(from = 0) int i, @IntRange(from = 0) int i2) {
        if (i >= this.OooooOo.OooOOo0()) {
            throw new IllegalArgumentException("x must be < width");
        }
        if (i2 < this.OooooOo.OooO()) {
            return this.OooooOO.getPixel(i, i2);
        }
        throw new IllegalArgumentException("y must be < height");
    }

    @NonNull
    public final Paint OooOOo0() {
        return this.OooooO0;
    }

    public void OooOOoo(@NonNull int[] iArr) {
        this.OooooOO.getPixels(iArr, 0, this.OooooOo.OooOOo0(), 0, 0, this.OooooOo.OooOOo0(), this.OooooOo.OooO());
    }

    public boolean OooOo(ad0 ad0Var) {
        return this.Oooooo0.remove(ad0Var);
    }

    public boolean OooOo0() {
        return this.OooooOo.OooOo0();
    }

    @Nullable
    public ud0 OooOo00() {
        return this.oo000o;
    }

    public boolean OooOo0O() {
        return this.OooooOo.OooOo0o();
    }

    public void OooOo0o() {
        Oooo0();
        this.OooooOO.recycle();
    }

    public void OooOoO0() {
        this.OoooOoO.execute(new OooO00o(this));
    }

    public void OooOoOO(@IntRange(from = 0, to = 2147483647L) int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Position is not positive");
        }
        synchronized (this.OooooOo) {
            this.OooooOo.Oooo0(i, this.OooooOO);
        }
        this.ooOO.sendEmptyMessageAtTime(-1, 0L);
    }

    public Bitmap OooOoo(@IntRange(from = 0, to = 2147483647L) int i) {
        Bitmap bitmapOooO0oO;
        if (i < 0) {
            throw new IndexOutOfBoundsException("Frame index is not positive");
        }
        synchronized (this.OooooOo) {
            this.OooooOo.Oooo00O(i, this.OooooOO);
            bitmapOooO0oO = OooO0oO();
        }
        this.ooOO.sendEmptyMessageAtTime(-1, 0L);
        return bitmapOooO0oO;
    }

    public void OooOoo0(@IntRange(from = 0, to = 2147483647L) int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Frame index is not positive");
        }
        this.OoooOoO.execute(new OooO0OO(this, i));
    }

    public Bitmap OooOooO(@IntRange(from = 0, to = 2147483647L) int i) {
        Bitmap bitmapOooO0oO;
        if (i < 0) {
            throw new IllegalArgumentException("Position is not positive");
        }
        synchronized (this.OooooOo) {
            this.OooooOo.Oooo0(i, this.OooooOO);
            bitmapOooO0oO = OooO0oO();
        }
        this.ooOO.sendEmptyMessageAtTime(-1, 0L);
        return bitmapOooO0oO;
    }

    public void OooOooo(@FloatRange(from = 0.0d) float f) {
        td0 td0Var = new td0(f);
        this.oo000o = td0Var;
        td0Var.OooO0O0(this.Ooooo0o);
    }

    public void Oooo000(@IntRange(from = 0, to = d00.OooOOoo) int i) {
        this.OooooOo.Oooo0O0(i);
    }

    public void Oooo00O(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        this.OooooOo.Oooo0o0(f);
    }

    public void Oooo00o(@Nullable ud0 ud0Var) {
        this.oo000o = ud0Var;
        if (ud0Var != null) {
            ud0Var.OooO0O0(this.Ooooo0o);
        }
    }

    public void Oooo0O0(long j) {
        if (this.o0OoOo0) {
            this.Ooooo00 = 0L;
            this.ooOO.sendEmptyMessageAtTime(-1, 0L);
        } else {
            OooO0O0();
            this.o00Ooo = this.OoooOoO.schedule(this.o00O0O, Math.max(j, 0L), TimeUnit.MILLISECONDS);
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return OooOOOo() > 1;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return OooOOOo() > 1;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        boolean z;
        if (this.OoooooO == null || this.OooooO0.getColorFilter() != null) {
            z = false;
        } else {
            this.OooooO0.setColorFilter(this.OoooooO);
            z = true;
        }
        ud0 ud0Var = this.oo000o;
        if (ud0Var == null) {
            canvas.drawBitmap(this.OooooOO, this.o00Oo0, this.Ooooo0o, this.OooooO0);
        } else {
            ud0Var.OooO00o(canvas, this.OooooO0, this.OooooOO);
        }
        if (z) {
            this.OooooO0.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.OooooO0.getAlpha();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        return 100;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.OooooO0.getColorFilter();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        return this.OooooOo.OooO0o();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        return this.OooooOo.OooO0oO();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.o00ooo;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.o00o0O;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return (!this.OooooOo.OooOo0O() || this.OooooO0.getAlpha() < 255) ? -2 : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        OooOoO();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return this.OoooOoo;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.OoooOoo;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        return super.isStateful() || ((colorStateList = this.Oooooo) != null && colorStateList.isStateful());
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.Ooooo0o.set(rect);
        ud0 ud0Var = this.oo000o;
        if (ud0Var != null) {
            ud0Var.OooO0O0(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.Oooooo;
        if (colorStateList == null || (mode = this.Ooooooo) == null) {
            return false;
        }
        this.OoooooO = Oooo0OO(colorStateList, mode);
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
        stop();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(@IntRange(from = 0, to = 2147483647L) int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Position is not positive");
        }
        this.OoooOoO.execute(new OooO0O0(this, i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i) {
        this.OooooO0.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.OooooO0.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.OooooO0.setDither(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.OooooO0.setFilterBitmap(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.Oooooo = colorStateList;
        this.OoooooO = Oooo0OO(colorStateList, this.Ooooooo);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        this.Ooooooo = mode;
        this.OoooooO = Oooo0OO(this.Oooooo, mode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z3) {
        boolean visible = super.setVisible(z, z3);
        if (!this.o0OoOo0) {
            if (z) {
                if (z3) {
                    OooOoO0();
                }
                if (visible) {
                    start();
                }
            } else if (visible) {
                stop();
            }
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable, android.widget.MediaController.MediaPlayerControl
    public void start() {
        synchronized (this) {
            if (this.OoooOoo) {
                return;
            }
            this.OoooOoo = true;
            Oooo0O0(this.OooooOo.OooOooO());
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        synchronized (this) {
            if (this.OoooOoo) {
                this.OoooOoo = false;
                OooO0O0();
                this.OooooOo.Oooo000();
            }
        }
    }

    @NonNull
    public String toString() {
        return String.format(Locale.ENGLISH, "GIF: size: %dx%d, frames: %d, error: %d", Integer.valueOf(this.OooooOo.OooOOo0()), Integer.valueOf(this.OooooOo.OooO()), Integer.valueOf(this.OooooOo.OooOOO()), Integer.valueOf(this.OooooOo.OooOO0o()));
    }
}
