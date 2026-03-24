.class public Lz2/qa$OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/qa;->Oooo0o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/qa;


# direct methods
.method public constructor <init>(Lz2/qa;)V
    .locals 0

    iput-object p1, p0, Lz2/qa$OooO0o;->OoooOoO:Lz2/qa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    iget-object v1, p0, Lz2/qa$OooO0o;->OoooOoO:Lz2/qa;

    invoke-virtual {v1}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    iget-object v1, p0, Lz2/qa$OooO0o;->OoooOoO:Lz2/qa;

    sget-wide v2, Lz2/gc;->OooO0o:J

    invoke-static {v1, v2, v3}, Lz2/qa;->OooOoOO(Lz2/qa;J)J

    new-instance v1, Lcom/cyjh/http/bean/request/StartAppRequestInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/StartAppRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    invoke-static {}, Lz2/dc;->OooO00o()Lz2/dc;

    move-result-object v0

    invoke-virtual {v0}, Lz2/dc;->OooO0O0()I

    move-result v0

    iput v0, v1, Lcom/cyjh/http/bean/request/StartAppRequestInfo;->CloudPhoneType:I

    invoke-static {v1}, Lz2/n4;->OooO0O0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/ii;->OooOOoo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "Data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "AppInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "IsOcrAutoDownloand"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "OcrDownloandURL"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lz2/ec;->OooO0Oo()Lz2/ec;

    move-result-object v2

    new-instance v3, Lz2/qa$OooO0o$OooO00o;

    invoke-direct {v3, p0}, Lz2/qa$OooO0o$OooO00o;-><init>(Lz2/qa$OooO0o;)V

    invoke-virtual {v2, v1, v3}, Lz2/ec;->OooO0OO(Ljava/lang/String;Lz2/ec$OooO0o;)V

    :cond_0
    iget-object v1, p0, Lz2/qa$OooO0o;->OoooOoO:Lz2/qa;

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lz2/qa;->OooOoO(Lz2/qa;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
