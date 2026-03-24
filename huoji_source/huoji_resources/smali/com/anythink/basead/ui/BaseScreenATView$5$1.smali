.class public final Lcom/anythink/basead/ui/BaseScreenATView$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseScreenATView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/anythink/basead/ui/BaseScreenATView$5;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseScreenATView$5;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$5$1;->b:Lcom/anythink/basead/ui/BaseScreenATView$5;

    iput-object p2, p0, Lcom/anythink/basead/ui/BaseScreenATView$5$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$5$1;->b:Lcom/anythink/basead/ui/BaseScreenATView$5;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView$5;->a:Lcom/anythink/basead/ui/BaseScreenATView$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$5$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/anythink/basead/ui/BaseScreenATView$a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
