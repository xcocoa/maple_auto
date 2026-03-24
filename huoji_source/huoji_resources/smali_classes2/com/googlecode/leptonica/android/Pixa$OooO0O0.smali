.class public final Lcom/googlecode/leptonica/android/Pixa$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/leptonica/android/Pixa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/googlecode/leptonica/android/Pix;",
        ">;"
    }
.end annotation


# instance fields
.field private OoooOoO:I

.field public final synthetic OoooOoo:Lcom/googlecode/leptonica/android/Pixa;


# direct methods
.method private constructor <init>(Lcom/googlecode/leptonica/android/Pixa;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/leptonica/android/Pixa$OooO0O0;->OoooOoo:Lcom/googlecode/leptonica/android/Pixa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/googlecode/leptonica/android/Pixa$OooO0O0;->OoooOoO:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/googlecode/leptonica/android/Pixa;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/googlecode/leptonica/android/Pixa$OooO0O0;-><init>(Lcom/googlecode/leptonica/android/Pixa;)V

    return-void
.end method

.method private OooO00o()Lcom/googlecode/leptonica/android/Pix;
    .locals 5

    iget-object v0, p0, Lcom/googlecode/leptonica/android/Pixa$OooO0O0;->OoooOoo:Lcom/googlecode/leptonica/android/Pixa;

    iget v1, p0, Lcom/googlecode/leptonica/android/Pixa$OooO0O0;->OoooOoO:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/googlecode/leptonica/android/Pixa$OooO0O0;->OoooOoO:I

    iget-boolean v2, v0, Lcom/googlecode/leptonica/android/Pixa;->Ooooo0o:Z

    if-nez v2, :cond_1

    iget-wide v2, v0, Lcom/googlecode/leptonica/android/Pixa;->OoooOoO:J

    invoke-static {v2, v3, v1}, Lcom/googlecode/leptonica/android/Pixa;->nativeGetPix(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/googlecode/leptonica/android/Pixa$OooO0O0;->OoooOoo:Lcom/googlecode/leptonica/android/Pixa;

    iget-boolean v1, v0, Lcom/googlecode/leptonica/android/Pixa;->Ooooo0o:Z

    if-nez v1, :cond_1

    iget-wide v0, v0, Lcom/googlecode/leptonica/android/Pixa;->OoooOoO:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pixa;->nativeGetCount(J)I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/googlecode/leptonica/android/Pixa$OooO0O0;->OoooOoO:I

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/googlecode/leptonica/android/Pixa$OooO0O0;->OoooOoo:Lcom/googlecode/leptonica/android/Pixa;

    iget v1, p0, Lcom/googlecode/leptonica/android/Pixa$OooO0O0;->OoooOoO:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/googlecode/leptonica/android/Pixa$OooO0O0;->OoooOoO:I

    iget-boolean v2, v0, Lcom/googlecode/leptonica/android/Pixa;->Ooooo0o:Z

    if-nez v2, :cond_1

    iget-wide v2, v0, Lcom/googlecode/leptonica/android/Pixa;->OoooOoO:J

    invoke-static {v2, v3, v1}, Lcom/googlecode/leptonica/android/Pixa;->nativeGetPix(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
