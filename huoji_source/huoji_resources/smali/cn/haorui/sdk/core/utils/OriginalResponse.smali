.class public Lcn/haorui/sdk/core/utils/OriginalResponse;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private body:Ljava/lang/String;

.field private code:I

.field private headers:Lz2/jx;

.field private successful:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/haorui/sdk/core/utils/OriginalResponse;->code:I

    iput-boolean p2, p0, Lcn/haorui/sdk/core/utils/OriginalResponse;->successful:Z

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/OriginalResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/utils/OriginalResponse;->code:I

    return v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/OriginalResponse;->headers:Lz2/jx;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lz2/jx;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isSuccessful()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/utils/OriginalResponse;->successful:Z

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/OriginalResponse;->body:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Lz2/jx;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/OriginalResponse;->headers:Lz2/jx;

    return-void
.end method

.method public setSuccessful(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/utils/OriginalResponse;->successful:Z

    return-void
.end method
