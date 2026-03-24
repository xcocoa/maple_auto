.class public final Lcn/haorui/sdk/core/utils/PackConfigUtil$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/utils/PackConfigUtil;->getConfig(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/haorui/sdk/core/utils/HttpGetJsonCallback<",
        "Lcn/haorui/sdk/core/utils/OriginalResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/PackConfigUtil$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackConfigUtil"

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcn/haorui/sdk/core/utils/PackageBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/utils/PackageBean;

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/PackConfigUtil$a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->access$100(Landroid/content/Context;Lcn/haorui/sdk/core/utils/PackageBean;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcn/haorui/sdk/core/utils/OriginalResponse;

    :try_start_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/OriginalResponse;->getCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xc8

    const-string v2, ""

    if-ne v0, v1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/OriginalResponse;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/SecurityHelper;->decryptAES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/OriginalResponse;->getCode()I

    move-result p1

    const/16 v0, 0x130

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcn/haorui/sdk/core/utils/PackageBean;

    invoke-virtual {p1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/utils/PackageBean;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/PackageBean;->getDclk()Lcn/haorui/sdk/core/utils/PackageBean$DClick;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/PackConfigUtil;->dclk:Lcn/haorui/sdk/core/utils/PackageBean$DClick;

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/PackConfigUtil$a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/utils/PackConfigUtil;->access$100(Landroid/content/Context;Lcn/haorui/sdk/core/utils/PackageBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method
