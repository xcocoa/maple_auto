.class public Lcom/googlecode/tesseract/android/PageIterator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "jpgt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "pngt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "lept"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "tess"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/googlecode/tesseract/android/PageIterator;->OooO00o:J

    return-void
.end method

.method private OooO00o()V
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/PageIterator;->OooO00o:J

    invoke-static {v0, v1}, Lcom/googlecode/tesseract/android/PageIterator;->nativeBegin(J)V

    return-void
.end method

.method private OooO0O0(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/PageIterator;->OooO00o:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/tesseract/android/PageIterator;->nativeNext(JI)Z

    move-result p1

    return p1
.end method

.method private OooO0OO(I)[I
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/PageIterator;->OooO00o:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/tesseract/android/PageIterator;->nativeBoundingBox(JI)[I

    move-result-object p1

    return-object p1
.end method

.method private OooO0Oo(I)Landroid/graphics/Rect;
    .locals 5

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/PageIterator;->OooO00o:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/tesseract/android/PageIterator;->nativeBoundingBox(JI)[I

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static native nativeBegin(J)V
.end method

.method private static native nativeBoundingBox(JI)[I
.end method

.method private static native nativeNext(JI)Z
.end method
