.class public final Lcom/anythink/basead/ui/guidetoclickv2/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/guidetoclickv2/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ILcom/anythink/basead/ui/guidetoclickv2/b$a;Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/anythink/basead/ui/b/b$a;Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/anythink/basead/ui/guidetoclickv2/b;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/guidetoclickv2/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$1;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    iput p2, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$1;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/b;->a(Lcom/anythink/basead/ui/guidetoclickv2/b;)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$1;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/b;->b(Lcom/anythink/basead/ui/guidetoclickv2/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->a(Lcom/anythink/basead/ui/guidetoclickv2/b;I)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->a(Lcom/anythink/basead/ui/guidetoclickv2/b;Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$1;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/b;->a(Lcom/anythink/basead/ui/guidetoclickv2/b;)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$1;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/anythink/basead/ui/guidetoclickv2/b;->a(Lcom/anythink/basead/ui/guidetoclickv2/b;J)J

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$1;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/b;->a(Lcom/anythink/basead/ui/guidetoclickv2/b;)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    move-result-object v1

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$1;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/b;->c(Lcom/anythink/basead/ui/guidetoclickv2/b;)J

    move-result-wide v2

    iget v4, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$1;->a:I

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$1;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/b;->d(Lcom/anythink/basead/ui/guidetoclickv2/b;)I

    move-result v5

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$1;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/b;->e(Lcom/anythink/basead/ui/guidetoclickv2/b;)Lcom/anythink/basead/ui/b/b$a;

    move-result-object v6

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$1;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/b;->f(Lcom/anythink/basead/ui/guidetoclickv2/b;)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->init(JIILcom/anythink/basead/ui/b/b$a;Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$1;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    iget-object v1, v0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/b;->a(Lcom/anythink/basead/ui/guidetoclickv2/b;)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$1;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/b;->b(Lcom/anythink/basead/ui/guidetoclickv2/b;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/b;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/b;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$1;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/b;->a(Lcom/anythink/basead/ui/guidetoclickv2/b;)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->resumeAnimPlay()V

    return-void
.end method
