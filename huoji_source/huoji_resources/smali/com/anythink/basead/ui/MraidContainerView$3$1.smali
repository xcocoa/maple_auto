.class public final Lcom/anythink/basead/ui/MraidContainerView$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/mraid/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/MraidContainerView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/MraidContainerView$3;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/MraidContainerView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/MraidContainerView$3$1;->a:Lcom/anythink/basead/ui/MraidContainerView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lcom/anythink/basead/ui/MraidContainerView;->a()Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$3$1;->a:Lcom/anythink/basead/ui/MraidContainerView$3;

    iget-object v0, v0, Lcom/anythink/basead/ui/MraidContainerView$3;->d:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/MraidContainerView;->a(Lcom/anythink/basead/ui/MraidContainerView;)Z

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$3$1;->a:Lcom/anythink/basead/ui/MraidContainerView$3;

    iget-object v0, v0, Lcom/anythink/basead/ui/MraidContainerView$3;->d:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/MraidContainerView;->c(Lcom/anythink/basead/ui/MraidContainerView;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$3$1;->a:Lcom/anythink/basead/ui/MraidContainerView$3;

    iget-object v0, v0, Lcom/anythink/basead/ui/MraidContainerView$3;->d:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/MraidContainerView;->b(Lcom/anythink/basead/ui/MraidContainerView;)V

    return-void
.end method

.method public final a(Lcom/anythink/basead/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$3$1;->a:Lcom/anythink/basead/ui/MraidContainerView$3;

    iget-object v0, v0, Lcom/anythink/basead/ui/MraidContainerView$3;->d:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/MraidContainerView;->a(Lcom/anythink/basead/ui/MraidContainerView;)Z

    invoke-static {}, Lcom/anythink/basead/ui/MraidContainerView;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/basead/ui/MraidContainerView$3$1;->a:Lcom/anythink/basead/ui/MraidContainerView$3;

    iget-object p1, p1, Lcom/anythink/basead/ui/MraidContainerView$3;->d:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/MraidContainerView;->d(Lcom/anythink/basead/ui/MraidContainerView;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/MraidContainerView$3$1;->a:Lcom/anythink/basead/ui/MraidContainerView$3;

    iget-object p1, p1, Lcom/anythink/basead/ui/MraidContainerView$3;->d:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/MraidContainerView;->b(Lcom/anythink/basead/ui/MraidContainerView;)V

    return-void
.end method
