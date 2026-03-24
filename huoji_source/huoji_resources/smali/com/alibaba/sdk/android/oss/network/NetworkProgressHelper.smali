.class public Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProgressRequestBody(Ljava/io/InputStream;JLjava/lang/String;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;
    .locals 7

    new-instance v6, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;-><init>(Ljava/io/InputStream;JLjava/lang/String;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V

    return-object v6
.end method

.method public static addProgressResponseListener(Lz2/ox;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lz2/ox;
    .locals 1

    invoke-virtual {p0}, Lz2/ox;->OooOo0()Lz2/ox$OooO0O0;

    move-result-object p0

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper$1;

    invoke-direct {v0, p1}, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper$1;-><init>(Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V

    invoke-virtual {p0, v0}, Lz2/ox$OooO0O0;->OooO0O0(Lz2/lx;)Lz2/ox$OooO0O0;

    move-result-object p0

    invoke-virtual {p0}, Lz2/ox$OooO0O0;->OooO0Oo()Lz2/ox;

    move-result-object p0

    return-object p0
.end method
