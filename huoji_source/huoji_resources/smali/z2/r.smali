.class public Lz2/r;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lz2/v$OooO0O0;
.implements Landroid/graphics/drawable/Animatable;
.implements Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/r$OooO00o;
    }
.end annotation


# static fields
.field private static final o00O0O:I = 0x77

.field public static final o0OoOo0:I = -0x1

.field public static final ooOO:I


# instance fields
.field private final OoooOoO:Lz2/r$OooO00o;

.field private OoooOoo:Z

.field private Ooooo00:Z

.field private Ooooo0o:Z

.field private OooooO0:Z

.field private OooooOO:I

.field private OooooOo:I

.field private Oooooo:Landroid/graphics/Paint;

.field private Oooooo0:Z

.field private OoooooO:Landroid/graphics/Rect;

.field private Ooooooo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lz2/o0O00OO;Lz2/o0O0o000;IILandroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lz2/o0O00OO;",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    new-instance v0, Lz2/r$OooO00o;

    new-instance v8, Lz2/v;

    invoke-static {p1}, Lz2/o00Oo00;->OooO0Oo(Landroid/content/Context;)Lz2/o00Oo00;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lz2/v;-><init>(Lz2/o00Oo00;Lz2/o0O00OO;IILz2/o0O0o000;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v8}, Lz2/r$OooO00o;-><init>(Lz2/v;)V

    invoke-direct {p0, v0}, Lz2/r;-><init>(Lz2/r$OooO00o;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lz2/o0O00OO;Lz2/oO000o00;Lz2/o0O0o000;IILandroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lz2/o0O00OO;",
            "Lz2/oO000o00;",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lz2/r;-><init>(Landroid/content/Context;Lz2/o0O00OO;Lz2/o0O0o000;IILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Lz2/r$OooO00o;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/r;->OooooO0:Z

    const/4 v0, -0x1

    iput v0, p0, Lz2/r;->OooooOo:I

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/r$OooO00o;

    iput-object p1, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    return-void
.end method

.method public constructor <init>(Lz2/v;Landroid/graphics/Paint;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lz2/r$OooO00o;

    invoke-direct {v0, p1}, Lz2/r$OooO00o;-><init>(Lz2/v;)V

    invoke-direct {p0, v0}, Lz2/r;-><init>(Lz2/r$OooO00o;)V

    iput-object p2, p0, Lz2/r;->Oooooo:Landroid/graphics/Paint;

    return-void
.end method

.method private OooO()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lz2/r;->Oooooo:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lz2/r;->Oooooo:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lz2/r;->Oooooo:Landroid/graphics/Paint;

    return-object v0
.end method

.method private OooO0O0()Landroid/graphics/drawable/Drawable$Callback;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private OooO0Oo()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lz2/r;->OoooooO:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lz2/r;->OoooooO:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lz2/r;->OoooooO:Landroid/graphics/Rect;

    return-object v0
.end method

.method private OooOO0o()V
    .locals 3

    iget-object v0, p0, Lz2/r;->Ooooooo:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lz2/r;->Ooooooo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v2, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private OooOOO()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz2/r;->OooooOO:I

    return-void
.end method

.method private OooOOoo()V
    .locals 3

    iget-boolean v0, p0, Lz2/r;->Ooooo0o:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, Lz2/r2;->OooO00o(ZLjava/lang/String;)V

    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object v0, v0, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {v0}, Lz2/v;->OooO0o()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lz2/r;->OoooOoo:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lz2/r;->OoooOoo:Z

    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object v0, v0, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {v0, p0}, Lz2/v;->OooOo0o(Lz2/v$OooO0O0;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private OooOo00()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/r;->OoooOoo:Z

    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object v0, v0, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {v0, p0}, Lz2/v;->OooOo(Lz2/v$OooO0O0;)V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 2

    invoke-direct {p0}, Lz2/r;->OooO0O0()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz2/r;->stop()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {p0}, Lz2/r;->OooO0oO()I

    move-result v0

    invoke-virtual {p0}, Lz2/r;->OooO0o()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lz2/r;->OooooOO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz2/r;->OooooOO:I

    :cond_1
    iget v0, p0, Lz2/r;->OooooOo:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v1, p0, Lz2/r;->OooooOO:I

    if-lt v1, v0, :cond_2

    invoke-direct {p0}, Lz2/r;->OooOO0o()V

    invoke-virtual {p0}, Lz2/r;->stop()V

    :cond_2
    return-void
.end method

.method public OooO0OO()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object v0, v0, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {v0}, Lz2/v;->OooO0O0()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o()I
    .locals 1

    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object v0, v0, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {v0}, Lz2/v;->OooO0o()I

    move-result v0

    return v0
.end method

.method public OooO0o0()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object v0, v0, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {v0}, Lz2/v;->OooO0o0()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public OooO0oO()I
    .locals 1

    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object v0, v0, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {v0}, Lz2/v;->OooO0Oo()I

    move-result v0

    return v0
.end method

.method public OooO0oo()Lz2/o0O0o000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object v0, v0, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {v0}, Lz2/v;->OooO()Lz2/o0O0o000;

    move-result-object v0

    return-object v0
.end method

.method public OooOO0()I
    .locals 1

    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object v0, v0, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {v0}, Lz2/v;->OooOOO0()I

    move-result v0

    return v0
.end method

.method public OooOO0O()Z
    .locals 1

    iget-boolean v0, p0, Lz2/r;->Ooooo0o:Z

    return v0
.end method

.method public OooOOO0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/r;->Ooooo0o:Z

    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object v0, v0, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {v0}, Lz2/v;->OooO00o()V

    return-void
.end method

.method public OooOOOO(Lz2/o0O0o000;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object v0, v0, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {v0, p1, p2}, Lz2/v;->OooOOo(Lz2/o0O0o000;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public OooOOOo(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/r;->OoooOoo:Z

    return-void
.end method

.method public OooOOo()V
    .locals 2

    iget-boolean v0, p0, Lz2/r;->OoooOoo:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "You cannot restart a currently running animation."

    invoke-static {v0, v1}, Lz2/r2;->OooO00o(ZLjava/lang/String;)V

    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object v0, v0, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {v0}, Lz2/v;->OooOOoo()V

    invoke-virtual {p0}, Lz2/r;->start()V

    return-void
.end method

.method public OooOOo0(I)V
    .locals 1

    const/4 v0, -0x1

    if-gtz p1, :cond_1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    iget-object p1, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object p1, p1, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {p1}, Lz2/v;->OooOO0O()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    iput v0, p0, Lz2/r;->OooooOo:I

    goto :goto_2

    :cond_3
    iput p1, p0, Lz2/r;->OooooOo:I

    :goto_2
    return-void
.end method

.method public clearAnimationCallbacks()V
    .locals 1

    iget-object v0, p0, Lz2/r;->Ooooooo:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lz2/r;->Ooooo0o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lz2/r;->Oooooo0:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x77

    invoke-virtual {p0}, Lz2/r;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lz2/r;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Lz2/r;->OooO0Oo()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/r;->Oooooo0:Z

    :cond_1
    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object v0, v0, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {v0}, Lz2/v;->OooO0OO()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lz2/r;->OooO0Oo()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lz2/r;->OooO()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object v0, v0, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {v0}, Lz2/v;->OooOO0()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lz2/r;->OoooOoO:Lz2/r$OooO00o;

    iget-object v0, v0, Lz2/r$OooO00o;->OooO00o:Lz2/v;

    invoke-virtual {v0}, Lz2/v;->OooOOO()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lz2/r;->OoooOoo:Z

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/r;->Oooooo0:Z

    return-void
.end method

.method public registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 1
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/r;->Ooooooo:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/r;->Ooooooo:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lz2/r;->Ooooooo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    invoke-direct {p0}, Lz2/r;->OooO()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    invoke-direct {p0}, Lz2/r;->OooO()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    iget-boolean v0, p0, Lz2/r;->Ooooo0o:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Lz2/r2;->OooO00o(ZLjava/lang/String;)V

    iput-boolean p1, p0, Lz2/r;->OooooO0:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lz2/r;->OooOo00()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lz2/r;->Ooooo00:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lz2/r;->OooOOoo()V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/r;->Ooooo00:Z

    invoke-direct {p0}, Lz2/r;->OooOOO()V

    iget-boolean v0, p0, Lz2/r;->OooooO0:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lz2/r;->OooOOoo()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/r;->Ooooo00:Z

    invoke-direct {p0}, Lz2/r;->OooOo00()V

    return-void
.end method

.method public unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 1
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/r;->Ooooooo:Ljava/util/List;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
