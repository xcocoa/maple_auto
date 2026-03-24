.class public Lcn/haorui/sdk/core/loader/loadbean/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-boolean v0, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bidding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->f:I

    return v0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v0

    const-string v1, "order"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->e:I

    const v1, 0x186a0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getScore()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v0

    const-string v1, "price"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->e:I

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_2
    iget v0, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmallGroupBean{platform ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->g:Z

    if-eqz v1, :cond_0

    const-string v1, "AD_HR"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/loadbean/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/haorui/sdk/core/loader/loadbean/a;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
