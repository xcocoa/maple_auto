.class public Lz2/qa$Oooo000;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/qa;->Oooo00o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/cyjh/http/bean/response/BaseResInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/qa;


# direct methods
.method public constructor <init>(Lz2/qa;)V
    .locals 0

    iput-object p1, p0, Lz2/qa$Oooo000;->OoooOoO:Lz2/qa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Lcom/cyjh/http/bean/response/BaseResInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunnerLite;->notifyRotationStatus()V

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    iget-object v1, p0, Lz2/qa$Oooo000;->OoooOoO:Lz2/qa;

    invoke-virtual {v1}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    invoke-static {v0}, Lz2/n4;->OooO0O0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lz2/j3;->OooOO0O()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lz2/j3;->OooOO0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cyjh/mqm/ElfinNativeJni;->initBaseParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    invoke-static {}, Lz2/j5;->OooOOo0()I

    move-result v0

    iput v0, v1, Lcom/cyjh/http/bean/request/DomainNameRequestParamsInfo;->appVersionCode:I

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    const-string v2, "http://app.mobileanjian.com/AppConfig2"

    invoke-virtual {v0, v2, v1}, Lz2/gc;->OooO0oo(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lz2/n4;->OooO0O0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3768350324"

    invoke-static {v0, v1}, Lcom/cyjh/mqm/ElfinNativeJni;->requestDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/cyjh/http/bean/response/BaseResInfo;

    invoke-static {v0, v1}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/response/BaseResInfo;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/cyjh/http/bean/response/BaseResInfo;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/cyjh/http/bean/response/BaseResInfo;->message:Ljava/lang/String;

    const-class v2, Lcom/cyjh/http/bean/response/DomainResult;

    invoke-static {v1, v2}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/http/bean/response/DomainResult;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v2, v1, Lcom/cyjh/http/bean/response/DomainResult;->keys:Ljava/lang/String;

    invoke-static {v2}, Lcom/cyjh/mqm/ElfinNativeJni;->test(Ljava/lang/String;)V

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v2

    iget-object v3, v1, Lcom/cyjh/http/bean/response/DomainResult;->keys:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lz2/m7;->OooO(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cyjh/http/bean/response/DomainResult;->getApiVersionV()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lz2/j3;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/cyjh/http/bean/response/DomainResult;->getApiDescKeys()[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lz2/j3;->OooO0Oo:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/cyjh/http/bean/response/DomainResult;->getAuthDescKeys()[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lz2/j3;->OooO0OO:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/cyjh/http/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lz2/i6;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/cyjh/http/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lz2/i6;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/cyjh/http/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lz2/i6;->OooO0oO:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/cyjh/http/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lz2/j3;->OooOOo(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cyjh/http/bean/response/DomainResult;->getApp2DomainName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lz2/j3;->OooOOOo(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cyjh/http/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lz2/j3;->OooOOo0(Ljava/lang/String;)V

    sget-object v2, Lz2/j3;->OooO0O0:Ljava/lang/String;

    sget-object v3, Lz2/j3;->OooO0OO:[Ljava/lang/String;

    iget-object v4, v1, Lcom/cyjh/http/bean/response/DomainResult;->keys:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lz2/y8;->OooO0oo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lz2/dc;->OooO00o()Lz2/dc;

    move-result-object v2

    iget-object v3, p0, Lz2/qa$Oooo000;->OoooOoO:Lz2/qa;

    invoke-virtual {v3}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1}, Lcom/cyjh/http/bean/response/DomainResult;->getPhoneConfig()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lz2/dc;->OooO0o0(Landroid/content/Context;Ljava/util/List;)Lcom/cyjh/http/bean/response/PhoneConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lz2/qa$Oooo000;->OoooOoO:Lz2/qa;

    invoke-static {v2, v1}, Lz2/qa;->OooOo0o(Lz2/qa;Lcom/cyjh/http/bean/response/PhoneConfig;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lz2/qa$Oooo000;->OoooOoO:Lz2/qa;

    invoke-virtual {v1}, Lz2/qa;->OooOoo0()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/qa$Oooo000;->OooO00o()Lcom/cyjh/http/bean/response/BaseResInfo;

    move-result-object v0

    return-object v0
.end method
