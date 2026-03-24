.class public final Lcom/anythink/basead/ui/FullScreenATView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/PanelView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/FullScreenATView;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/FullScreenATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/FullScreenATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/FullScreenATView$2;->a:Lcom/anythink/basead/ui/FullScreenATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView$2;->a:Lcom/anythink/basead/ui/FullScreenATView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->a(II)V

    return-void
.end method

.method public final a()Z
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView$2;->a:Lcom/anythink/basead/ui/FullScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView$2;->a:Lcom/anythink/basead/ui/FullScreenATView;

    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/ui/BaseScreenATView;->a(II)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
