.class public Lcom/octopus/ad/internal/nativead/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/b;
.implements Lcom/octopus/ad/internal/utilities/ImageService$ImageServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/nativead/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/octopus/ad/internal/utilities/ImageService;

.field public b:Lcom/octopus/ad/NativeAdResponse;

.field public final synthetic c:Lcom/octopus/ad/internal/nativead/a;


# direct methods
.method private constructor <init>(Lcom/octopus/ad/internal/nativead/a;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/internal/nativead/a;Lcom/octopus/ad/internal/nativead/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/nativead/a$a;-><init>(Lcom/octopus/ad/internal/nativead/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/a;->a(Lcom/octopus/ad/internal/nativead/a;)Lcom/octopus/ad/NativeAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/a;->a(Lcom/octopus/ad/internal/nativead/a;)Lcom/octopus/ad/NativeAdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/octopus/ad/NativeAdListener;->onAdFailed(I)V

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/nativead/a;->a(Lcom/octopus/ad/internal/nativead/a;Z)Z

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/network/b;)V
    .locals 3

    invoke-interface {p1}, Lcom/octopus/ad/internal/network/b;->a()Lcom/octopus/ad/internal/l;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/l;->e:Lcom/octopus/ad/internal/l;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x138e7

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/nativead/a$a;->a(I)V

    goto/16 :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/octopus/ad/internal/network/b;->c()Lcom/octopus/ad/NativeAdResponse;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-object v0, p0, Lcom/octopus/ad/internal/nativead/a$a;->b:Lcom/octopus/ad/NativeAdResponse;

    move-object v1, v0

    check-cast v1, Lcom/octopus/ad/internal/nativead/c;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/nativead/c;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const v0, 0x138e4

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/nativead/a$a;->a(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    invoke-interface {p1}, Lcom/octopus/ad/internal/network/b;->e()I

    move-result p1

    add-int/lit8 p1, p1, 0x64

    const-string v1, "1001"

    const-string v2, "OTHER"

    invoke-virtual {v0, p1, v1, v2}, Lcom/octopus/ad/internal/nativead/a;->sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    invoke-interface {p1}, Lcom/octopus/ad/internal/network/b;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/nativead/a;->a(I)V

    iget-object v1, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    invoke-interface {p1}, Lcom/octopus/ad/internal/network/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/octopus/ad/internal/nativead/a;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/octopus/ad/internal/nativead/a;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/nativead/a;->b(Lcom/octopus/ad/internal/nativead/a;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/nativead/a;->c(Lcom/octopus/ad/internal/nativead/a;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/nativead/a;->a(Lcom/octopus/ad/internal/nativead/a;)Lcom/octopus/ad/NativeAdListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/nativead/a;->a(Lcom/octopus/ad/internal/nativead/a;)Lcom/octopus/ad/NativeAdListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/octopus/ad/NativeAdListener;->onAdLoaded(Lcom/octopus/ad/NativeAdResponse;)V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->destroy()V

    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/nativead/a;->a(Lcom/octopus/ad/internal/nativead/a;Z)Z

    return-void

    :cond_4
    new-instance p1, Lcom/octopus/ad/internal/utilities/ImageService;

    invoke-direct {p1}, Lcom/octopus/ad/internal/utilities/ImageService;-><init>()V

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/a$a;->a:Lcom/octopus/ad/internal/utilities/ImageService;

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/nativead/a;->b(Lcom/octopus/ad/internal/nativead/a;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/octopus/ad/internal/nativead/a$a$1;

    invoke-direct {p1, p0, v0}, Lcom/octopus/ad/internal/nativead/a$a$1;-><init>(Lcom/octopus/ad/internal/nativead/a$a;Lcom/octopus/ad/NativeAdResponse;)V

    iget-object v1, p0, Lcom/octopus/ad/internal/nativead/a$a;->a:Lcom/octopus/ad/internal/utilities/ImageService;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/octopus/ad/internal/utilities/ImageService;->registerImageReceiver(Lcom/octopus/ad/internal/utilities/ImageService$ImageReceiver;Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/nativead/a;->c(Lcom/octopus/ad/internal/nativead/a;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/octopus/ad/internal/nativead/a$a$2;

    invoke-direct {p1, p0, v0}, Lcom/octopus/ad/internal/nativead/a$a$2;-><init>(Lcom/octopus/ad/internal/nativead/a$a;Lcom/octopus/ad/NativeAdResponse;)V

    iget-object v1, p0, Lcom/octopus/ad/internal/nativead/a$a;->a:Lcom/octopus/ad/internal/utilities/ImageService;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/octopus/ad/internal/utilities/ImageService;->registerImageReceiver(Lcom/octopus/ad/internal/utilities/ImageService$ImageReceiver;Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a$a;->a:Lcom/octopus/ad/internal/utilities/ImageService;

    invoke-virtual {p1, p0}, Lcom/octopus/ad/internal/utilities/ImageService;->registerNotification(Lcom/octopus/ad/internal/utilities/ImageService$ImageServiceListener;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a$a;->a:Lcom/octopus/ad/internal/utilities/ImageService;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/utilities/ImageService;->execute()V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a$a;->b:Lcom/octopus/ad/NativeAdResponse;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/nativead/a$a;->b:Lcom/octopus/ad/NativeAdResponse;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public onAllImageDownloadsFinish()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/a;->a(Lcom/octopus/ad/internal/nativead/a;)Lcom/octopus/ad/NativeAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/a;->a(Lcom/octopus/ad/internal/nativead/a;)Lcom/octopus/ad/NativeAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/internal/nativead/a$a;->b:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0, v1}, Lcom/octopus/ad/NativeAdListener;->onAdLoaded(Lcom/octopus/ad/NativeAdResponse;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a$a;->b:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->destroy()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/nativead/a$a;->a:Lcom/octopus/ad/internal/utilities/ImageService;

    iput-object v0, p0, Lcom/octopus/ad/internal/nativead/a$a;->b:Lcom/octopus/ad/NativeAdResponse;

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a$a;->c:Lcom/octopus/ad/internal/nativead/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/nativead/a;->a(Lcom/octopus/ad/internal/nativead/a;Z)Z

    return-void
.end method
