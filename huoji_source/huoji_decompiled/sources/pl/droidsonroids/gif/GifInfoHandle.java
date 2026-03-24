package pl.droidsonroids.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.system.ErrnoException;
import android.system.Os;
import android.view.Surface;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.RequiresApi;
import com.anythink.expressad.foundation.d.c;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import z2.d00;
import z2.nd0;

/* JADX INFO: loaded from: classes2.dex */
public final class GifInfoHandle {
    private volatile long OooO00o;

    static {
        nd0.OooO0OO();
    }

    public GifInfoHandle() {
    }

    public GifInfoHandle(AssetFileDescriptor assetFileDescriptor) throws IOException {
        try {
            this.OooO00o = OooOo(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), false);
        } finally {
            try {
                assetFileDescriptor.close();
            } catch (IOException unused) {
            }
        }
    }

    public GifInfoHandle(FileDescriptor fileDescriptor) throws GifIOException {
        this.OooO00o = OooOo(fileDescriptor, 0L, true);
    }

    public GifInfoHandle(InputStream inputStream) throws GifIOException {
        if (!inputStream.markSupported()) {
            throw new IllegalArgumentException("InputStream does not support marking");
        }
        this.OooO00o = openStream(inputStream);
    }

    public GifInfoHandle(String str) throws GifIOException {
        this.OooO00o = openFile(str);
    }

    public GifInfoHandle(ByteBuffer byteBuffer) throws GifIOException {
        this.OooO00o = openDirectByteBuffer(byteBuffer);
    }

    public GifInfoHandle(byte[] bArr) throws GifIOException {
        this.OooO00o = openByteArray(bArr);
    }

    @RequiresApi(21)
    private static int OooOOO0(FileDescriptor fileDescriptor, boolean z) throws GifIOException, ErrnoException {
        try {
            int iCreateTempNativeFileDescriptor = createTempNativeFileDescriptor();
            Os.dup2(fileDescriptor, iCreateTempNativeFileDescriptor);
            return iCreateTempNativeFileDescriptor;
        } finally {
            if (z) {
                Os.close(fileDescriptor);
            }
        }
    }

    private static long OooOo(FileDescriptor fileDescriptor, long j, boolean z) throws GifIOException {
        int iOooOOO0;
        if (Build.VERSION.SDK_INT > 27) {
            try {
                iOooOOO0 = OooOOO0(fileDescriptor, z);
            } catch (Exception e) {
                throw new GifIOException(GifError.OPEN_FAILED.errorCode, e.getMessage());
            }
        } else {
            iOooOOO0 = extractNativeFileDescriptor(fileDescriptor, z);
        }
        return openNativeFileDescriptor(iOooOOO0, j);
    }

    public static GifInfoHandle OooOoO0(ContentResolver contentResolver, Uri uri) throws IOException {
        if ("file".equals(uri.getScheme())) {
            return new GifInfoHandle(uri.getPath());
        }
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, c.bk);
        if (assetFileDescriptorOpenAssetFileDescriptor != null) {
            return new GifInfoHandle(assetFileDescriptorOpenAssetFileDescriptor);
        }
        throw new IOException("Could not open AssetFileDescriptor for " + uri);
    }

    private void Oooo0oo(@IntRange(from = 0) int i) {
        int numberOfFrames = getNumberOfFrames(this.OooO00o);
        if (i < 0 || i >= numberOfFrames) {
            throw new IndexOutOfBoundsException("Frame index is not in range <0;" + numberOfFrames + '>');
        }
    }

    private static native void bindSurface(long j, Surface surface, long[] jArr);

    public static native int createTempNativeFileDescriptor() throws GifIOException;

    public static native int extractNativeFileDescriptor(FileDescriptor fileDescriptor, boolean z) throws GifIOException;

    private static native void free(long j);

    private static native long getAllocationByteCount(long j);

    private static native String getComment(long j);

    private static native int getCurrentFrameIndex(long j);

    private static native int getCurrentLoop(long j);

    private static native int getCurrentPosition(long j);

    private static native int getDuration(long j);

    private static native int getFrameDuration(long j, int i);

    private static native int getHeight(long j);

    private static native int getLoopCount(long j);

    private static native long getMetadataByteCount(long j);

    private static native int getNativeErrorCode(long j);

    private static native int getNumberOfFrames(long j);

    private static native long[] getSavedState(long j);

    private static native long getSourceLength(long j);

    private static native int getWidth(long j);

    private static native void glTexImage2D(long j, int i, int i2);

    private static native void glTexSubImage2D(long j, int i, int i2);

    private static native void initTexImageDescriptor(long j);

    private static native boolean isAnimationCompleted(long j);

    private static native boolean isOpaque(long j);

    public static native long openByteArray(byte[] bArr) throws GifIOException;

    public static native long openDirectByteBuffer(ByteBuffer byteBuffer) throws GifIOException;

    public static native long openFile(String str) throws GifIOException;

    public static native long openNativeFileDescriptor(int i, long j) throws GifIOException;

    public static native long openStream(InputStream inputStream) throws GifIOException;

    private static native void postUnbindSurface(long j);

    private static native long renderFrame(long j, Bitmap bitmap);

    private static native boolean reset(long j);

    private static native long restoreRemainder(long j);

    private static native int restoreSavedState(long j, long[] jArr, Bitmap bitmap);

    private static native void saveRemainder(long j);

    private static native void seekToFrame(long j, int i, Bitmap bitmap);

    private static native void seekToFrameGL(long j, int i);

    private static native void seekToTime(long j, int i, Bitmap bitmap);

    private static native void setLoopCount(long j, char c);

    private static native void setOptions(long j, char c, boolean z);

    private static native void setSpeedFactor(long j, float f);

    private static native void startDecoderThread(long j);

    private static native void stopDecoderThread(long j);

    public synchronized int OooO() {
        return getHeight(this.OooO00o);
    }

    public void OooO00o(Surface surface, long[] jArr) {
        bindSurface(this.OooO00o, surface, jArr);
    }

    public synchronized long OooO0O0() {
        return getAllocationByteCount(this.OooO00o);
    }

    public synchronized String OooO0OO() {
        return getComment(this.OooO00o);
    }

    public synchronized int OooO0Oo() {
        return getCurrentFrameIndex(this.OooO00o);
    }

    public synchronized int OooO0o() {
        return getCurrentPosition(this.OooO00o);
    }

    public synchronized int OooO0o0() {
        return getCurrentLoop(this.OooO00o);
    }

    public synchronized int OooO0oO() {
        return getDuration(this.OooO00o);
    }

    public synchronized int OooO0oo(@IntRange(from = 0) int i) {
        Oooo0oo(i);
        return getFrameDuration(this.OooO00o, i);
    }

    public synchronized int OooOO0() {
        return getLoopCount(this.OooO00o);
    }

    public synchronized long OooOO0O() {
        return getMetadataByteCount(this.OooO00o);
    }

    public synchronized int OooOO0o() {
        return getNativeErrorCode(this.OooO00o);
    }

    public synchronized int OooOOO() {
        return getNumberOfFrames(this.OooO00o);
    }

    public synchronized long[] OooOOOO() {
        return getSavedState(this.OooO00o);
    }

    public synchronized long OooOOOo() {
        return getSourceLength(this.OooO00o);
    }

    public void OooOOo(int i, int i2) {
        glTexImage2D(this.OooO00o, i, i2);
    }

    public synchronized int OooOOo0() {
        return getWidth(this.OooO00o);
    }

    public void OooOOoo(int i, int i2) {
        glTexSubImage2D(this.OooO00o, i, i2);
    }

    public synchronized boolean OooOo0() {
        return isAnimationCompleted(this.OooO00o);
    }

    public void OooOo00() {
        initTexImageDescriptor(this.OooO00o);
    }

    public synchronized boolean OooOo0O() {
        return isOpaque(this.OooO00o);
    }

    public synchronized boolean OooOo0o() {
        return this.OooO00o == 0;
    }

    public synchronized void OooOoO() {
        postUnbindSurface(this.OooO00o);
    }

    public synchronized void OooOoOO() {
        free(this.OooO00o);
        this.OooO00o = 0L;
    }

    public synchronized boolean OooOoo() {
        return reset(this.OooO00o);
    }

    public synchronized long OooOoo0(Bitmap bitmap) {
        return renderFrame(this.OooO00o, bitmap);
    }

    public synchronized long OooOooO() {
        return restoreRemainder(this.OooO00o);
    }

    public synchronized int OooOooo(long[] jArr, Bitmap bitmap) {
        return restoreSavedState(this.OooO00o, jArr, bitmap);
    }

    public synchronized void Oooo0(@IntRange(from = 0, to = 2147483647L) int i, Bitmap bitmap) {
        seekToTime(this.OooO00o, i, bitmap);
    }

    public synchronized void Oooo000() {
        saveRemainder(this.OooO00o);
    }

    public synchronized void Oooo00O(@IntRange(from = 0, to = 2147483647L) int i, Bitmap bitmap) {
        seekToFrame(this.OooO00o, i, bitmap);
    }

    public void Oooo00o(@IntRange(from = 0) int i) {
        Oooo0oo(i);
        seekToFrameGL(this.OooO00o, i);
    }

    public void Oooo0O0(@IntRange(from = 0, to = d00.OooOOoo) int i) {
        if (i < 0 || i > 65535) {
            throw new IllegalArgumentException("Loop count of range <0, 65535>");
        }
        synchronized (this) {
            setLoopCount(this.OooO00o, (char) i);
        }
    }

    public void Oooo0OO(char c, boolean z) {
        setOptions(this.OooO00o, c, z);
    }

    public void Oooo0o() {
        startDecoderThread(this.OooO00o);
    }

    public void Oooo0o0(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        if (f <= 0.0f || Float.isNaN(f)) {
            throw new IllegalArgumentException("Speed factor is not positive");
        }
        if (f < 4.656613E-10f) {
            f = 4.656613E-10f;
        }
        synchronized (this) {
            setSpeedFactor(this.OooO00o, f);
        }
    }

    public void Oooo0oO() {
        stopDecoderThread(this.OooO00o);
    }

    public void finalize() throws Throwable {
        try {
            OooOoOO();
        } finally {
            super.finalize();
        }
    }
}
