.class public final Lcom/anythink/basead/ui/MraidSplashATView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/MraidContainerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/MraidSplashATView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/MraidSplashATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/MraidSplashATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/MraidSplashATView$2;->a:Lcom/anythink/basead/ui/MraidSplashATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidSplashATView$2;->a:Lcom/anythink/basead/ui/MraidSplashATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/MraidSplashATView;->a(Lcom/anythink/basead/ui/MraidSplashATView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidSplashATView$2;->a:Lcom/anythink/basead/ui/MraidSplashATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/l;->w(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/MraidSplashATView$2;->a:Lcom/anythink/basead/ui/MraidSplashATView;

    const/4 v0, 0x1

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/anythink/basead/ui/BaseSplashATView;->a(II)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidSplashATView$2;->a:Lcom/anythink/basead/ui/MraidSplashATView;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseATView;->a(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidSplashATView$2;->a:Lcom/anythink/basead/ui/MraidSplashATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/MraidSplashATView;->p()V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidSplashATView$2;->a:Lcom/anythink/basead/ui/MraidSplashATView;

    const-string v1, "40002"

    const-string v2, "Mraid init fail with exception:"

    invoke-static {v1, v2}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseSplashATView;->a(Lcom/anythink/basead/c/e;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidSplashATView$2;->a:Lcom/anythink/basead/ui/MraidSplashATView;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/ui/BaseSplashATView;->a(ZI)V

    return-void
.end method
