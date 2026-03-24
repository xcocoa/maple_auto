.class public Lcn/haorui/sdk/core/loader/cache/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcn/haorui/sdk/core/loader/cache/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Z

.field public f:J

.field public g:J

.field public h:Lcn/haorui/sdk/core/domain/HRAdInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 6

    iget-wide v0, p0, Lcn/haorui/sdk/core/loader/cache/a;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/32 v0, 0x1a8ce0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :goto_0
    iget-boolean v2, p0, Lcn/haorui/sdk/core/loader/cache/a;->e:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcn/haorui/sdk/core/loader/cache/a;->f:J

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getLoadedTime()J

    move-result-wide v2

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v2, v4, v0

    if-ltz v2, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcn/haorui/sdk/core/loader/cache/a;

    iget p1, p1, Lcn/haorui/sdk/core/loader/cache/a;->c:I

    iget v0, p0, Lcn/haorui/sdk/core/loader/cache/a;->c:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheEntity{key ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/cache/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ad ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/cache/a;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",sdkAdInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/cache/a;->b:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/haorui/sdk/core/loader/cache/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
