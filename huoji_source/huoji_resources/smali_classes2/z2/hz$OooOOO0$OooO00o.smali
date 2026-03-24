.class public Lz2/hz$OooOOO0$OooO00o;
.super Lz2/hz$OooOOO0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/hz$OooOOO0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/hz$OooOOO0;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0o(Lz2/jz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lz2/jz;->OooO0o(Lokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method
