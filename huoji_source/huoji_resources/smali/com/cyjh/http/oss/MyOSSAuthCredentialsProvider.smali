.class public Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider;
.super Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider$AuthDecoder;
    }
.end annotation


# instance fields
.field private aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

.field private mDecoder:Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider$AuthDecoder;


# direct methods
.method public constructor <init>(Lcom/cyjh/http/bean/response/AliCloudServerResponse;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;-><init>()V

    iput-object p1, p0, Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    return-void
.end method


# virtual methods
.method public getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider;->aliCloudServerResponse:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    if-eqz v0, :cond_0

    new-instance v7, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    iget-object v2, v0, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->AliCloundAccessKeyId:Ljava/lang/String;

    iget-object v3, v0, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->AliCloundAccessKeySecret:Ljava/lang/String;

    iget-object v4, v0, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->AliCloundSecurityToken:Ljava/lang/String;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/AliCloudServerResponse;->AliCloundExpireTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string v0, "Token\u4fe1\u606f\u4e3anull"

    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v7, 0x0

    :goto_0
    return-object v7
.end method

.method public setDecoder(Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider$AuthDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider;->mDecoder:Lcom/cyjh/http/oss/MyOSSAuthCredentialsProvider$AuthDecoder;

    return-void
.end method
