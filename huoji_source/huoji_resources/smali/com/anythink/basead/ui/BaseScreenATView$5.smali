.class public final Lcom/anythink/basead/ui/BaseScreenATView$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseScreenATView;->a(Lcom/anythink/basead/ui/BaseScreenATView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/BaseScreenATView$a;

.field public final synthetic b:Lcom/anythink/basead/ui/BaseScreenATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseScreenATView;Lcom/anythink/basead/ui/BaseScreenATView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$5;->b:Lcom/anythink/basead/ui/BaseScreenATView;

    iput-object p2, p0, Lcom/anythink/basead/ui/BaseScreenATView$5;->a:Lcom/anythink/basead/ui/BaseScreenATView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$5;->b:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView$5;->b:Lcom/anythink/basead/ui/BaseScreenATView;

    iget v3, v3, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v3, v4, :cond_6

    if-eq v3, v5, :cond_5

    const/4 v7, 0x5

    if-eq v3, v7, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_4

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    invoke-static {v8, v5}, Lcom/anythink/basead/a/b/c;->b(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-nez v0, :cond_7

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->j()Ljava/util/List;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->h()Ljava/util/List;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/BaseScreenATView$5$1;

    invoke-direct {v1, p0, v2}, Lcom/anythink/basead/ui/BaseScreenATView$5$1;-><init>(Lcom/anythink/basead/ui/BaseScreenATView$5;Ljava/util/List;)V

    :goto_5
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$5;->b:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView$5;->b:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v6, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView$5;->b:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v3

    new-instance v4, Lcom/anythink/core/common/res/e;

    invoke-direct {v4, v5, v1}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4, v6, v6}, Lcom/anythink/core/common/res/b;->b(Lcom/anythink/core/common/res/e;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/BaseScreenATView$5$2;

    invoke-direct {v1, p0, v2}, Lcom/anythink/basead/ui/BaseScreenATView$5$2;-><init>(Lcom/anythink/basead/ui/BaseScreenATView$5;Ljava/util/List;)V

    goto :goto_5
.end method
