.class public Lcom/cyjh/http/oss/MyOSSUtils$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/http/oss/MyOSSUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

.field private connectionTimeout:I

.field private context:Landroid/content/Context;

.field private maxConcurrentRequest:I

.field private maxErrorRetry:I

.field private socketTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/AliCloudServerResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->connectionTimeout:I

    iput v0, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->socketTimeout:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->maxConcurrentRequest:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->maxErrorRetry:I

    iput-object p1, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    return-void
.end method

.method public static synthetic access$100(Lcom/cyjh/http/oss/MyOSSUtils$Builder;)Lcom/cyjh/http/bean/response/AliCloudServerResponse;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/cyjh/http/oss/MyOSSUtils$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/cyjh/http/oss/MyOSSUtils$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->connectionTimeout:I

    return p0
.end method

.method public static synthetic access$400(Lcom/cyjh/http/oss/MyOSSUtils$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->socketTimeout:I

    return p0
.end method

.method public static synthetic access$500(Lcom/cyjh/http/oss/MyOSSUtils$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->maxConcurrentRequest:I

    return p0
.end method

.method public static synthetic access$600(Lcom/cyjh/http/oss/MyOSSUtils$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->maxErrorRetry:I

    return p0
.end method


# virtual methods
.method public build()Lcom/cyjh/http/oss/MyOSSUtils;
    .locals 2

    new-instance v0, Lcom/cyjh/http/oss/MyOSSUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/http/oss/MyOSSUtils;-><init>(Lcom/cyjh/http/oss/MyOSSUtils$Builder;Lcom/cyjh/http/oss/MyOSSUtils$1;)V

    return-object v0
.end method

.method public setConnectionTimeout(I)Lcom/cyjh/http/oss/MyOSSUtils$Builder;
    .locals 0

    iput p1, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->connectionTimeout:I

    return-object p0
.end method

.method public setMaxConcurrentRequest(I)Lcom/cyjh/http/oss/MyOSSUtils$Builder;
    .locals 0

    iput p1, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->maxConcurrentRequest:I

    return-object p0
.end method

.method public setMaxErrorRetry(I)Lcom/cyjh/http/oss/MyOSSUtils$Builder;
    .locals 0

    iput p1, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->maxErrorRetry:I

    return-object p0
.end method

.method public setSocketTimeout(I)Lcom/cyjh/http/oss/MyOSSUtils$Builder;
    .locals 0

    iput p1, p0, Lcom/cyjh/http/oss/MyOSSUtils$Builder;->socketTimeout:I

    return-object p0
.end method
