.class public Lcom/googlecode/tesseract/android/ResultIterator;
.super Lcom/googlecode/tesseract/android/PageIterator;
.source ""


# instance fields
.field private final OooO0O0:J


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

    invoke-direct {p0, p1, p2}, Lcom/googlecode/tesseract/android/PageIterator;-><init>(J)V

    iput-wide p1, p0, Lcom/googlecode/tesseract/android/ResultIterator;->OooO0O0:J

    return-void
.end method

.method private OooO()V
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/ResultIterator;->OooO0O0:J

    invoke-static {v0, v1}, Lcom/googlecode/tesseract/android/ResultIterator;->nativeDelete(J)V

    return-void
.end method

.method private OooO0o()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/ResultIterator;->OooO0O0:J

    invoke-static {v0, v1}, Lcom/googlecode/tesseract/android/ResultIterator;->nativeGetSymbolChoices(J)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    const/16 v6, 0x7c

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    if-lez v6, :cond_0

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Invalid confidence level for "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ResultIterator"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v5, v8

    :cond_0
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private OooO0o0(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/ResultIterator;->OooO0O0:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/tesseract/android/ResultIterator;->nativeGetUTF8Text(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private OooO0oO(II)Z
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/ResultIterator;->OooO0O0:J

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/tesseract/android/ResultIterator;->nativeIsAtFinalElement(JII)Z

    move-result p1

    return p1
.end method

.method private OooO0oo(I)F
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/ResultIterator;->OooO0O0:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/tesseract/android/ResultIterator;->nativeConfidence(JI)F

    move-result p1

    return p1
.end method

.method private OooOO0(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/ResultIterator;->OooO0O0:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/tesseract/android/ResultIterator;->nativeIsAtBeginningOf(JI)Z

    move-result p1

    return p1
.end method

.method private static native nativeConfidence(JI)F
.end method

.method private static native nativeDelete(J)V
.end method

.method private static native nativeGetSymbolChoices(J)[Ljava/lang/String;
.end method

.method private static native nativeGetUTF8Text(JI)Ljava/lang/String;
.end method

.method private static native nativeIsAtBeginningOf(JI)Z
.end method

.method private static native nativeIsAtFinalElement(JII)Z
.end method
