.class public Lcom/octopus/ad/internal/nativead/a;
.super Lcom/octopus/ad/internal/network/a;
.source ""

# interfaces
.implements Lcom/octopus/ad/IBidding;
.implements Lcom/octopus/ad/internal/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/nativead/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/octopus/ad/internal/c;

.field private c:Lcom/octopus/ad/NativeAdListener;

.field private d:Lcom/octopus/ad/internal/nativead/a$a;

.field private e:Z

.field private f:Z

.field private g:Lcom/octopus/ad/internal/d;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/octopus/ad/internal/network/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/nativead/a;->k:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/DeviceInfoUtil;->retrieveDeviceInfo(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/UserEnvInfoUtil;->retrieveUserEnvInfo(Landroid/content/Context;)V

    new-instance v0, Lcom/octopus/ad/internal/d;

    invoke-static {}, Lcom/octopus/ad/internal/utilities/StringUtil;->createRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/octopus/ad/internal/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->g:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p2}, Lcom/octopus/ad/internal/d;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a;->g:Lcom/octopus/ad/internal/d;

    invoke-virtual {p1, p3}, Lcom/octopus/ad/internal/d;->a(I)V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a;->g:Lcom/octopus/ad/internal/d;

    sget-object p2, Lcom/octopus/ad/internal/l;->e:Lcom/octopus/ad/internal/l;

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/d;->a(Lcom/octopus/ad/internal/l;)V

    new-instance p1, Lcom/octopus/ad/internal/c;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/c;-><init>(Lcom/octopus/ad/internal/a;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/a;->a:Lcom/octopus/ad/internal/c;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/c;->a(I)V

    new-instance p1, Lcom/octopus/ad/internal/nativead/a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/octopus/ad/internal/nativead/a$a;-><init>(Lcom/octopus/ad/internal/nativead/a;Lcom/octopus/ad/internal/nativead/a$1;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/a;->d:Lcom/octopus/ad/internal/nativead/a$a;

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/nativead/a;)Lcom/octopus/ad/NativeAdListener;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/nativead/a;->c:Lcom/octopus/ad/NativeAdListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/nativead/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/internal/nativead/a;->k:Z

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/nativead/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/nativead/a;->e:Z

    return p0
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/nativead/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/octopus/ad/internal/nativead/a;->f:Z

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/internal/nativead/a;->h:I

    return-void
.end method

.method public a(Lcom/octopus/ad/NativeAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/a;->c:Lcom/octopus/ad/NativeAdListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->nativeLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->set_placement_id:I

    invoke-static {v1, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->g:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->nativeLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->set_opens_native_browser:I

    invoke-static {v1, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->g:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->b(Z)V

    return-void
.end method

.method public a()Z
    .locals 3

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->nativeLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->get_opens_native_browser:I

    iget-object v2, p0, Lcom/octopus/ad/internal/nativead/a;->g:Lcom/octopus/ad/internal/d;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->j()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->g:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->j()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/octopus/ad/internal/network/a$a;)Z
    .locals 2

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a;->c:Lcom/octopus/ad/NativeAdListener;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->nativeLogTag:Ljava/lang/String;

    const-string v1, "No mNativeAdListener installed for this request, won\'t load a new ad"

    :goto_0
    invoke-static {p1, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-boolean p1, p0, Lcom/octopus/ad/internal/nativead/a;->k:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->nativeLogTag:Ljava/lang/String;

    const-string v1, "Still loading last nativead ad , won\'t load a new ad"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a;->g:Lcom/octopus/ad/internal/d;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a;->a:Lcom/octopus/ad/internal/c;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->a()V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a;->a:Lcom/octopus/ad/internal/c;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->c()V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/a;->a:Lcom/octopus/ad/internal/c;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->b()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/nativead/a;->k:Z

    return p1

    :cond_2
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->nativeLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->get_placement_id:I

    iget-object v2, p0, Lcom/octopus/ad/internal/nativead/a;->g:Lcom/octopus/ad/internal/d;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->g:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/a;->i:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/nativead/a;->a(Z)V

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/nativead/a;->h:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->g:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->g:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public e()Lcom/octopus/ad/internal/d;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->g:Lcom/octopus/ad/internal/d;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/a;->j:Ljava/lang/String;

    return-void
.end method

.method public f()Lcom/octopus/ad/internal/b;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->d:Lcom/octopus/ad/internal/nativead/a$a;

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->d:Lcom/octopus/ad/internal/nativead/a$a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/nativead/a$a;->b()V

    return-void
.end method

.method public getMediaType()Lcom/octopus/ad/internal/l;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->g:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->k()Lcom/octopus/ad/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public isReadyToStart()Z
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->c:Lcom/octopus/ad/NativeAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->g:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->d:Lcom/octopus/ad/internal/nativead/a$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/octopus/ad/internal/nativead/a$a;->b:Lcom/octopus/ad/NativeAdResponse;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/octopus/ad/internal/nativead/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/octopus/ad/internal/nativead/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/octopus/ad/internal/nativead/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendWinNotice(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a;->d:Lcom/octopus/ad/internal/nativead/a$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/octopus/ad/internal/nativead/a$a;->b:Lcom/octopus/ad/NativeAdResponse;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/octopus/ad/internal/nativead/c;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/nativead/c;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
