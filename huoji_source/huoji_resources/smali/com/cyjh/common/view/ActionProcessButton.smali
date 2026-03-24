.class public Lcom/cyjh/common/view/ActionProcessButton;
.super Lcom/cyjh/common/view/ProcessButton;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;,
        Lcom/cyjh/common/view/ActionProcessButton$Mode;
    }
.end annotation


# instance fields
.field private o00O0O:Lcom/cyjh/common/view/ActionProcessButton$Mode;

.field private o00Oo0:I

.field private o00Ooo:I

.field private o00o0O:I

.field private o00ooo:I

.field private ooOO:Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/ProcessButton;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/ActionProcessButton;->OooOOOo(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cyjh/common/view/ProcessButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/ActionProcessButton;->OooOOOo(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cyjh/common/view/ProcessButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/ActionProcessButton;->OooOOOo(Landroid/content/Context;)V

    return-void
.end method

.method private OooOOO(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton;->ooOO:Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;

    invoke-direct {v0, p0}, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton;->ooOO:Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;

    invoke-direct {p0}, Lcom/cyjh/common/view/ActionProcessButton;->OooOOo()V

    iget-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton;->ooOO:Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;

    iget v1, p0, Lcom/cyjh/common/view/ActionProcessButton;->o00Oo0:I

    iget v2, p0, Lcom/cyjh/common/view/ActionProcessButton;->o00Ooo:I

    iget v3, p0, Lcom/cyjh/common/view/ActionProcessButton;->o00o0O:I

    iget v4, p0, Lcom/cyjh/common/view/ActionProcessButton;->o00ooo:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0o0(IIII)V

    iget-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton;->ooOO:Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;

    invoke-virtual {v0}, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0o()V

    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->getProgress()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton;->ooOO:Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;

    invoke-virtual {v0, p1}, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO00o(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private OooOOOO(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->getMaxProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x3fa999999999999aL    # 0.05

    mul-double v4, v4, v6

    sub-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->getProgressDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->getProgressDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private OooOOOo(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v0, Lcom/cyjh/common/view/ActionProcessButton$Mode;->ENDLESS:Lcom/cyjh/common/view/ActionProcessButton$Mode;

    iput-object v0, p0, Lcom/cyjh/common/view/ActionProcessButton;->o00O0O:Lcom/cyjh/common/view/ActionProcessButton$Mode;

    sget v0, Lcom/cyjh/common/R$color;->holo_blue_bright:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cyjh/common/view/ActionProcessButton;->o00Oo0:I

    sget v0, Lcom/cyjh/common/R$color;->holo_green_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cyjh/common/view/ActionProcessButton;->o00Ooo:I

    sget v0, Lcom/cyjh/common/R$color;->holo_orange_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cyjh/common/view/ActionProcessButton;->o00o0O:I

    sget v0, Lcom/cyjh/common/R$color;->holo_red_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/cyjh/common/view/ActionProcessButton;->o00ooo:I

    return-void
.end method

.method private OooOOo()V
    .locals 5

    sget v0, Lcom/cyjh/common/R$dimen;->layer_padding:I

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/FlatButton;->OooO0Oo(I)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v2, v0

    double-to-int v0, v2

    iget-object v1, p0, Lcom/cyjh/common/view/ActionProcessButton;->ooOO:Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;->OooO0Oo(IIII)V

    return-void
.end method


# virtual methods
.method public OooO(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getNormalDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getNormalDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget-object v0, Lcom/cyjh/common/view/ActionProcessButton$OooO00o;->OooO00o:[I

    iget-object v1, p0, Lcom/cyjh/common/view/ActionProcessButton;->o00O0O:Lcom/cyjh/common/view/ActionProcessButton$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/cyjh/common/view/ActionProcessButton;->OooOOOO(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/cyjh/common/view/ActionProcessButton;->OooOOO(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public OooOOo0(IIII)V
    .locals 0

    iput p1, p0, Lcom/cyjh/common/view/ActionProcessButton;->o00Oo0:I

    iput p2, p0, Lcom/cyjh/common/view/ActionProcessButton;->o00Ooo:I

    iput p3, p0, Lcom/cyjh/common/view/ActionProcessButton;->o00o0O:I

    iput p4, p0, Lcom/cyjh/common/view/ActionProcessButton;->o00ooo:I

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/cyjh/common/view/ActionProcessButton;->ooOO:Lcom/cyjh/common/view/ActionProcessButton$OooO0O0;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/cyjh/common/view/ActionProcessButton;->OooOOo()V

    :cond_0
    return-void
.end method

.method public setMode(Lcom/cyjh/common/view/ActionProcessButton$Mode;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/view/ActionProcessButton;->o00O0O:Lcom/cyjh/common/view/ActionProcessButton$Mode;

    return-void
.end method
