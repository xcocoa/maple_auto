.class public Lcom/cyjh/common/view/FlatButton;
.super Landroid/widget/Button;
.source ""


# instance fields
.field private OoooOoO:Landroid/graphics/drawable/StateListDrawable;

.field private OoooOoo:Ljava/lang/CharSequence;

.field private Ooooo00:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/common/view/FlatButton;->OooO0oO(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/cyjh/common/view/FlatButton;->OooO0oO(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/cyjh/common/view/FlatButton;->OooO0oO(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private OooO00o(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    sget v0, Lcom/cyjh/common/R$drawable;->rect_normal:I

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/FlatButton;->OooO0o0(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getCornerRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v2, Lcom/cyjh/common/R$color;->blue_pressed:I

    invoke-virtual {p0, v2}, Lcom/cyjh/common/view/FlatButton;->OooO0OO(I)I

    move-result v2

    sget v3, Lcom/cyjh/common/R$styleable;->FlatButton_pb_colorPressed:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getCornerRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v2, Lcom/cyjh/common/R$color;->blue_normal:I

    invoke-virtual {p0, v2}, Lcom/cyjh/common/view/FlatButton;->OooO0OO(I)I

    move-result v2

    sget v3, Lcom/cyjh/common/R$styleable;->FlatButton_pb_colorNormal:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private OooO0O0(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;
    .locals 3

    sget v0, Lcom/cyjh/common/R$drawable;->rect_pressed:I

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/FlatButton;->OooO0o0(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v1, Lcom/cyjh/common/R$color;->blue_pressed:I

    invoke-virtual {p0, v1}, Lcom/cyjh/common/view/FlatButton;->OooO0OO(I)I

    move-result v1

    sget v2, Lcom/cyjh/common/R$styleable;->FlatButton_pb_colorPressed:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private OooO0oO(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/view/FlatButton;->OoooOoO:Landroid/graphics/drawable/StateListDrawable;

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/cyjh/common/view/FlatButton;->OooO0oo(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/common/view/FlatButton;->OoooOoo:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/cyjh/common/view/FlatButton;->OoooOoO:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/FlatButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private OooO0oo(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    sget-object v0, Lcom/cyjh/common/R$styleable;->FlatButton:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/cyjh/common/view/FlatButton;->OooO0o(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget p2, Lcom/cyjh/common/R$dimen;->corner_radius:I

    invoke-virtual {p0, p2}, Lcom/cyjh/common/view/FlatButton;->OooO0Oo(I)F

    move-result p2

    sget v0, Lcom/cyjh/common/R$styleable;->FlatButton_pb_cornerRadius:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/FlatButton;->Ooooo00:F

    iget-object p2, p0, Lcom/cyjh/common/view/FlatButton;->OoooOoO:Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/FlatButton;->OooO0O0(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/cyjh/common/view/FlatButton;->OoooOoO:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v0, [I

    const v2, 0x101009c

    aput v2, v1, v3

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/FlatButton;->OooO0O0(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/cyjh/common/view/FlatButton;->OoooOoO:Landroid/graphics/drawable/StateListDrawable;

    new-array v0, v0, [I

    const v1, 0x10100a1

    aput v1, v0, v3

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/FlatButton;->OooO0O0(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/cyjh/common/view/FlatButton;->OoooOoO:Landroid/graphics/drawable/StateListDrawable;

    new-array v0, v3, [I

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/FlatButton;->OooO00o(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public OooO0OO(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public OooO0Oo(I)F
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method

.method public OooO0o(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o0(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getCornerRadius()F
    .locals 1

    iget v0, p0, Lcom/cyjh/common/view/FlatButton;->Ooooo00:F

    return v0
.end method

.method public getNormalDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/view/FlatButton;->OoooOoO:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method public getNormalText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/view/FlatButton;->OoooOoo:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    return-void
.end method
