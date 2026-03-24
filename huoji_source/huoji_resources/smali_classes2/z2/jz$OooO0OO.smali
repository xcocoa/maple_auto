.class public Lz2/jz$OooO0OO;
.super Lz2/h00;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/jz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# instance fields
.field public final synthetic OooOO0o:Lz2/jz;


# direct methods
.method public constructor <init>(Lz2/jz;)V
    .locals 0

    iput-object p1, p0, Lz2/jz$OooO0OO;->OooOO0o:Lz2/jz;

    invoke-direct {p0}, Lz2/h00;-><init>()V

    return-void
.end method


# virtual methods
.method public OooOOo0(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public OooOo0O()V
    .locals 2

    iget-object v0, p0, Lz2/jz$OooO0OO;->OooOO0o:Lz2/jz;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lz2/jz;->OooO0oo(Lokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public OooOo0o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/h00;->OooOOOo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz2/jz$OooO0OO;->OooOOo0(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
