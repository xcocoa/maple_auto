package com.anythink.core.common.o;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.os.Build;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import androidx.recyclerview.widget.ItemTouchHelper;
import java.io.FileDescriptor;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    public interface a {
        void a();

        void a(Bitmap bitmap);
    }

    private static int a(int i, int i2, int i3, int i4) {
        int i5 = 1;
        if (i3 <= 0 && i4 <= 0) {
            return 1;
        }
        while (i / i5 > i3 && i2 / i5 > i4) {
            i5 *= 2;
        }
        return i5;
    }

    private static Bitmap a(Context context, int i, int i2, int i3) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeResource(context.getResources(), i, options);
            options.inSampleSize = a(options.outWidth, options.outHeight, i2, i3);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeResource(context.getResources(), i, options);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x009c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap a(Context context, Bitmap bitmap) {
        RenderScript renderScriptCreate;
        Allocation allocationCreateFromBitmap;
        ScriptIntrinsicBlur scriptIntrinsicBlurCreate;
        Allocation allocationCreateFromBitmap2;
        ScriptIntrinsicBlur scriptIntrinsicBlur;
        Allocation allocation;
        RenderScript renderScript = null;
        if (bitmap.isRecycled()) {
            com.anythink.core.common.n.e.a("Error", "Error, cannot access an invalid/free'd bitmap here!", com.anythink.core.common.b.n.a().q());
            return null;
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth() / 3, bitmap.getHeight() / 3, Bitmap.Config.ARGB_8888);
            if (Build.VERSION.SDK_INT >= 17) {
                renderScriptCreate = RenderScript.create(context);
                try {
                    scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
                    try {
                        allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap);
                        try {
                            allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
                            try {
                                scriptIntrinsicBlurCreate.setRadius(25.0f);
                                scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
                                scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
                                allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap);
                                new Canvas(bitmapCreateBitmap).drawColor(855638016);
                                renderScript = renderScriptCreate;
                                scriptIntrinsicBlur = scriptIntrinsicBlurCreate;
                                allocation = allocationCreateFromBitmap2;
                            } catch (Throwable th) {
                                th = th;
                                try {
                                    th.printStackTrace();
                                    if (renderScriptCreate != null) {
                                    }
                                    if (scriptIntrinsicBlurCreate != 0) {
                                    }
                                    if (allocationCreateFromBitmap != null) {
                                    }
                                    if (allocationCreateFromBitmap2 != 0) {
                                    }
                                    return null;
                                } finally {
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            allocationCreateFromBitmap2 = 0;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        allocationCreateFromBitmap = null;
                        allocationCreateFromBitmap2 = 0;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    allocationCreateFromBitmap = null;
                    scriptIntrinsicBlurCreate = allocationCreateFromBitmap;
                    allocationCreateFromBitmap2 = scriptIntrinsicBlurCreate;
                    th.printStackTrace();
                    if (renderScriptCreate != null) {
                        try {
                            renderScriptCreate.destroy();
                        } catch (Throwable unused) {
                        }
                    }
                    if (scriptIntrinsicBlurCreate != 0) {
                        try {
                            scriptIntrinsicBlurCreate.destroy();
                        } catch (Throwable unused2) {
                        }
                    }
                    if (allocationCreateFromBitmap != null) {
                        try {
                            allocationCreateFromBitmap.destroy();
                        } catch (Throwable unused3) {
                        }
                    }
                    if (allocationCreateFromBitmap2 != 0) {
                        try {
                            allocationCreateFromBitmap2.destroy();
                        } catch (Throwable unused4) {
                        }
                    }
                    return null;
                }
            } else {
                bitmapCreateBitmap = a(bitmapCreateBitmap);
                allocationCreateFromBitmap = null;
                scriptIntrinsicBlur = null;
                allocation = null;
            }
            if (renderScript != null) {
                try {
                    renderScript.destroy();
                } catch (Throwable unused5) {
                }
            }
            if (scriptIntrinsicBlur != null) {
                try {
                    scriptIntrinsicBlur.destroy();
                } catch (Throwable unused6) {
                }
            }
            if (allocationCreateFromBitmap != null) {
                try {
                    allocationCreateFromBitmap.destroy();
                } catch (Throwable unused7) {
                }
            }
            if (allocation != null) {
                try {
                    allocation.destroy();
                } catch (Throwable unused8) {
                }
            }
            return bitmapCreateBitmap;
        } catch (Throwable th5) {
            th = th5;
            renderScriptCreate = null;
            allocationCreateFromBitmap = null;
        }
    }

    private static Bitmap a(Bitmap bitmap) {
        int i;
        int i2;
        int[] iArr;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i3 = width * height;
        int[] iArr2 = new int[i3];
        bitmap.getPixels(iArr2, 0, width, 0, 0, width, height);
        int i4 = width - 1;
        int i5 = height - 1;
        int[] iArr3 = new int[i3];
        int[] iArr4 = new int[i3];
        int[] iArr5 = new int[i3];
        int[] iArr6 = new int[Math.max(width, height)];
        int[] iArr7 = new int[173056];
        for (int i6 = 0; i6 < 173056; i6++) {
            iArr7[i6] = i6 / 676;
        }
        int[][] iArr8 = (int[][]) Array.newInstance((Class<?>) int.class, 51, 3);
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int i10 = 25;
            if (i7 >= height) {
                break;
            }
            int i11 = -25;
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            int i16 = 0;
            int i17 = 0;
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            while (true) {
                i2 = height;
                if (i11 > i10) {
                    break;
                }
                int i21 = iArr2[Math.min(i4, Math.max(i11, 0)) + i8];
                int[] iArr9 = iArr8[i11 + 25];
                iArr9[0] = (i21 & ItemTouchHelper.ACTION_MODE_DRAG_MASK) >> 16;
                iArr9[1] = (i21 & 65280) >> 8;
                iArr9[2] = i21 & 255;
                int iAbs = 26 - Math.abs(i11);
                i12 += iArr9[0] * iAbs;
                i13 += iArr9[1] * iAbs;
                i14 += iArr9[2] * iAbs;
                if (i11 > 0) {
                    i18 += iArr9[0];
                    i19 += iArr9[1];
                    i20 += iArr9[2];
                } else {
                    i15 += iArr9[0];
                    i16 += iArr9[1];
                    i17 += iArr9[2];
                }
                i11++;
                height = i2;
                i10 = 25;
            }
            int i22 = 25;
            int i23 = 0;
            while (i23 < width) {
                iArr3[i8] = iArr7[i12];
                iArr4[i8] = iArr7[i13];
                iArr5[i8] = iArr7[i14];
                int i24 = i12 - i15;
                int i25 = i13 - i16;
                int i26 = i14 - i17;
                int[] iArr10 = iArr8[((i22 - 25) + 51) % 51];
                int i27 = i15 - iArr10[0];
                int i28 = i16 - iArr10[1];
                int i29 = i17 - iArr10[2];
                if (i7 == 0) {
                    iArr = iArr7;
                    iArr6[i23] = Math.min(i23 + 25 + 1, i4);
                } else {
                    iArr = iArr7;
                }
                int i30 = iArr2[iArr6[i23] + i9];
                iArr10[0] = (i30 & ItemTouchHelper.ACTION_MODE_DRAG_MASK) >> 16;
                iArr10[1] = (i30 & 65280) >> 8;
                iArr10[2] = i30 & 255;
                int i31 = i18 + iArr10[0];
                int i32 = i19 + iArr10[1];
                int i33 = i20 + iArr10[2];
                i12 = i24 + i31;
                i13 = i25 + i32;
                i14 = i26 + i33;
                i22 = (i22 + 1) % 51;
                int[] iArr11 = iArr8[i22 % 51];
                i15 = i27 + iArr11[0];
                i16 = i28 + iArr11[1];
                i17 = i29 + iArr11[2];
                i18 = i31 - iArr11[0];
                i19 = i32 - iArr11[1];
                i20 = i33 - iArr11[2];
                i8++;
                i23++;
                iArr7 = iArr;
            }
            i9 += width;
            i7++;
            height = i2;
        }
        int[] iArr12 = iArr7;
        int i34 = height;
        int i35 = 0;
        while (i35 < width) {
            int i36 = width * (-25);
            int[] iArr13 = iArr6;
            int[] iArr14 = iArr2;
            int i37 = -25;
            int i38 = 0;
            int i39 = 0;
            int i40 = 0;
            int i41 = 0;
            int i42 = 0;
            int i43 = 0;
            int i44 = 0;
            int i45 = 0;
            int i46 = 0;
            for (int i47 = 25; i37 <= i47; i47 = 25) {
                int iMax = Math.max(0, i36) + i35;
                int[] iArr15 = iArr8[i37 + 25];
                iArr15[0] = iArr3[iMax];
                iArr15[1] = iArr4[iMax];
                iArr15[2] = iArr5[iMax];
                int iAbs2 = 26 - Math.abs(i37);
                i38 += iArr3[iMax] * iAbs2;
                i39 += iArr4[iMax] * iAbs2;
                i40 += iArr5[iMax] * iAbs2;
                if (i37 > 0) {
                    i44 += iArr15[0];
                    i45 += iArr15[1];
                    i46 += iArr15[2];
                } else {
                    i41 += iArr15[0];
                    i42 += iArr15[1];
                    i43 += iArr15[2];
                }
                if (i37 < i5) {
                    i36 += width;
                }
                i37++;
            }
            int i48 = i35;
            int i49 = i34;
            int i50 = 0;
            int i51 = 25;
            while (i50 < i49) {
                iArr14[i48] = (iArr14[i48] & (-16777216)) | (iArr12[i38] << 16) | (iArr12[i39] << 8) | iArr12[i40];
                int i52 = i38 - i41;
                int i53 = i39 - i42;
                int i54 = i40 - i43;
                int[] iArr16 = iArr8[((i51 - 25) + 51) % 51];
                int i55 = i41 - iArr16[0];
                int i56 = i42 - iArr16[1];
                int i57 = i43 - iArr16[2];
                if (i35 == 0) {
                    i = i49;
                    iArr13[i50] = Math.min(i50 + 26, i5) * width;
                } else {
                    i = i49;
                }
                int i58 = iArr13[i50] + i35;
                iArr16[0] = iArr3[i58];
                iArr16[1] = iArr4[i58];
                iArr16[2] = iArr5[i58];
                int i59 = i44 + iArr16[0];
                int i60 = i45 + iArr16[1];
                int i61 = i46 + iArr16[2];
                i38 = i52 + i59;
                i39 = i53 + i60;
                i40 = i54 + i61;
                i51 = (i51 + 1) % 51;
                int[] iArr17 = iArr8[i51];
                i41 = i55 + iArr17[0];
                i42 = i56 + iArr17[1];
                i43 = i57 + iArr17[2];
                i44 = i59 - iArr17[0];
                i45 = i60 - iArr17[1];
                i46 = i61 - iArr17[2];
                i48 += width;
                i50++;
                i49 = i;
            }
            i34 = i49;
            i35++;
            iArr6 = iArr13;
            iArr2 = iArr14;
        }
        bitmap.setPixels(iArr2, 0, width, 0, 0, width, i34);
        return bitmap;
    }

    public static Bitmap a(FileDescriptor fileDescriptor, int i, int i2) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
            options.inSampleSize = a(options.outWidth, options.outHeight, i, i2);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static Bitmap a(String str, int i, int i2) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            options.inSampleSize = a(options.outWidth, options.outHeight, i, i2);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFile(str, options);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } catch (OutOfMemoryError unused) {
            return null;
        }
    }

    public static void a(final Context context, final Bitmap bitmap, final a aVar) {
        com.anythink.core.common.b.n.a();
        com.anythink.core.common.b.n.c(new Runnable() { // from class: com.anythink.core.common.o.c.1
            @Override // java.lang.Runnable
            public final void run() {
                final Bitmap bitmapA = c.a(context, bitmap);
                com.anythink.core.common.b.n.a().b(new Runnable() { // from class: com.anythink.core.common.o.c.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        a aVar2 = aVar;
                        if (aVar2 != null) {
                            Bitmap bitmap2 = bitmapA;
                            if (bitmap2 != null) {
                                aVar2.a(bitmap2);
                            } else {
                                aVar2.a();
                            }
                        }
                    }
                });
            }
        });
    }

    public static int[] a(String str) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            return new int[]{options.outWidth, options.outHeight};
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } catch (OutOfMemoryError unused) {
            return null;
        }
    }
}
