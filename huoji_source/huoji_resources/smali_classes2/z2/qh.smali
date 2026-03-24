.class public Lz2/qh;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO0o:Lz2/qh; = null

.field private static final OooO0oO:I = 0x20


# instance fields
.field public OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0O0:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

.field public OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/response/FlySettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0Oo:Lcom/cyjh/http/bean/response/FlySettingInfo;

.field public OooO0o0:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/qh;->OooO0OO:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/qh;->OooO00o:Ljava/util/List;

    return-void
.end method

.method public static OooO0O0()Lz2/qh;
    .locals 2

    sget-object v0, Lz2/qh;->OooO0o:Lz2/qh;

    if-nez v0, :cond_1

    const-class v0, Lz2/qh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/qh;->OooO0o:Lz2/qh;

    if-nez v1, :cond_0

    new-instance v1, Lz2/qh;

    invoke-direct {v1}, Lz2/qh;-><init>()V

    sput-object v1, Lz2/qh;->OooO0o:Lz2/qh;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lz2/qh;->OooO0o:Lz2/qh;

    return-object v0
.end method


# virtual methods
.method public OooO00o(ILjava/lang/String;)Lz2/mh;
    .locals 8

    new-instance v0, Lz2/mh;

    invoke-direct {v0}, Lz2/mh;-><init>()V

    iget-object v1, p0, Lz2/qh;->OooO0OO:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lz2/qh;->OooO0OO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/http/bean/response/FlySettingInfo;

    iget v4, v3, Lcom/cyjh/http/bean/response/FlySettingInfo;->AdType:I

    if-ne p1, v4, :cond_1

    iput-object v3, p0, Lz2/qh;->OooO0Oo:Lcom/cyjh/http/bean/response/FlySettingInfo;

    :cond_2
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadILFYAd --> ilfyAd.randomNumber ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "XJL_AD_TAG"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lz2/qh;->OooO0Oo:Lcom/cyjh/http/bean/response/FlySettingInfo;

    iget v4, v1, Lcom/cyjh/http/bean/response/FlySettingInfo;->Active:I

    if-ne v4, v2, :cond_3

    int-to-double v4, p1

    iget-wide v6, v1, Lcom/cyjh/http/bean/response/FlySettingInfo;->Probability:D

    cmpg-double p1, v4, v6

    if-gez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lz2/mh;->OooO00o:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadILFYAd --> ilfyAd.isDisplay ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lz2/mh;->OooO00o:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lz2/qh;->OooO0Oo:Lcom/cyjh/http/bean/response/FlySettingInfo;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/FlySettingInfo;->FlyKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    move-object p2, p1

    :goto_1
    iput-object p2, v0, Lz2/mh;->OooO0O0:Ljava/lang/String;

    return-object v0

    :cond_5
    :goto_2
    iput-boolean v2, v0, Lz2/mh;->OooO00o:Z

    iput-object p2, v0, Lz2/mh;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0OO(I)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a isDisplayBackgroundSetAd 1 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lz2/qh;->OooO00o:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a isDisplayBackgroundSetAd 2 ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lz2/qh;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget v3, v2, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->AdType:I

    if-ne v3, p1, :cond_1

    iput-object v2, p0, Lz2/qh;->OooO0O0:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a isDisplayBackgroundSetAd 2 randomNumber ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a isDisplayBackgroundSetAd 2 mBackgroundSetAdInfo.Probability ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lz2/qh;->OooO0O0:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-wide v5, v5, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->Probability:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    int-to-double v4, v2

    iget-object v2, p0, Lz2/qh;->OooO0O0:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-wide v6, v2, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->Probability:D

    cmpg-double v2, v4, v6

    if-gez v2, :cond_1

    return v3

    :cond_2
    :goto_0
    return v1
.end method

.method public OooO0Oo()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url isFreeAd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/qh;->OooO0o0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XJL_AD_TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lz2/qh;->OooO0o0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public OooO0o0(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lz2/qh;->OooO0O0:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-object v1, v0, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->LinkUrl:Ljava/lang/String;

    iget v2, v0, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->OpenMethod:I

    iget-object v0, v0, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->Title:Ljava/lang/String;

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lz2/ih;->OooO0Oo()Lz2/ih;

    move-result-object p1

    invoke-virtual {p1}, Lz2/ih;->OooO0OO()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lz2/ih;->OooO0Oo()Lz2/ih;

    move-result-object v0

    invoke-virtual {v0}, Lz2/ih;->OooO0OO()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/elfin/ad/R$string;->link_url_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lz2/c5;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, v0, v1}, Lz2/ei;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
