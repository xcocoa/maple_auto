.class public Lcom/android/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/NetworkImageView$OooO0O0;
    }
.end annotation


# instance fields
.field private OoooOoO:Ljava/lang/String;

.field private OoooOoo:I

.field private Ooooo00:I

.field private Ooooo0o:Lz2/o00000OO;

.field private OooooO0:Lcom/android/volley/toolbox/NetworkImageView$OooO0O0;

.field private OooooOO:Lz2/o0000Ooo$OooO00o;

.field private OooooOo:Lz2/o00000OO$OooOO0O;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/volley/toolbox/NetworkImageView;)I
    .locals 0

    iget p0, p0, Lcom/android/volley/toolbox/NetworkImageView;->Ooooo00:I

    return p0
.end method

.method public static synthetic OooO0O0(Lcom/android/volley/toolbox/NetworkImageView;)I
    .locals 0

    iget p0, p0, Lcom/android/volley/toolbox/NetworkImageView;->OoooOoo:I

    return p0
.end method

.method private OooO0Oo()V
    .locals 1

    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->OoooOoo:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public OooO0OO(Z)V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/volley/toolbox/NetworkImageView;->OoooOoO:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->OooooOo:Lz2/o00000OO$OooOO0O;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lz2/o00000OO$OooOO0O;->OooO0OO()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->OooooOo:Lz2/o00000OO$OooOO0O;

    :cond_5
    invoke-direct {p0}, Lcom/android/volley/toolbox/NetworkImageView;->OooO0Oo()V

    return-void

    :cond_6
    if-eqz v2, :cond_7

    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    move v6, v0

    :goto_3
    if-eqz v5, :cond_8

    const/4 v8, 0x0

    goto :goto_4

    :cond_8
    move v8, v1

    :goto_4
    iget-object v1, p0, Lcom/android/volley/toolbox/NetworkImageView;->OoooOoO:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->OooooO0:Lcom/android/volley/toolbox/NetworkImageView$OooO0O0;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move v2, v6

    move v3, v8

    invoke-interface/range {v0 .. v5}, Lcom/android/volley/toolbox/NetworkImageView$OooO0O0;->OooO00o(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_5

    :cond_9
    move-object v3, v1

    :goto_5
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->OooooOo:Lz2/o00000OO$OooOO0O;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lz2/o00000OO$OooOO0O;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->OooooOo:Lz2/o00000OO$OooOO0O;

    invoke-virtual {v0}, Lz2/o00000OO$OooOO0O;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->OooooOo:Lz2/o00000OO$OooOO0O;

    invoke-virtual {v0}, Lz2/o00000OO$OooOO0O;->OooO0OO()V

    invoke-direct {p0}, Lcom/android/volley/toolbox/NetworkImageView;->OooO0Oo()V

    :cond_b
    iget-object v2, p0, Lcom/android/volley/toolbox/NetworkImageView;->Ooooo0o:Lz2/o00000OO;

    new-instance v4, Lcom/android/volley/toolbox/NetworkImageView$OooO00o;

    invoke-direct {v4, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$OooO00o;-><init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V

    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->OooooOO:Lz2/o0000Ooo$OooO00o;

    move v5, v6

    move v6, v8

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lz2/o00000OO;->OooO0oo(Ljava/lang/String;Lz2/o00000OO$OooOOO0;IILandroid/widget/ImageView$ScaleType;Lz2/o0000Ooo$OooO00o;)Lz2/o00000OO$OooOO0O;

    move-result-object p1

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->OooooOo:Lz2/o00000OO$OooOO0O;

    return-void
.end method

.method public OooO0o(Ljava/lang/String;Lz2/o00000OO;Lcom/android/volley/toolbox/NetworkImageView$OooO0O0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->OoooOoO:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView;->Ooooo0o:Lz2/o00000OO;

    iput-object p3, p0, Lcom/android/volley/toolbox/NetworkImageView;->OooooO0:Lcom/android/volley/toolbox/NetworkImageView$OooO0O0;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/NetworkImageView;->OooO0OO(Z)V

    return-void
.end method

.method public OooO0o0(Ljava/lang/String;Lz2/o00000OO;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/volley/toolbox/NetworkImageView;->OooO0o(Ljava/lang/String;Lz2/o00000OO;Lcom/android/volley/toolbox/NetworkImageView$OooO0O0;)V

    return-void
.end method

.method public drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->OooooOo:Lz2/o00000OO$OooOO0O;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/o00000OO$OooOO0O;->OooO0OO()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->OooooOo:Lz2/o00000OO$OooOO0O;

    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/NetworkImageView;->OooO0OO(Z)V

    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 0

    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->OoooOoo:I

    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 0

    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->Ooooo00:I

    return-void
.end method

.method public setTransformation(Lz2/o0000Ooo$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->OooooOO:Lz2/o0000Ooo$OooO00o;

    return-void
.end method
