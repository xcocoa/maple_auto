.class public final Lcom/anythink/basead/ui/ClickToReLoadView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/ClickToReLoadView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:J

.field public final synthetic b:Lcom/anythink/basead/ui/ClickToReLoadView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/ClickToReLoadView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/ClickToReLoadView$1;->b:Lcom/anythink/basead/ui/ClickToReLoadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/basead/ui/ClickToReLoadView$1;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    iput-wide v0, p0, Lcom/anythink/basead/ui/ClickToReLoadView$1;->a:J

    iget-object p1, p0, Lcom/anythink/basead/ui/ClickToReLoadView$1;->b:Lcom/anythink/basead/ui/ClickToReLoadView;

    invoke-static {p1}, Lcom/anythink/basead/ui/ClickToReLoadView;->a(Lcom/anythink/basead/ui/ClickToReLoadView;)Lcom/anythink/basead/ui/ClickToReLoadView$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/ClickToReLoadView$1;->b:Lcom/anythink/basead/ui/ClickToReLoadView;

    invoke-static {p1}, Lcom/anythink/basead/ui/ClickToReLoadView;->a(Lcom/anythink/basead/ui/ClickToReLoadView;)Lcom/anythink/basead/ui/ClickToReLoadView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/basead/ui/ClickToReLoadView$a;->a()V

    :cond_0
    return-void
.end method
