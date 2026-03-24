.class public Lcom/octopus/ad/internal/nativead/c$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/view/AdViewImpl$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/nativead/c;->a(Landroid/view/View;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/nativead/c;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/nativead/c;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c$2;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$2;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/c;->f(Lcom/octopus/ad/internal/nativead/c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$2;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/c;->g(Lcom/octopus/ad/internal/nativead/c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$2;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/c;->h(Lcom/octopus/ad/internal/nativead/c;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$2;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/c;->i(Lcom/octopus/ad/internal/nativead/c;)Lcom/octopus/ad/internal/network/ServerResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$2;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/c;->h(Lcom/octopus/ad/internal/nativead/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frequency"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/octopus/ad/internal/nativead/c$2;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v2}, Lcom/octopus/ad/internal/nativead/c;->i(Lcom/octopus/ad/internal/nativead/c;)Lcom/octopus/ad/internal/network/ServerResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/octopus/ad/internal/network/ServerResponse;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/internal/utilities/SPUtils;->putFrequency(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$2;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {p1}, Lcom/octopus/ad/internal/nativead/c;->i(Lcom/octopus/ad/internal/nativead/c;)Lcom/octopus/ad/internal/network/ServerResponse;

    move-result-object p1

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->isAoClickCallBack(Lcom/octopus/ad/internal/network/ServerResponse;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$2;->a:Lcom/octopus/ad/internal/nativead/c;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/octopus/ad/internal/nativead/c;->b(Lcom/octopus/ad/internal/nativead/c;Z)Z

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$2;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/nativead/c;->c(Lcom/octopus/ad/internal/nativead/c;Z)Z

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$2;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {p1, v1}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/nativead/c;I)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$2;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/nativead/c;->b(Lcom/octopus/ad/internal/nativead/c;Z)Z

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$2;->a:Lcom/octopus/ad/internal/nativead/c;

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/nativead/c;I)I

    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$2;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {p1}, Lcom/octopus/ad/internal/nativead/c;->h(Lcom/octopus/ad/internal/nativead/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/nativead/c;Landroid/content/Context;)V

    :cond_1
    return-void
.end method
