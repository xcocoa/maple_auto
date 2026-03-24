.class public final Lcom/anythink/basead/ui/MraidMediaView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/MraidContainerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/MraidMediaView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/MraidMediaView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/MraidMediaView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/MraidMediaView$1;->a:Lcom/anythink/basead/ui/MraidMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView$1;->a:Lcom/anythink/basead/ui/MraidMediaView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/basead/ui/MraidMediaView;->g:Z

    invoke-virtual {v0}, Lcom/anythink/basead/ui/MraidMediaView;->a()V

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView$1;->a:Lcom/anythink/basead/ui/MraidMediaView;

    invoke-static {v0}, Lcom/anythink/basead/ui/MraidMediaView;->a(Lcom/anythink/basead/ui/MraidMediaView;)Lcom/anythink/basead/ui/MraidMediaView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView$1;->a:Lcom/anythink/basead/ui/MraidMediaView;

    invoke-static {v0}, Lcom/anythink/basead/ui/MraidMediaView;->a(Lcom/anythink/basead/ui/MraidMediaView;)Lcom/anythink/basead/ui/MraidMediaView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/ui/MraidMediaView$a;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView$1;->a:Lcom/anythink/basead/ui/MraidMediaView;

    invoke-static {v0}, Lcom/anythink/basead/ui/MraidMediaView;->a(Lcom/anythink/basead/ui/MraidMediaView;)Lcom/anythink/basead/ui/MraidMediaView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView$1;->a:Lcom/anythink/basead/ui/MraidMediaView;

    invoke-static {v0}, Lcom/anythink/basead/ui/MraidMediaView;->a(Lcom/anythink/basead/ui/MraidMediaView;)Lcom/anythink/basead/ui/MraidMediaView$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/basead/ui/MraidMediaView$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
