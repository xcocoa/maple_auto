.class public Lcn/haorui/sdk/core/exception/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/exception/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/haorui/sdk/core/exception/c;->a:Ljava/util/ArrayList;

    const/4 v1, 0x1

    sput-boolean v1, Lcn/haorui/sdk/core/exception/c;->b:Z

    const-string v1, "device_adid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "device_imsi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "device_imei"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "device_geo_lon"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "device_geo_lat"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "device_battery_level"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "device_mac"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "secure"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "device_apiLevel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "is_mobile"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "device_type"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "device_oaid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "device_ssid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "device_wifi_mac"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcn/haorui/sdk/core/utils/RequestUtil;->getParams(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/ad/AdType;JJ)Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lz2/hx$OooO00o;

    invoke-direct {v0}, Lz2/hx$OooO00o;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcn/haorui/sdk/core/exception/c;->a:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lz2/hx$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Lz2/hx$OooO00o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const-string p0, "thread"

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lz2/hx$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Lz2/hx$OooO00o;

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance p2, Ljava/io/PrintStream;

    invoke-direct {p2, p0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p2, "message"

    :try_start_2
    new-instance p3, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p3, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, p2, p3}, Lz2/hx$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Lz2/hx$OooO00o;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p0, "env"

    if-eqz p1, :cond_2

    const-string p1, "test"

    goto :goto_1

    :cond_2
    const-string p1, "prod"

    :goto_1
    :try_start_3
    invoke-virtual {v0, p0, p1}, Lz2/hx$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Lz2/hx$OooO00o;

    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance p1, Lz2/qx$OooO00o;

    invoke-direct {p1}, Lz2/qx$OooO00o;-><init>()V

    const-string p2, "https://e-zlsdk.1rtb.net/reports"

    invoke-virtual {p1, p2}, Lz2/qx$OooO00o;->OooOOo0(Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object p1

    invoke-virtual {v0}, Lz2/hx$OooO00o;->OooO0OO()Lz2/hx;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz2/qx$OooO00o;->OooOO0o(Lz2/rx;)Lz2/qx$OooO00o;

    move-result-object p1

    invoke-virtual {p1}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    move-result-object p1

    new-instance p2, Lcn/haorui/sdk/core/exception/b;

    invoke-direct {p2, p0}, Lcn/haorui/sdk/core/exception/b;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {p1, p2}, Lcn/haorui/sdk/core/utils/HttpUtil;->doCommonRequest(Lz2/qx;Lz2/uw;)V

    const-wide/16 p1, 0x2

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
