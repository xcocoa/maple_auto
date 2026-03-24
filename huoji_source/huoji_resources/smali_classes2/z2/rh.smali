.class public Lz2/rh;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooOO0:I = 0x4

.field private static final OooOO0O:I = 0x64

.field private static final OooOO0o:I = 0x66

.field private static final OooOOO0:Ljava/lang/String; = "AdManager"


# instance fields
.field private OooO:Landroid/view/View;

.field private OooO00o:Z

.field public OooO0O0:I

.field private OooO0OO:I

.field private OooO0Oo:I

.field private OooO0o:Landroid/app/Activity;

.field private OooO0o0:Lz2/nh;

.field private OooO0oO:I

.field private OooO0oo:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz2/rh;->OooO0OO:I

    iput v0, p0, Lz2/rh;->OooO0Oo:I

    const/16 v0, 0x64

    iput v0, p0, Lz2/rh;->OooO0oO:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lz2/rh;->OooO0oo:Landroid/os/Handler;

    iput-object p1, p0, Lz2/rh;->OooO0o:Landroid/app/Activity;

    iput-object p2, p0, Lz2/rh;->OooO:Landroid/view/View;

    return-void
.end method

.method private OooO(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadBackgroundAd index\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XJL_AD_TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/qh;->OooO0OO(I)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a handleMessage --> isDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object p1

    iget-object p1, p1, Lz2/qh;->OooO0O0:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    if-eqz p1, :cond_0

    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object p1

    iget-object p1, p1, Lz2/qh;->OooO0O0:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-object v0, p1, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->ImageUrl:Ljava/lang/String;

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a handleMessage --> imageUrl="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p0, Lz2/rh;->OooO0o0:Lz2/nh;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lz2/rh;->OooO0o0:Lz2/nh;

    if-eqz p1, :cond_2

    :goto_0
    invoke-interface {p1, v0}, Lz2/nh;->OooO0O0(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static synthetic OooO00o(Lz2/rh;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lz2/rh;->OooO0o:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/rh;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/rh;->OooOOo(Landroid/app/Activity;)V

    return-void
.end method

.method private OooO0OO()V
    .locals 4

    iget v0, p0, Lz2/rh;->OooO0OO:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lz2/rh;->OooO0oo:Landroid/os/Handler;

    new-instance v1, Lz2/rh$OooO0O0;

    invoke-direct {v1, p0}, Lz2/rh$OooO0O0;-><init>(Lz2/rh;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private synthetic OooO0oO()V
    .locals 1

    iget-object v0, p0, Lz2/rh;->OooO0o0:Lz2/nh;

    invoke-interface {v0}, Lz2/nh;->onAdClose()V

    return-void
.end method

.method private OooOO0o(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object v0

    new-instance v1, Lz2/rh$OooO0OO;

    invoke-direct {v1, p0, p1}, Lz2/rh$OooO0OO;-><init>(Lz2/rh;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lz2/mc;->OooOOO0(Lz2/mc$OooO00o;)Lz2/mc;

    move-result-object v2

    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object v0

    iget-object v0, v0, Lz2/qh;->OooO0O0:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-wide v6, v0, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->Id:J

    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lz2/mc;->OooO(Landroid/content/Context;IIJ)V

    return-void
.end method

.method private OooOOOo(I)V
    .locals 0

    iput p1, p0, Lz2/rh;->OooO0oO:I

    return-void
.end method

.method private OooOOo(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p1}, Lz2/ei;->OooO0O0(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO0Oo()V
    .locals 2

    iget v0, p0, Lz2/rh;->OooO0Oo:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lz2/rh;->OooOOO0()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/rh;->OooO0o:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lz2/rh;->OooOOo(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public OooO0o()Z
    .locals 1

    iget-boolean v0, p0, Lz2/rh;->OooO00o:Z

    return v0
.end method

.method public OooO0o0()V
    .locals 4

    const-string v0, "AdManager"

    const-string v1, "displayAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz2/rh;->OooO0o0:Lz2/nh;

    if-eqz v0, :cond_0

    iget v1, p0, Lz2/rh;->OooO0oO:I

    invoke-interface {v0, v1}, Lz2/nh;->OooO0Oo(I)V

    :cond_0
    iget-object v0, p0, Lz2/rh;->OooO0oo:Landroid/os/Handler;

    new-instance v1, Lz2/ph;

    invoke-direct {v1, p0}, Lz2/ph;-><init>(Lz2/rh;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic OooO0oo()V
    .locals 0

    invoke-direct {p0}, Lz2/rh;->OooO0oO()V

    return-void
.end method

.method public OooOO0(ILz2/nh;)V
    .locals 2

    iput p1, p0, Lz2/rh;->OooO0O0:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadILFYAd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 p1, 0x64

    invoke-direct {p0, p1}, Lz2/rh;->OooOOOo(I)V

    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object p1

    iget v0, p0, Lz2/rh;->OooO0O0:I

    const-string v1, "21462E427898ADCCC2171718D603B0DE"

    invoke-virtual {p1, v0, v1}, Lz2/qh;->OooO00o(ILjava/lang/String;)Lz2/mh;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadILFYAd --> ilfyAd.isDisplay ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lz2/mh;->OooO00o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object p2, p0, Lz2/rh;->OooO0o0:Lz2/nh;

    iget-boolean p1, p1, Lz2/mh;->OooO00o:Z

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lz2/nh;->OooO0OO()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lz2/rh;->OooOOo0()V

    :goto_0
    return-void
.end method

.method public OooOO0O()V
    .locals 8

    iget-object v0, p0, Lz2/rh;->OooO:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lz2/rh;->OooO0oO:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object v0

    new-instance v1, Lz2/rh$OooO00o;

    invoke-direct {v1, p0}, Lz2/rh$OooO00o;-><init>(Lz2/rh;)V

    invoke-virtual {v0, v1}, Lz2/mc;->OooOOO0(Lz2/mc$OooO00o;)Lz2/mc;

    move-result-object v2

    iget-object v3, p0, Lz2/rh;->OooO0o:Landroid/app/Activity;

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object v0

    iget-object v0, v0, Lz2/qh;->OooO0O0:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-wide v6, v0, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->Id:J

    invoke-virtual/range {v2 .. v7}, Lz2/mc;->OooO(Landroid/content/Context;IIJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public OooOOO()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/rh;->OooO:Landroid/view/View;

    iput-object v0, p0, Lz2/rh;->OooO0o:Landroid/app/Activity;

    iput-object v0, p0, Lz2/rh;->OooO0o0:Lz2/nh;

    iget-object v1, p0, Lz2/rh;->OooO0oo:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/rh;->OooO00o:Z

    return-void
.end method

.method public OooOOO0()V
    .locals 1

    iget-boolean v0, p0, Lz2/rh;->OooO00o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/rh;->OooO00o:Z

    iget-object v0, p0, Lz2/rh;->OooO0o:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lz2/rh;->OooOO0o(Landroid/content/Context;)V

    return-void
.end method

.method public OooOOOO()V
    .locals 1

    iget-boolean v0, p0, Lz2/rh;->OooO00o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/rh;->OooO0o:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lz2/rh;->OooOOo(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public OooOOo0()V
    .locals 1

    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lz2/rh;->OooOOOo(I)V

    iget v0, p0, Lz2/rh;->OooO0O0:I

    invoke-direct {p0, v0}, Lz2/rh;->OooO(I)V

    return-void
.end method
