.class public final Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/lx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper;->addProgressResponseListener(Lz2/ox;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lz2/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper$1;->val$context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lz2/lx$OooO00o;)Lz2/sx;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lz2/lx$OooO00o;->request()Lz2/qx;

    move-result-object v0

    invoke-interface {p1, v0}, Lz2/lx$OooO00o;->OooO0o0(Lz2/qx;)Lz2/sx;

    move-result-object p1

    invoke-virtual {p1}, Lz2/sx;->o00oO0o()Lz2/sx$OooO00o;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    invoke-virtual {p1}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object p1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper$1;->val$context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-direct {v1, p1, v2}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;-><init>(Lz2/tx;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V

    invoke-virtual {v0, v1}, Lz2/sx$OooO00o;->OooO0O0(Lz2/tx;)Lz2/sx$OooO00o;

    move-result-object p1

    invoke-virtual {p1}, Lz2/sx$OooO00o;->OooO0OO()Lz2/sx;

    move-result-object p1

    return-object p1
.end method
