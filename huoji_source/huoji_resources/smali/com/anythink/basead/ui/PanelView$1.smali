.class public final Lcom/anythink/basead/ui/PanelView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/PanelView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/PanelView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/PanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/PanelView$1;->a:Lcom/anythink/basead/ui/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView$1;->a:Lcom/anythink/basead/ui/PanelView;

    invoke-static {v0}, Lcom/anythink/basead/ui/PanelView;->a(Lcom/anythink/basead/ui/PanelView;)Lcom/anythink/basead/ui/PanelView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/PanelView$1;->a:Lcom/anythink/basead/ui/PanelView;

    invoke-static {v0}, Lcom/anythink/basead/ui/PanelView;->a(Lcom/anythink/basead/ui/PanelView;)Lcom/anythink/basead/ui/PanelView$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/anythink/basead/ui/PanelView$a;->a(II)V

    :cond_0
    return-void
.end method
