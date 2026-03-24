.class public Lcom/googlecode/tesseract/android/TessBaseAPI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/tesseract/android/TessBaseAPI$OooO0o;,
        Lcom/googlecode/tesseract/android/TessBaseAPI$OooO0OO;,
        Lcom/googlecode/tesseract/android/TessBaseAPI$OooO00o;,
        Lcom/googlecode/tesseract/android/TessBaseAPI$OooO0O0;
    }
.end annotation


# static fields
.field public static final OooO:I = 0x0

.field public static final OooO0Oo:Ljava/lang/String; = "tessedit_char_whitelist"

.field public static final OooO0o:Ljava/lang/String; = "save_blob_choices"

.field public static final OooO0o0:Ljava/lang/String; = "tessedit_char_blacklist"

.field public static final OooO0oO:Ljava/lang/String; = "T"

.field public static final OooO0oo:Ljava/lang/String; = "F"

.field public static final OooOO0:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OooOO0O:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OooOO0o:I = 0x3


# instance fields
.field public OooO00o:J

.field private OooO0O0:Lcom/googlecode/tesseract/android/TessBaseAPI$OooO0OO;

.field private OooO0OO:Z


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

    invoke-static {}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeConstruct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t create TessBaseApi object"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/googlecode/tesseract/android/TessBaseAPI$OooO0OO;)V
    .locals 0

    invoke-direct {p0}, Lcom/googlecode/tesseract/android/TessBaseAPI;-><init>()V

    iput-object p1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0O0:Lcom/googlecode/tesseract/android/TessBaseAPI$OooO0OO;

    return-void
.end method

.method private OooO(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetDebug(JZ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooO0O0(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetPageSegMode(JI)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooO0OO(IIII)V
    .locals 8

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetRectangle(JIIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooO0o(Lcom/googlecode/leptonica/android/Pix;)V
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->OooO0O0()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImagePix(JJ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooO0o0(Landroid/graphics/Rect;)V
    .locals 8

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_1

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-boolean p1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetRectangle(JIIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooO0oO(Ljava/io/File;)V
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/googlecode/leptonica/android/ReadFile;->OooO0O0(Ljava/io/File;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->OooO0O0()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImagePix(JJ)V

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->OooO0o()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to read image file"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooO0oo(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetInputName(JLjava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooOO0([BIIII)V
    .locals 9

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImageBytes(J[BIIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooOO0O(Lcom/googlecode/leptonica/android/Pix;Ljava/lang/String;Lcom/googlecode/tesseract/android/TessPdfRenderer;)Z
    .locals 8

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->OooO0O0()J

    move-result-wide v3

    invoke-virtual {p3}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->OooO00o()J

    move-result-wide v6

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeAddPageToDocument(JJLjava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method private OooOO0o(Lcom/googlecode/tesseract/android/TessPdfRenderer;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->OooO00o()J

    move-result-wide v0

    const-string p1, ""

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeBeginDocument(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private OooOOO0(Lcom/googlecode/tesseract/android/TessPdfRenderer;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->OooO00o()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeBeginDocument(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private OooOOOO()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetInitLanguagesAsString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private OooOOOo(I)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetHOCRText(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooOOo(Lcom/googlecode/tesseract/android/TessPdfRenderer;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->OooO00o()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeEndDocument(J)Z

    move-result p1

    return p1
.end method

.method private OooOOo0(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetOutputName(JLjava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooOOoo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    if-eqz p1, :cond_7

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v3, p1

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tessdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\\+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    const-string v5, "~"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".traineddata"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Data file not found at "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    const/4 v5, 0x3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeInitOem(JLjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-boolean v6, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    :cond_4
    return p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data path must contain subfolder tessdata!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data path does not exist!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data path must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private OooOo()V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeEnd(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    :cond_0
    return-void
.end method

.method private OooOo0()V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeClear(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private OooOo00(I)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetBoxText(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooOo0O(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeReadConfigFile(JLjava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooOo0o(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetVariable(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooOoO()I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeMeanConfidence(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private OooOoO0()I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetPageSegMode(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private OooOoOO()[I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeWordConfidences(J)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private OooOoo()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetRegions(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private OooOoo0()Lcom/googlecode/leptonica/android/Pix;
    .locals 3

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetThresholdedImage(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private OooOooO()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetTextlines(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private OooOooo()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetStrips(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private Oooo0()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetVersion(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Oooo000()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetWords(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private Oooo00O()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetConnectedComponents(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private Oooo00o()Lcom/googlecode/tesseract/android/ResultIterator;
    .locals 5

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetResultIterator(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/googlecode/tesseract/android/ResultIterator;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/tesseract/android/ResultIterator;-><init>(J)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private Oooo0O0()V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeStop(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private Oooo0OO()J
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    return-wide v0
.end method

.method private native nativeAddPageToDocument(JJLjava/lang/String;J)Z
.end method

.method private native nativeBeginDocument(JLjava/lang/String;)Z
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeClear(J)V
.end method

.method private native nativeConstruct()J
.end method

.method private native nativeEnd(J)V
.end method

.method private native nativeEndDocument(J)Z
.end method

.method private native nativeGetBoxText(JI)Ljava/lang/String;
.end method

.method private native nativeGetConnectedComponents(J)J
.end method

.method private native nativeGetHOCRText(JI)Ljava/lang/String;
.end method

.method private native nativeGetInitLanguagesAsString(J)Ljava/lang/String;
.end method

.method private native nativeGetPageSegMode(J)I
.end method

.method private native nativeGetRegions(J)J
.end method

.method private native nativeGetResultIterator(J)J
.end method

.method private native nativeGetStrips(J)J
.end method

.method private native nativeGetTextlines(J)J
.end method

.method private native nativeGetThresholdedImage(J)J
.end method

.method private native nativeGetUTF8Text(J)Ljava/lang/String;
.end method

.method private native nativeGetVersion(J)Ljava/lang/String;
.end method

.method private native nativeGetWords(J)J
.end method

.method private native nativeInit(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeInitOem(JLjava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native nativeMeanConfidence(J)I
.end method

.method private native nativeReadConfigFile(JLjava/lang/String;)V
.end method

.method private native nativeSetDebug(JZ)V
.end method

.method private native nativeSetImageBytes(J[BIIII)V
.end method

.method private native nativeSetImagePix(JJ)V
.end method

.method private native nativeSetInputName(JLjava/lang/String;)V
.end method

.method private native nativeSetOutputName(JLjava/lang/String;)V
.end method

.method private native nativeSetPageSegMode(JI)V
.end method

.method private native nativeSetRectangle(JIIII)V
.end method

.method private native nativeSetVariable(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeStop(J)V
.end method

.method private native nativeWordConfidences(J)[I
.end method


# virtual methods
.method public final OooO00o()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetUTF8Text(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final OooO0Oo(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0OO:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/googlecode/leptonica/android/ReadFile;->OooO00o(Landroid/graphics/Bitmap;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO00o:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->OooO0O0()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImagePix(JJ)V

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->OooO0o()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to read bitmap"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final OooOOO(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooOOoo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onProgressValues(IIIIIIIII)V
    .locals 1

    iget-object v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->OooO0O0:Lcom/googlecode/tesseract/android/TessBaseAPI$OooO0OO;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    sub-int p4, p8, p4

    sub-int p5, p8, p5

    invoke-direct {v0, p2, p4, p3, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p9, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Lcom/googlecode/tesseract/android/TessBaseAPI$OooO0o;

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/googlecode/tesseract/android/TessBaseAPI$OooO0o;-><init>(Lcom/googlecode/tesseract/android/TessBaseAPI;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
