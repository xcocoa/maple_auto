.class public Lz2/nc;
.super Lz2/hc;
.source ""


# static fields
.field public static final OooO:Ljava/lang/String; = "nc"


# instance fields
.field private OooO0O0:Landroid/content/Context;

.field private OooO0OO:Lz2/ld;

.field private OooO0Oo:J

.field private OooO0o:Ljava/lang/String;

.field private OooO0o0:Z

.field private OooO0oO:Ljava/lang/String;

.field private OooO0oo:Lcom/cyjh/http/bean/request/UpdateRequestInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lz2/ld;Z)V
    .locals 1

    invoke-direct {p0}, Lz2/hc;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/nc;->OooO0o0:Z

    iput-object p1, p0, Lz2/nc;->OooO0O0:Landroid/content/Context;

    iput-object p2, p0, Lz2/nc;->OooO0OO:Lz2/ld;

    iput-boolean p3, p0, Lz2/nc;->OooO0o0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lz2/ld;ZLcom/cyjh/http/bean/request/UpdateRequestInfo;)V
    .locals 1

    invoke-direct {p0}, Lz2/hc;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/nc;->OooO0o0:Z

    iput-object p1, p0, Lz2/nc;->OooO0O0:Landroid/content/Context;

    iput-object p2, p0, Lz2/nc;->OooO0OO:Lz2/ld;

    iput-boolean p3, p0, Lz2/nc;->OooO0o0:Z

    iput-object p4, p0, Lz2/nc;->OooO0oo:Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 5

    :try_start_0
    check-cast p1, Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    invoke-static {p1, v0}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lz2/nc;->OooO0OO:Lz2/ld;

    invoke-interface {v0, p1}, Lz2/ld;->OooO0O0(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    iget-object v0, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->StudioProjectKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/nc;->OooO0OO:Lz2/ld;

    invoke-interface {v0, p1}, Lz2/ld;->OooO00o(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    :cond_0
    iget-wide v0, p0, Lz2/nc;->OooO0Oo:J

    iget-wide v2, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->ClientTimestamp:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget v0, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateType:I

    if-nez v0, :cond_1

    iget-object p1, p0, Lz2/nc;->OooO0OO:Lz2/ld;

    invoke-interface {p1}, Lz2/ld;->OooOOO0()V

    iget-boolean p1, p0, Lz2/nc;->OooO0o0:Z

    if-eqz p1, :cond_5

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p1

    invoke-virtual {p1}, Lz2/gc;->OooO0O0()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/cyjh/http/R$string;->version_newest:I

    invoke-static {p1, v0}, Lz2/c5;->OooO0O0(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lz2/nc;->OooO0OO:Lz2/ld;

    invoke-interface {v0, p1}, Lz2/ld;->OooOO0(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lz2/nc;->OooO0OO:Lz2/ld;

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0}, Lz2/gc;->OooO0O0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cyjh/http/R$string;->json_parse_exception:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Lz2/ld;->OooO0o(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lz2/nc;->OooO0OO:Lz2/ld;

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0}, Lz2/gc;->OooO0O0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cyjh/http/R$string;->json_parse_exception:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateFailure --> message="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p0, Lz2/nc;->OooO0OO:Lz2/ld;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.cyjh.share.AppVersionUpdatePresenter--onErrorResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zzz"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz2/nc;->OooO0OO:Lz2/ld;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lz2/ld;->OooO0o(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.cyjh.share.AppVersionUpdatePresenter--onErrorResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zzz"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz2/nc;->OooO0OO:Lz2/ld;

    invoke-interface {v0, p1}, Lz2/ld;->OooO0o(Ljava/lang/String;)V

    return-void
.end method

.method public OooO0OO()V
    .locals 2

    iget-object v0, p0, Lz2/hc;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/od;->OooOOO(Ljava/lang/Object;)V

    return-void
.end method

.method public OooO0o(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object p1

    new-instance v0, Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-direct {v0, p1}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iget-object p1, p0, Lz2/nc;->OooO0oo:Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->getScriptId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    iget-object p1, p0, Lz2/nc;->OooO0oo:Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-virtual {p1}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    iget-object p1, p0, Lz2/nc;->OooO0oo:Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-virtual {p1}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->getScriptVersion()I

    move-result p1

    iput p1, v0, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->ScriptVersion:I

    iget-object p1, p0, Lz2/nc;->OooO0oo:Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    invoke-virtual {p1}, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->getIsScriptHotUpgrade()I

    move-result p1

    iput p1, v0, Lcom/cyjh/http/bean/request/UpdateRequestInfo;->IsScriptHotUpgrade:I

    iget-object p1, p0, Lz2/nc;->OooO0oo:Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    iget-object p1, p1, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->AppVersion:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lz2/nc;->OooO0oo:Lcom/cyjh/http/bean/request/UpdateRequestInfo;

    iget-object p1, p1, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->AppVersion:Ljava/lang/String;

    iput-object p1, v0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->AppVersion:Ljava/lang/String;

    :cond_0
    const-string p1, "VersionUpdate"

    invoke-static {p1}, Lz2/j3;->OooO0oO(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lz2/gc;->OooO(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object v0

    sget-wide v1, Lz2/gc;->OooO0o:J

    iput-wide v1, p0, Lz2/nc;->OooO0Oo:J

    iget-object v1, p0, Lz2/hc;->OooO00o:Lz2/od;

    iget-object v2, p0, Lz2/nc;->OooO0O0:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1, v0}, Lz2/od;->OooOO0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.cyjh.share.AppVersionUpdatePresenter--updateVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zzz"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
