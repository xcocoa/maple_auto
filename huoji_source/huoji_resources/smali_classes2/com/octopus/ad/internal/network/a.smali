.class public Lcom/octopus/ad/internal/network/a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/network/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/octopus/ad/internal/network/ServerResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String;

.field private static final c:Lcom/octopus/ad/internal/network/ServerResponse;


# instance fields
.field private a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/octopus/ad/internal/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Bundle;

.field private e:Z

.field private f:I

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Date;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/octopus/ad/internal/network/ServerResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/octopus/ad/internal/network/ServerResponse;-><init>(Z)V

    sput-object v0, Lcom/octopus/ad/internal/network/a;->c:Lcom/octopus/ad/internal/network/ServerResponse;

    const-string v0, "emulator"

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HashingFunctions;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/octopus/ad/internal/network/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/internal/network/a;->g:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/a;->d:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/internal/network/a;->h:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/octopus/ad/internal/network/a$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {p1}, Lcom/octopus/ad/internal/network/a$a;->a(Lcom/octopus/ad/internal/network/a$a;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/a;->i:Ljava/util/Date;

    invoke-static {p1}, Lcom/octopus/ad/internal/network/a$a;->b(Lcom/octopus/ad/internal/network/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/a;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/octopus/ad/internal/network/a$a;->c(Lcom/octopus/ad/internal/network/a$a;)I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/a;->k:I

    invoke-static {p1}, Lcom/octopus/ad/internal/network/a$a;->d(Lcom/octopus/ad/internal/network/a$a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/a;->g:Ljava/util/Set;

    invoke-static {p1}, Lcom/octopus/ad/internal/network/a$a;->e(Lcom/octopus/ad/internal/network/a$a;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/a;->d:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/octopus/ad/internal/network/a$a;->f(Lcom/octopus/ad/internal/network/a$a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/a;->h:Ljava/util/Set;

    invoke-static {p1}, Lcom/octopus/ad/internal/network/a$a;->g(Lcom/octopus/ad/internal/network/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/network/a;->e:Z

    invoke-static {p1}, Lcom/octopus/ad/internal/network/a$a;->h(Lcom/octopus/ad/internal/network/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/network/a;->l:Ljava/lang/String;

    invoke-static {p1}, Lcom/octopus/ad/internal/network/a$a;->i(Lcom/octopus/ad/internal/network/a$a;)I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/a;->m:I

    invoke-static {p1}, Lcom/octopus/ad/internal/network/a$a;->j(Lcom/octopus/ad/internal/network/a$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/network/a;->n:Z

    return-void
.end method

.method private a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p1
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/network/a;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/e;->a(I)V

    :cond_0
    invoke-static {}, Lcom/octopus/ad/internal/utilities/HaoboLog;->clearLastResponse()V

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/m;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/octopus/ad/internal/utilities/WebviewUtil;->getCookie()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Cookie"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    array-length v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connect-Length"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p2

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private b(I)Z
    .locals 4

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpRespLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->http_bad_status:I

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IJ)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Lcom/octopus/ad/internal/network/ServerResponse;
    .locals 12

    const-string p1, "octopus"

    const-string v0, "OctopusGroup"

    const-string v1, ""

    iget-object v2, p0, Lcom/octopus/ad/internal/network/a;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/octopus/ad/internal/e;

    if-eqz v2, :cond_e

    invoke-interface {v2}, Lcom/octopus/ad/internal/e;->b()Lcom/octopus/ad/internal/d;

    move-result-object v2

    if-eqz v2, :cond_e

    :try_start_0
    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->k()Lcom/octopus/ad/internal/l;

    move-result-object v3

    sget-object v4, Lcom/octopus/ad/internal/l;->f:Lcom/octopus/ad/internal/l;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v4

    invoke-static {}, Lcom/octopus/ad/internal/utilities/DeviceInfo;->getInstance()Lcom/octopus/ad/internal/utilities/DeviceInfo;

    move-result-object v5

    new-instance v6, Lcom/octopus/ad/b/d$a$a;

    invoke-direct {v6}, Lcom/octopus/ad/b/d$a$a;-><init>()V

    iget-object v7, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->sdkUID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->a(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    sget-object v7, Lcom/octopus/ad/internal/utilities/DeviceInfo;->density:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->k(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    sget-object v7, Lcom/octopus/ad/internal/utilities/DeviceInfo;->densityDpi:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->l(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    invoke-virtual {v4}, Lcom/octopus/ad/internal/m;->g()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/octopus/ad/utils/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->b(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    invoke-virtual {v4}, Lcom/octopus/ad/internal/m;->g()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/octopus/ad/utils/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->m(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    invoke-virtual {v4}, Lcom/octopus/ad/internal/m;->g()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/octopus/ad/utils/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->o(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    invoke-virtual {v4}, Lcom/octopus/ad/internal/m;->g()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/octopus/ad/utils/b/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->p(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->bootMark:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->q(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->updateMark:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->r(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/octopus/ad/b/d$a$a;->c(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->os:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->d(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    sget-object v7, Lcom/octopus/ad/b/e$e;->c:Lcom/octopus/ad/b/e$e;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->a(Lcom/octopus/ad/b/e$e;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->devType:Lcom/octopus/ad/b/e$b;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->a(Lcom/octopus/ad/b/e$b;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->brand:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->e(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->f(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->g(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->resolution:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->h(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->screenSize:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->i(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->language:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->j(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->root:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->n(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->agVercode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->s(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->hmsVercode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->t(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    iget-boolean v7, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->wxInstalled:Z

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->a(Z)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    sget-object v7, Lcom/octopus/ad/internal/utilities/DeviceInfo;->physicalMemoryByte:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->u(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    sget-object v7, Lcom/octopus/ad/internal/utilities/DeviceInfo;->harddiskSizeByte:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/d$a$a;->v(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v6

    iget-object v5, v5, Lcom/octopus/ad/internal/utilities/DeviceInfo;->appList:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/octopus/ad/b/d$a$a;->w(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/octopus/ad/b/d$a$a;->a()Lcom/octopus/ad/b/d$a;

    move-result-object v5

    invoke-static {}, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->getInstance()Lcom/octopus/ad/internal/utilities/UserEnvInfo;

    move-result-object v6

    new-instance v7, Lcom/octopus/ad/b/d$c$a;

    invoke-direct {v7}, Lcom/octopus/ad/b/d$c$a;-><init>()V

    iget-object v8, v6, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->net:Lcom/octopus/ad/b/e$d;

    invoke-virtual {v7, v8}, Lcom/octopus/ad/b/d$c$a;->a(Lcom/octopus/ad/b/e$d;)Lcom/octopus/ad/b/d$c$a;

    move-result-object v7

    iget-object v6, v6, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->isp:Lcom/octopus/ad/b/e$c;

    invoke-virtual {v7, v6}, Lcom/octopus/ad/b/d$c$a;->a(Lcom/octopus/ad/b/e$c;)Lcom/octopus/ad/b/d$c$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/b/d$c$a;->a()Lcom/octopus/ad/b/d$c;

    move-result-object v6

    invoke-virtual {v4}, Lcom/octopus/ad/internal/m;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Lcom/octopus/ad/internal/m;->e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    :goto_1
    move-object v7, v8

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/octopus/ad/internal/m;->f()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->e()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v1

    :goto_3
    new-instance v9, Lcom/octopus/ad/b/a$b$a;

    invoke-direct {v9}, Lcom/octopus/ad/b/a$b$a;-><init>()V

    const-string v10, "1.5.8.9"

    invoke-virtual {v9, v10}, Lcom/octopus/ad/b/a$b$a;->a(Ljava/lang/String;)Lcom/octopus/ad/b/a$b$a;

    move-result-object v9

    sget-object v10, Lcom/octopus/ad/b/e$i;->b:Lcom/octopus/ad/b/e$i;

    invoke-virtual {v9, v10}, Lcom/octopus/ad/b/a$b$a;->a(Lcom/octopus/ad/b/e$i;)Lcom/octopus/ad/b/a$b$a;

    move-result-object v9

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v10

    iget-object v10, v10, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-static {v10}, Lcom/octopus/ad/internal/utilities/UserEnvInfoUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/octopus/ad/b/a$b$a;->d(Ljava/lang/String;)Lcom/octopus/ad/b/a$b$a;

    move-result-object v9

    if-eqz v3, :cond_4

    sget-object v10, Lcom/octopus/ad/b/e$g;->c:Lcom/octopus/ad/b/e$g;

    goto :goto_4

    :cond_4
    sget-object v10, Lcom/octopus/ad/b/e$g;->b:Lcom/octopus/ad/b/e$g;

    :goto_4
    invoke-virtual {v9, v10}, Lcom/octopus/ad/b/a$b$a;->a(Lcom/octopus/ad/b/e$g;)Lcom/octopus/ad/b/a$b$a;

    move-result-object v9

    invoke-static {}, Lcom/octopus/ad/utils/b/l;->c()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/octopus/ad/b/a$b$a;->a(J)Lcom/octopus/ad/b/a$b$a;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/octopus/ad/b/a$b$a;->b(Ljava/lang/String;)Lcom/octopus/ad/b/a$b$a;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/octopus/ad/b/a$b$a;->c(Ljava/lang/String;)Lcom/octopus/ad/b/a$b$a;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/octopus/ad/b/a$b$a;->a(Lcom/octopus/ad/b/d$a;)Lcom/octopus/ad/b/a$b$a;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/octopus/ad/b/a$b$a;->a(Lcom/octopus/ad/b/d$c;)Lcom/octopus/ad/b/a$b$a;

    move-result-object v5

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/octopus/ad/utils/b/l;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/b/a$b$a;->d(Ljava/lang/String;)Lcom/octopus/ad/b/a$b$a;

    move-result-object v5

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/octopus/ad/utils/b/l;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/b/a$b$a;->e(Ljava/lang/String;)Lcom/octopus/ad/b/a$b$a;

    move-result-object v5

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/octopus/ad/utils/b/l;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/b/a$b$a;->f(Ljava/lang/String;)Lcom/octopus/ad/b/a$b$a;

    move-result-object v5

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/octopus/ad/utils/b/l;->a(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/octopus/ad/b/a$b$a;->b(J)Lcom/octopus/ad/b/a$b$a;

    move-result-object v5

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/octopus/ad/utils/b/l;->c(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/octopus/ad/b/a$b$a;->c(J)Lcom/octopus/ad/b/a$b$a;

    move-result-object v5

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/octopus/ad/internal/m;->p()Ljava/util/HashSet;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Lcom/octopus/ad/b/a$a$a;

    invoke-direct {v7}, Lcom/octopus/ad/b/a$a$a;-><init>()V

    invoke-virtual {v7, v6}, Lcom/octopus/ad/b/a$a$a;->a(Ljava/lang/String;)Lcom/octopus/ad/b/a$a$a;

    move-result-object v6

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/octopus/ad/b/a$a$a;->c(Ljava/lang/String;)Lcom/octopus/ad/b/a$a$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/b/a$a$a;->a()Lcom/octopus/ad/b/a$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/b/a$b$a;->a(Lcom/octopus/ad/b/a$a;)V

    goto :goto_5

    :cond_6
    new-instance v3, Lcom/octopus/ad/b/a$a$a;

    invoke-direct {v3}, Lcom/octopus/ad/b/a$a$a;-><init>()V

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/octopus/ad/b/a$a$a;->a(Ljava/lang/String;)Lcom/octopus/ad/b/a$a$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/octopus/ad/b/a$a$a;->c(Ljava/lang/String;)Lcom/octopus/ad/b/a$a$a;

    move-result-object v3

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/octopus/ad/b/a$a$a;->b(Ljava/lang/String;)Lcom/octopus/ad/b/a$a$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/octopus/ad/b/a$a$a;->a()Lcom/octopus/ad/b/a$a;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/octopus/ad/b/a$b$a;->a(Lcom/octopus/ad/b/a$a;)V

    :cond_7
    invoke-virtual {v5}, Lcom/octopus/ad/b/a$b$a;->a()Lcom/octopus/ad/b/a$b;

    move-result-object v3

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v5

    iget-object v5, v5, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    const-string v6, "encrypt"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v6, v7}, Lcom/octopus/ad/internal/utilities/SPUtils;->getFromGroupSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v3}, Lcom/octopus/ad/b/a$b;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_9

    :cond_9
    :goto_7
    invoke-static {}, Lcom/octopus/ad/utils/b/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/octopus/ad/b/a$b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/octopus/ad/utils/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    goto :goto_8

    :cond_a
    move-object v1, v5

    :goto_8
    const-string v5, "requestData:"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sdkRequest:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/octopus/ad/b/a$b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/octopus/ad/utils/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/octopus/ad/internal/m;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&v=1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRequestBaseUrl:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/utils/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/octopus/ad/b/a$b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->setLastRequest(Ljava/lang/String;)V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpReqLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->fetch_url:I

    invoke-static {}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getLastRequest()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/network/a;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/octopus/ad/internal/network/a;->a(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/network/a;->f:I

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/network/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object p1, Lcom/octopus/ad/internal/network/a;->c:Lcom/octopus/ad/internal/network/ServerResponse;

    return-object p1

    :cond_c
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpRespLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->response_blank:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/b/b$q;->a(Ljava/io/InputStream;)Lcom/octopus/ad/b/b$q;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->k()Lcom/octopus/ad/internal/l;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/octopus/ad/internal/network/ServerResponse;-><init>(Lcom/octopus/ad/b/b$q;Ljava/util/Map;Lcom/octopus/ad/internal/l;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpReqLogTag:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpReqLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->unknown_exception:I

    :goto_a
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/octopus/ad/internal/network/a;->c:Lcom/octopus/ad/internal/network/ServerResponse;

    return-object p1

    :catch_1
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpReqLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->http_unknown:I

    goto :goto_a

    :catch_2
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpReqLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->permissions_internet:I

    goto :goto_a

    :catch_3
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpReqLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->http_io:I

    goto :goto_a

    :catch_4
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpReqLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->http_url_malformed:I

    goto :goto_a

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/octopus/ad/internal/e;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/network/a;->a:Ljava/lang/ref/SoftReference;

    invoke-interface {p1}, Lcom/octopus/ad/internal/e;->b()Lcom/octopus/ad/internal/d;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->b()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/DeviceInfoUtil;->retrieveDeviceInfo(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/UserEnvInfoUtil;->retrieveUserEnvInfo(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/octopus/ad/internal/network/c;->a(Landroid/content/Context;)Lcom/octopus/ad/internal/network/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->b()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/octopus/ad/internal/network/c;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x13881

    goto :goto_0

    :cond_0
    const p1, 0x13882

    :goto_0
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/network/a;->a(I)V

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/network/ServerResponse;)V
    .locals 2

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/octopus/ad/internal/network/a;->f:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/octopus/ad/internal/network/ServerResponse;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x13883

    :goto_0
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/network/a;->a(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/network/a;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/e;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/e;->a(Lcom/octopus/ad/internal/network/ServerResponse;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpRespLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->no_response:I

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x138e4

    goto :goto_0
.end method

.method public b(Lcom/octopus/ad/internal/network/ServerResponse;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpRespLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->cancel_request:I

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/network/a;->a([Ljava/lang/Void;)Lcom/octopus/ad/internal/network/ServerResponse;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    check-cast p1, Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/network/a;->b(Lcom/octopus/ad/internal/network/ServerResponse;)V

    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/network/a;->a(Lcom/octopus/ad/internal/network/ServerResponse;)V

    return-void
.end method
