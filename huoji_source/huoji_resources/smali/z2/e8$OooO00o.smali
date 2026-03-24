.class public Lz2/e8$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/e8;->OooO0OO([Ljava/lang/Void;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Lz2/e8;


# direct methods
.method public constructor <init>(Lz2/e8;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/e8$OooO00o;->OooO0O0:Lz2/e8;

    iput-object p2, p0, Lz2/e8$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0xffff

    and-int/2addr v0, p1

    shr-int/lit8 p1, p1, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenShotDone -->\u3000width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lz2/c9;->OooOO0O(IILcom/google/protobuf/ByteString;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "\u622a\u56fe\u6587\u4ef6\u751f\u6210\u5931\u8d25\uff01"

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    iget-object v1, p0, Lz2/e8$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {p1, v1}, Lz2/j4;->OooOo00(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lz2/e8$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_5

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p1

    iget-object p1, p1, Lz2/gc;->OooO0OO:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p1

    iget-object p1, p1, Lz2/gc;->OooO0OO:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object p1, p1, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->OssStudioScreenshotPathF:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OssStudioScreenshotPathF\u53c2\u6570\u51fa\u9519\uff01"

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v1

    iget-object v1, v1, Lz2/gc;->OooO0OO:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iget-object v1, v1, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->OssStudioScreenshotPathF:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    const v3, 0x7f100132

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{AppId}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v2

    invoke-virtual {v2}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{ScriptId}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {v2}, Lz2/ae;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/DeviceInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    const-string v3, "{DeviceId}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "objectKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/cyjh/http/oss/MyOSSUtils$Builder;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v3

    iget-object v3, v3, Lz2/gc;->OooO0OO:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    invoke-direct {v1, v2, v3}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;-><init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/AliCloudServerResponse;)V

    invoke-virtual {v1}, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->build()Lcom/cyjh/http/oss/MyOSSUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/http/oss/MyOSSUtils;->isTokenExpireTime()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "\u963f\u91cc\u4e91Token\u8fc7\u671f\uff0c\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-static {v0, p1}, Lz2/dh;->OooO0O0(ILjava/lang/String;)V

    iget-object p1, p0, Lz2/e8$OooO00o;->OooO0O0:Lz2/e8;

    invoke-static {p1}, Lz2/e8;->OooO00o(Lz2/e8;)Lz2/e8$OooO0OO;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lz2/e8$OooO00o;->OooO0O0:Lz2/e8;

    invoke-static {p1}, Lz2/e8;->OooO00o(Lz2/e8;)Lz2/e8$OooO0OO;

    move-result-object p1

    invoke-interface {p1, p2}, Lz2/e8$OooO0OO;->OooO00o(I)V

    :cond_1
    new-instance p1, Lz2/uc;

    invoke-direct {p1}, Lz2/uc;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz2/uc;->OooO0OO(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lz2/e8$OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v0, Lz2/e8$OooO00o$OooO00o;

    invoke-direct {v0, p0, p1}, Lz2/e8$OooO00o$OooO00o;-><init>(Lz2/e8$OooO00o;Ljava/lang/String;)V

    invoke-virtual {v1, p2, p1, v0}, Lcom/cyjh/http/oss/MyOSSUtils;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lz2/e8$OooO00o;->OooO0O0:Lz2/e8;

    invoke-static {p1}, Lz2/e8;->OooO00o(Lz2/e8;)Lz2/e8$OooO0OO;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lz2/e8$OooO00o;->OooO0O0:Lz2/e8;

    invoke-static {p1}, Lz2/e8;->OooO00o(Lz2/e8;)Lz2/e8$OooO0OO;

    move-result-object p1

    invoke-interface {p1, p2}, Lz2/e8$OooO0OO;->OooO00o(I)V

    :cond_4
    new-instance p1, Lz2/uc;

    invoke-direct {p1}, Lz2/uc;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz2/uc;->OooO0OO(Landroid/content/Context;)V

    const-string p1, "\u963f\u91cc\u4e91\u5b58\u50a8\u521d\u59cb\u5316\u4e2d\u2026\u2026"

    :goto_0
    invoke-static {v0, p1}, Lz2/dh;->OooO0O0(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {v0, p2}, Lz2/dh;->OooO0O0(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onScreenShotFailed(I)V
    .locals 1

    const/4 p1, -0x1

    const-string v0, "\u622a\u56fe\u6587\u4ef6\u751f\u6210\u5931\u8d25\uff01"

    invoke-static {p1, v0}, Lz2/dh;->OooO0O0(ILjava/lang/String;)V

    return-void
.end method
