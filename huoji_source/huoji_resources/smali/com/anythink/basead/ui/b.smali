.class public final Lcom/anythink/basead/ui/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/ImageView;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/b;->a:Landroid/view/ViewGroup;

    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anythink/basead/ui/b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/b;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anythink/basead/ui/b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_loading_id"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    iget-object p1, p0, Lcom/anythink/basead/ui/b;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anythink/basead/ui/b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_loading"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/anythink/basead/ui/b;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/anythink/basead/ui/b;->c:I

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/b;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/b;->a:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/b;)I
    .locals 0

    iget p0, p0, Lcom/anythink/basead/ui/b;->c:I

    return p0
.end method

.method public static synthetic c(Lcom/anythink/basead/ui/b;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/b;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/b;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/ui/b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/b;->a:Landroid/view/ViewGroup;

    new-instance v1, Lcom/anythink/basead/ui/b$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/b$1;-><init>(Lcom/anythink/basead/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/b;->c:I

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/b;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/ui/b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/b;->a:Landroid/view/ViewGroup;

    new-instance v1, Lcom/anythink/basead/ui/b$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/b$1;-><init>(Lcom/anythink/basead/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/anythink/basead/ui/b;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/basead/ui/b$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/b$2;-><init>(Lcom/anythink/basead/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/b;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/b;->a:Landroid/view/ViewGroup;

    new-instance v1, Lcom/anythink/basead/ui/b$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/b$3;-><init>(Lcom/anythink/basead/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
