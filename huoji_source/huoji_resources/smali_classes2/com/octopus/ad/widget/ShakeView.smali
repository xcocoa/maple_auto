.class public Lcom/octopus/ad/widget/ShakeView;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/widget/ShakeView;->c:Z

    invoke-virtual {p0, p1}, Lcom/octopus/ad/widget/ShakeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/octopus/ad/widget/ShakeView;->c:Z

    invoke-virtual {p0, p1}, Lcom/octopus/ad/widget/ShakeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/octopus/ad/widget/ShakeView;->c:Z

    invoke-virtual {p0, p1}, Lcom/octopus/ad/widget/ShakeView;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/octopus/ad/widget/ShakeView;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/widget/ShakeView;->c:Z

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/octopus/ad/widget/ShakeView;->a:Landroid/widget/ImageView;

    sget p1, Lcom/octopus/ad/R$drawable;->oct_anim_shake:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/octopus/ad/widget/ShakeView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/octopus/ad/widget/ShakeView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/octopus/ad/widget/ShakeView;->e:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/octopus/ad/widget/ShakeView;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/octopus/ad/widget/ShakeView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public startShake()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/widget/ShakeView;->e:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method public stopShake()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/widget/ShakeView;->e:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method
