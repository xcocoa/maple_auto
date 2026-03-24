.class public final Lcn/haorui/sdk/core/utils/HttpUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MEDIA_TYPE_AUDIO:Lz2/mx;

.field private static final MEDIA_TYPE_JPG:Lz2/mx;

.field private static final MEDIA_TYPE_JSON:Lz2/mx;

.field private static final MEDIA_TYPE_OBJECT:Lz2/mx;

.field private static final MEDIA_TYPE_TEXT:Lz2/mx;

.field private static final MEDIA_TYPE_VIDEO:Lz2/mx;

.field private static final TAG:Ljava/lang/String; = "HttpUtil"

.field private static adClient:Lz2/ox;

.field private static client:Lz2/ox;

.field private static handler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "text/x-markdown; charset=utf-8"

    invoke-static {v0}, Lz2/mx;->OooO0Oo(Ljava/lang/String;)Lz2/mx;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/HttpUtil;->MEDIA_TYPE_TEXT:Lz2/mx;

    const-string v0, "image/png"

    invoke-static {v0}, Lz2/mx;->OooO0Oo(Ljava/lang/String;)Lz2/mx;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/HttpUtil;->MEDIA_TYPE_JPG:Lz2/mx;

    const-string v0, "audio/mp3"

    invoke-static {v0}, Lz2/mx;->OooO0Oo(Ljava/lang/String;)Lz2/mx;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/HttpUtil;->MEDIA_TYPE_AUDIO:Lz2/mx;

    const-string v0, "video/mp4"

    invoke-static {v0}, Lz2/mx;->OooO0Oo(Ljava/lang/String;)Lz2/mx;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/HttpUtil;->MEDIA_TYPE_VIDEO:Lz2/mx;

    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lz2/mx;->OooO0Oo(Ljava/lang/String;)Lz2/mx;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/HttpUtil;->MEDIA_TYPE_OBJECT:Lz2/mx;

    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lz2/mx;->OooO0Oo(Ljava/lang/String;)Lz2/mx;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/HttpUtil;->MEDIA_TYPE_JSON:Lz2/mx;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/haorui/sdk/core/utils/HttpUtil;->handler:Landroid/os/Handler;

    new-instance v0, Lz2/ox$OooO0O0;

    invoke-direct {v0}, Lz2/ox$OooO0O0;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lz2/ox$OooO0O0;->OooO(JLjava/util/concurrent/TimeUnit;)Lz2/ox$OooO0O0;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lz2/ox$OooO0O0;->OooOoo(JLjava/util/concurrent/TimeUnit;)Lz2/ox$OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, Lz2/ox$OooO0O0;->OooO0Oo()Lz2/ox;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/HttpUtil;->adClient:Lz2/ox;

    new-instance v0, Lz2/ox$OooO0O0;

    invoke-direct {v0}, Lz2/ox$OooO0O0;-><init>()V

    invoke-virtual {v0, v2, v3, v1}, Lz2/ox$OooO0O0;->OooO(JLjava/util/concurrent/TimeUnit;)Lz2/ox$OooO0O0;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lz2/ox$OooO0O0;->OooOoo(JLjava/util/concurrent/TimeUnit;)Lz2/ox$OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, Lz2/ox$OooO0O0;->OooO0Oo()Lz2/ox;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/utils/HttpUtil;->client:Lz2/ox;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/HttpUtil;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static asyncGetErrorReport(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lcn/haorui/sdk/core/utils/HttpUtil;->replaceMacros(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u9519\u8bef\u4e0a\u62a5\uff1a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HttpUtil"

    invoke-static {p2, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcn/haorui/sdk/core/utils/HttpUtil$d;

    invoke-direct {p1}, Lcn/haorui/sdk/core/utils/HttpUtil$d;-><init>()V

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetJson(Ljava/lang/String;Ljava/util/Map;Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;)V

    return-void
.end method

.method public static asyncGetFile(Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V
    .locals 2
    .param p1    # Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    :try_start_0
    new-instance v0, Lz2/qx$OooO00o;

    invoke-direct {v0}, Lz2/qx$OooO00o;-><init>()V

    invoke-virtual {v0, p0}, Lz2/qx$OooO00o;->OooOOo0(Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object p0

    invoke-virtual {p0}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    move-result-object p0

    sget-object v0, Lcn/haorui/sdk/core/utils/HttpUtil;->client:Lz2/ox;

    invoke-virtual {v0, p0}, Lz2/ox;->OooO00o(Lz2/qx;)Lz2/tw;

    move-result-object p0

    new-instance v0, Lcn/haorui/sdk/core/utils/HttpUtil$g;

    invoke-direct {v0, p1}, Lcn/haorui/sdk/core/utils/HttpUtil$g;-><init>(Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V

    invoke-interface {p0, v0}, Lz2/tw;->OooOO0(Lz2/uw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcn/haorui/sdk/core/utils/HttpUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcn/haorui/sdk/core/utils/HttpUtil$h;

    invoke-direct {v1, p1}, Lcn/haorui/sdk/core/utils/HttpUtil$h;-><init>(Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;->onFailure(Ljava/io/IOException;)V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static asyncGetJson(Ljava/lang/String;Ljava/util/Map;Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/haorui/sdk/core/utils/HttpGetJsonCallback<",
            "Lcn/haorui/sdk/core/utils/OriginalResponse;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lz2/kx;->OooOo0(Ljava/lang/String;)Lz2/kx;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lz2/kx;->OooOOoo()Lz2/kx$OooO00o;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lz2/kx$OooO00o;->OooO0oO(Ljava/lang/String;Ljava/lang/String;)Lz2/kx$OooO00o;

    goto :goto_0

    :cond_1
    new-instance p1, Lz2/qx$OooO00o;

    invoke-direct {p1}, Lz2/qx$OooO00o;-><init>()V

    invoke-virtual {p0}, Lz2/kx$OooO00o;->OooO0oo()Lz2/kx;

    move-result-object p0

    invoke-virtual {p1, p0}, Lz2/qx$OooO00o;->OooOOoo(Lz2/kx;)Lz2/qx$OooO00o;

    move-result-object p0

    invoke-virtual {p0}, Lz2/qx$OooO00o;->OooO0o()Lz2/qx$OooO00o;

    move-result-object p0

    invoke-virtual {p0}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "HttpUtil"

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v1

    invoke-virtual {v1}, Lz2/kx;->OoooO0O()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcn/haorui/sdk/core/utils/HttpUtil;->adClient:Lz2/ox;

    invoke-virtual {p1, p0}, Lz2/ox;->OooO00o(Lz2/qx;)Lz2/tw;

    move-result-object p0

    new-instance p1, Lcn/haorui/sdk/core/utils/HttpUtil$b;

    invoke-direct {p1, p2}, Lcn/haorui/sdk/core/utils/HttpUtil$b;-><init>(Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;)V

    invoke-interface {p0, p1}, Lz2/tw;->OooOO0(Lz2/uw;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static asyncGetTaskReport(Ljava/lang/String;)V
    .locals 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "__REQTIME__"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    invoke-static {p0, v2, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Ljava/util/TreeSet;

    new-instance v6, Lcn/haorui/sdk/core/taskcenter/g;

    invoke-direct {v6}, Lcn/haorui/sdk/core/taskcenter/g;-><init>()V

    invoke-direct {v5, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v5, v4}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "SignUtil"

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sortParams: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const-string v0, ""

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GlSjz6xbhIJ&KEK*6!pykPBDSe@6wP$M"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_2
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_4

    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    if-ge v4, v5, :cond_3

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&sign="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcn/haorui/sdk/core/utils/HttpUtil$f;

    invoke-direct {v0}, Lcn/haorui/sdk/core/utils/HttpUtil$f;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetJson(Ljava/lang/String;Ljava/util/Map;Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;)V

    return-void

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UnsupportedEncodingException"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NoSuchAlgorithmException"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static asyncGetWithHeaders(Ljava/lang/String;Ljava/util/Map;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lz2/jx$OooO00o;

    invoke-direct {v0}, Lz2/jx$OooO00o;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lz2/jx$OooO00o;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)Lz2/jx$OooO00o;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lz2/kx;->OooOo0(Ljava/lang/String;)Lz2/kx;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lz2/kx;->OooOOoo()Lz2/kx$OooO00o;

    move-result-object p0

    new-instance p1, Lz2/qx$OooO00o;

    invoke-direct {p1}, Lz2/qx$OooO00o;-><init>()V

    invoke-virtual {v0}, Lz2/jx$OooO00o;->OooO0oo()Lz2/jx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/qx$OooO00o;->OooO(Lz2/jx;)Lz2/qx$OooO00o;

    move-result-object p1

    invoke-virtual {p0}, Lz2/kx$OooO00o;->OooO0oo()Lz2/kx;

    move-result-object p0

    invoke-virtual {p1, p0}, Lz2/qx$OooO00o;->OooOOoo(Lz2/kx;)Lz2/qx$OooO00o;

    move-result-object p0

    invoke-virtual {p0}, Lz2/qx$OooO00o;->OooO0o()Lz2/qx$OooO00o;

    move-result-object p0

    invoke-virtual {p0}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    move-result-object p0

    sget-object p1, Lcn/haorui/sdk/core/utils/HttpUtil;->client:Lz2/ox;

    invoke-virtual {p1, p0}, Lz2/ox;->OooO00o(Lz2/qx;)Lz2/tw;

    move-result-object p0

    new-instance p1, Lcn/haorui/sdk/core/utils/HttpUtil$c;

    invoke-direct {p1, p2}, Lcn/haorui/sdk/core/utils/HttpUtil$c;-><init>(Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    invoke-interface {p0, p1}, Lz2/tw;->OooOO0(Lz2/uw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpUtil"

    invoke-static {v2, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catchall_0
    move-object p0, v0

    :goto_0
    const-string v2, "X-Requested-With"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "User-Agent"

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v1, p2}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithHeaders(Ljava/lang/String;Ljava/util/Map;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    return-void
.end method

.method public static asyncPostGetJson(Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;)V
    .locals 1
    .param p2    # Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/haorui/sdk/core/utils/HttpGetJsonCallback<",
            "Lz2/sx;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lz2/mx;->OooO0Oo(Ljava/lang/String;)Lz2/mx;

    move-result-object v0

    invoke-static {v0, p1}, Lz2/rx;->create(Lz2/mx;Ljava/lang/String;)Lz2/rx;

    move-result-object p1

    new-instance v0, Lz2/qx$OooO00o;

    invoke-direct {v0}, Lz2/qx$OooO00o;-><init>()V

    invoke-virtual {v0, p0}, Lz2/qx$OooO00o;->OooOOo0(Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lz2/qx$OooO00o;->OooOO0o(Lz2/rx;)Lz2/qx$OooO00o;

    move-result-object p0

    invoke-virtual {p0}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    move-result-object p0

    sget-object p1, Lcn/haorui/sdk/core/utils/HttpUtil;->client:Lz2/ox;

    invoke-virtual {p1, p0}, Lz2/ox;->OooO00o(Lz2/qx;)Lz2/tw;

    move-result-object p0

    new-instance p1, Lcn/haorui/sdk/core/utils/HttpUtil$e;

    invoke-direct {p1, p2}, Lcn/haorui/sdk/core/utils/HttpUtil$e;-><init>(Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;)V

    invoke-interface {p0, p1}, Lz2/tw;->OooOO0(Lz2/uw;)V

    return-void
.end method

.method public static asyncRequestJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/haorui/sdk/core/utils/HttpGetJsonCallback<",
            "Lcn/haorui/sdk/core/utils/OriginalResponse;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lz2/kx;->OooOo0(Ljava/lang/String;)Lz2/kx;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lz2/kx;->OooOOoo()Lz2/kx$OooO00o;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lz2/kx$OooO00o;->OooO0oO(Ljava/lang/String;Ljava/lang/String;)Lz2/kx$OooO00o;

    goto :goto_0

    :cond_1
    new-instance p1, Lz2/qx$OooO00o;

    invoke-direct {p1}, Lz2/qx$OooO00o;-><init>()V

    invoke-virtual {p0}, Lz2/kx$OooO00o;->OooO0oo()Lz2/kx;

    move-result-object p0

    invoke-virtual {p1, p0}, Lz2/qx$OooO00o;->OooOOoo(Lz2/kx;)Lz2/qx$OooO00o;

    move-result-object p0

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lz2/qx$OooO00o;->OooO0o()Lz2/qx$OooO00o;

    goto :goto_2

    :cond_2
    new-instance p1, Lz2/hx$OooO00o;

    invoke-direct {p1}, Lz2/hx$OooO00o;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lz2/hx$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Lz2/hx$OooO00o;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lz2/hx$OooO00o;->OooO0OO()Lz2/hx;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/qx$OooO00o;->OooOO0o(Lz2/rx;)Lz2/qx$OooO00o;

    :goto_2
    if-eqz p3, :cond_5

    new-instance p1, Lz2/jx$OooO00o;

    invoke-direct {p1}, Lz2/jx$OooO00o;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Lz2/jx$OooO00o;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)Lz2/jx$OooO00o;

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lz2/jx$OooO00o;->OooO0oo()Lz2/jx;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/qx$OooO00o;->OooO(Lz2/jx;)Lz2/qx$OooO00o;

    :cond_5
    invoke-virtual {p0}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "HttpUtil"

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "url["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object p3

    invoke-virtual {p3}, Lz2/kx;->OoooO0O()Ljava/net/URL;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcn/haorui/sdk/core/utils/HttpUtil;->adClient:Lz2/ox;

    invoke-virtual {p1, p0}, Lz2/ox;->OooO00o(Lz2/qx;)Lz2/tw;

    move-result-object p0

    new-instance p1, Lcn/haorui/sdk/core/utils/HttpUtil$a;

    invoke-direct {p1, p4}, Lcn/haorui/sdk/core/utils/HttpUtil$a;-><init>(Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;)V

    invoke-interface {p0, p1}, Lz2/tw;->OooOO0(Lz2/uw;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public static doCommonRequest(Lz2/qx;Lz2/uw;)V
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/HttpUtil;->client:Lz2/ox;

    invoke-virtual {v0, p0}, Lz2/ox;->OooO00o(Lz2/qx;)Lz2/tw;

    move-result-object p0

    invoke-interface {p0, p1}, Lz2/tw;->OooOO0(Lz2/uw;)V

    return-void
.end method

.method public static replaceMacros(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "__ERROR_CODE__"

    const-string v3, "__ERROR_MESSAGE__"

    const-string v4, "__MS_EVENT_SEC__"

    const-string v5, "__MS_EVENT_MSEC__"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 p1, 0x0

    aput-object v2, v5, p1

    const/4 p1, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p2, v3

    :cond_1
    aput-object p2, v5, p1

    const-wide/16 p1, 0x3e8

    div-long p1, v0, p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v5, p2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v5, p2

    invoke-static {p0, v4, v5}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
