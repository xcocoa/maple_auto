.class public Lz2/g8;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/g8$OooO0OO;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final OooO00o:Ljava/lang/String; = "MyAsyncTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Lz2/g8;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/g8;->OooO0Oo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private OooO0Oo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lz2/zc;->OooO0o()Lz2/zc;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    new-instance v2, Lz2/g8$OooO0O0;

    invoke-direct {v2, p0}, Lz2/g8$OooO0O0;-><init>(Lz2/g8;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lz2/zc;->OooOO0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lz2/zc$OooO00o;)V

    return-void
.end method


# virtual methods
.method public varargs OooO0O0([Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "\u622a\u56fe\u6587\u4ef6\u751f\u6210\u5931\u8d25\uff01"

    const/4 v4, -0x1

    if-eqz v2, :cond_0

    invoke-static {v4, v3}, Lz2/dh;->OooO0O0(ILjava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/io/File;

    aget-object p1, p1, v0

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_4

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p1

    iget-object p1, p1, Lz2/gc;->OooO0OO:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    if-eqz p1, :cond_3

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p1

    iget-object p1, p1, Lz2/gc;->OooO0OO:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->OssStudioScreenshotPathF:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "OssStudioScreenshotPathF\u53c2\u6570\u51fa\u9519\uff01"

    goto/16 :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    iget-object v0, v0, Lz2/gc;->OooO0OO:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->OssStudioScreenshotPathF:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    const v3, 0x7f100132

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{AppId}"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v2

    invoke-virtual {v2}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{ScriptId}"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {v2}, Lz2/ae;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/DeviceInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    const-string v3, "{DeviceId}"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "objectKey="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v3

    iget-object v3, v3, Lz2/gc;->OooO0OO:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    invoke-direct {v0, v2, v3}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;-><init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/AliCloudServerResponse;)V

    invoke-virtual {v0}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->build()Lcom/cyjh/http/oss/MyOSSUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/oss/MyOSSUtils;->isTokenExpireTime()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "\u963f\u91cc\u4e91Token\u8fc7\u671f\uff0c\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-static {v4, p1}, Lz2/dh;->OooO0O0(ILjava/lang/String;)V

    new-instance p1, Lz2/uc;

    invoke-direct {p1}, Lz2/uc;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/uc;->OooO0OO(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    new-instance v2, Lz2/g8$OooO00o;

    invoke-direct {v2, p0, p1}, Lz2/g8$OooO00o;-><init>(Lz2/g8;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/cyjh/http/oss/MyOSSUtils;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lz2/uc;

    invoke-direct {p1}, Lz2/uc;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/uc;->OooO0OO(Landroid/content/Context;)V

    const-string p1, "\u963f\u91cc\u4e91\u5b58\u50a8\u521d\u59cb\u5316\u4e2d\u2026\u2026"

    :goto_0
    invoke-static {v4, p1}, Lz2/dh;->OooO0O0(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {v4, v3}, Lz2/dh;->OooO0O0(ILjava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public OooO0OO(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/g8;->OooO0O0([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/g8;->OooO0OO(Ljava/lang/String;)V

    return-void
.end method
