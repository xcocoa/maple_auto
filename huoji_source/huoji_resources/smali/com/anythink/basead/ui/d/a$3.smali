.class public final Lcom/anythink/basead/ui/d/a$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/d/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/d/a;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/d/a$3;->a:Lcom/anythink/basead/ui/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a$3;->a:Lcom/anythink/basead/ui/d/a;

    invoke-static {v0}, Lcom/anythink/basead/ui/d/a;->b(Lcom/anythink/basead/ui/d/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a$3;->a:Lcom/anythink/basead/ui/d/a;

    invoke-static {v0}, Lcom/anythink/basead/ui/d/a;->b(Lcom/anythink/basead/ui/d/a;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
