.class public final Lcom/anythink/basead/ui/MraidBannerATView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/ui/MraidContainerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/MraidBannerATView;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/MraidBannerATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/MraidBannerATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/MraidBannerATView$1;->a:Lcom/anythink/basead/ui/MraidBannerATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView$1;->a:Lcom/anythink/basead/ui/MraidBannerATView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/basead/ui/MraidBannerATView;->z:Z

    invoke-virtual {v0}, Lcom/anythink/basead/ui/MraidBannerATView;->o()V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView$1;->a:Lcom/anythink/basead/ui/MraidBannerATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/MraidBannerATView;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView$1;->a:Lcom/anythink/basead/ui/MraidBannerATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/l;->w(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/MraidBannerATView$1;->a:Lcom/anythink/basead/ui/MraidBannerATView;

    const/4 v0, 0x1

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/anythink/basead/ui/BaseBannerATView;->a(II)V

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
