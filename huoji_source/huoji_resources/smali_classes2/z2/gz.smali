.class public final Lz2/gz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/sy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/gz$OooO00o;
    }
.end annotation


# static fields
.field private static final OooO:Ljava/lang/String; = "keep-alive"

.field private static final OooO0oO:Ljava/lang/String; = "connection"

.field private static final OooO0oo:Ljava/lang/String; = "host"

.field private static final OooOO0:Ljava/lang/String; = "proxy-connection"

.field private static final OooOO0O:Ljava/lang/String; = "transfer-encoding"

.field private static final OooOO0o:Ljava/lang/String; = "te"

.field private static final OooOOO:Ljava/lang/String; = "upgrade"

.field private static final OooOOO0:Ljava/lang/String; = "encoding"

.field private static final OooOOOO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OooOOOo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final OooO0O0:Lz2/lx$OooO00o;

.field public final OooO0OO:Lz2/py;

.field private final OooO0Oo:Lz2/hz;

.field private final OooO0o:Lokhttp3/Protocol;

.field private OooO0o0:Lz2/jz;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/zx;->OooOo0O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lz2/gz;->OooOOOO:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/zx;->OooOo0O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lz2/gz;->OooOOOo:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lz2/ox;Lz2/lx$OooO00o;Lz2/py;Lz2/hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/gz;->OooO0O0:Lz2/lx$OooO00o;

    iput-object p3, p0, Lz2/gz;->OooO0OO:Lz2/py;

    iput-object p4, p0, Lz2/gz;->OooO0Oo:Lz2/hz;

    invoke-virtual {p1}, Lz2/ox;->OooOo()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    :goto_0
    iput-object p2, p0, Lz2/gz;->OooO0o:Lokhttp3/Protocol;

    return-void
.end method

.method public static OooO0oO(Lz2/qx;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/qx;",
            ")",
            "Ljava/util/List<",
            "Lz2/dz;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lz2/qx;->OooO0o0()Lz2/jx;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lz2/jx;->OooOO0o()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lz2/dz;

    sget-object v3, Lz2/dz;->OooOO0O:Lokio/ByteString;

    invoke-virtual {p0}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lz2/dz;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lz2/dz;

    sget-object v3, Lz2/dz;->OooOO0o:Lokio/ByteString;

    invoke-virtual {p0}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v4

    invoke-static {v4}, Lz2/yy;->OooO0OO(Lz2/kx;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lz2/dz;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    invoke-virtual {p0, v2}, Lz2/qx;->OooO0OO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lz2/dz;

    sget-object v4, Lz2/dz;->OooOOO:Lokio/ByteString;

    invoke-direct {v3, v4, v2}, Lz2/dz;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Lz2/dz;

    sget-object v3, Lz2/dz;->OooOOO0:Lokio/ByteString;

    invoke-virtual {p0}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object p0

    invoke-virtual {p0}, Lz2/kx;->Oooo()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lz2/dz;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-virtual {v0}, Lz2/jx;->OooOO0o()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_2

    invoke-virtual {v0, p0}, Lz2/jx;->OooO0oO(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    sget-object v4, Lz2/gz;->OooOOOO:Ljava/util/List;

    invoke-virtual {v3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lz2/dz;

    invoke-virtual {v0, p0}, Lz2/jx;->OooOOO(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lz2/dz;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static OooO0oo(Lz2/jx;Lokhttp3/Protocol;)Lz2/sx$OooO00o;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lz2/jx$OooO00o;

    invoke-direct {v0}, Lz2/jx$OooO00o;-><init>()V

    invoke-virtual {p0}, Lz2/jx;->OooOO0o()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lz2/jx;->OooO0oO(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lz2/jx;->OooOOO(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":status"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP/1.1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lz2/az;->OooO0O0(Ljava/lang/String;)Lz2/az;

    move-result-object v2

    goto :goto_1

    :cond_0
    sget-object v6, Lz2/gz;->OooOOOo:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lz2/xx;->OooO00o:Lz2/xx;

    invoke-virtual {v6, v0, v4, v5}, Lz2/xx;->OooO0O0(Lz2/jx$OooO00o;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    new-instance p0, Lz2/sx$OooO00o;

    invoke-direct {p0}, Lz2/sx$OooO00o;-><init>()V

    invoke-virtual {p0, p1}, Lz2/sx$OooO00o;->OooOOO(Lokhttp3/Protocol;)Lz2/sx$OooO00o;

    move-result-object p0

    iget p1, v2, Lz2/az;->OooO0O0:I

    invoke-virtual {p0, p1}, Lz2/sx$OooO00o;->OooO0oO(I)Lz2/sx$OooO00o;

    move-result-object p0

    iget-object p1, v2, Lz2/az;->OooO0OO:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/sx$OooO00o;->OooOO0O(Ljava/lang/String;)Lz2/sx$OooO00o;

    move-result-object p0

    invoke-virtual {v0}, Lz2/jx$OooO00o;->OooO0oo()Lz2/jx;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/sx$OooO00o;->OooOO0(Lz2/jx;)Lz2/sx$OooO00o;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public OooO00o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/gz;->OooO0o0:Lz2/jz;

    invoke-virtual {v0}, Lz2/jz;->OooOO0o()Lz2/d10;

    move-result-object v0

    invoke-interface {v0}, Lz2/d10;->close()V

    return-void
.end method

.method public OooO0O0(Lz2/qx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/gz;->OooO0o0:Lz2/jz;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lz2/qx;->OooO00o()Lz2/rx;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lz2/gz;->OooO0oO(Lz2/qx;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lz2/gz;->OooO0Oo:Lz2/hz;

    invoke-virtual {v1, p1, v0}, Lz2/hz;->o00ooo(Ljava/util/List;Z)Lz2/jz;

    move-result-object p1

    iput-object p1, p0, Lz2/gz;->OooO0o0:Lz2/jz;

    invoke-virtual {p1}, Lz2/jz;->OooOOOo()Lz2/f10;

    move-result-object p1

    iget-object v0, p0, Lz2/gz;->OooO0O0:Lz2/lx$OooO00o;

    invoke-interface {v0}, Lz2/lx$OooO00o;->OooO0O0()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lz2/f10;->OooO0oo(JLjava/util/concurrent/TimeUnit;)Lz2/f10;

    iget-object p1, p0, Lz2/gz;->OooO0o0:Lz2/jz;

    invoke-virtual {p1}, Lz2/jz;->OooOoO0()Lz2/f10;

    move-result-object p1

    iget-object v0, p0, Lz2/gz;->OooO0O0:Lz2/lx$OooO00o;

    invoke-interface {v0}, Lz2/lx$OooO00o;->OooO0OO()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lz2/f10;->OooO0oo(JLjava/util/concurrent/TimeUnit;)Lz2/f10;

    return-void
.end method

.method public OooO0OO(Lz2/sx;)Lz2/tx;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/gz;->OooO0OO:Lz2/py;

    iget-object v1, v0, Lz2/py;->OooO0o:Lz2/gx;

    iget-object v0, v0, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {v1, v0}, Lz2/gx;->OooOOo0(Lz2/tw;)V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lz2/sx;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lz2/uy;->OooO0O0(Lz2/sx;)J

    move-result-wide v1

    new-instance p1, Lz2/gz$OooO00o;

    iget-object v3, p0, Lz2/gz;->OooO0o0:Lz2/jz;

    invoke-virtual {v3}, Lz2/jz;->OooOOO0()Lz2/e10;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lz2/gz$OooO00o;-><init>(Lz2/gz;Lz2/e10;)V

    new-instance v3, Lz2/xy;

    invoke-static {p1}, Lz2/w00;->OooO0Oo(Lz2/e10;)Lz2/l00;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lz2/xy;-><init>(Ljava/lang/String;JLz2/l00;)V

    return-object v3
.end method

.method public OooO0Oo(Z)Lz2/sx$OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/gz;->OooO0o0:Lz2/jz;

    invoke-virtual {v0}, Lz2/jz;->OooOo0O()Lz2/jx;

    move-result-object v0

    iget-object v1, p0, Lz2/gz;->OooO0o:Lokhttp3/Protocol;

    invoke-static {v0, v1}, Lz2/gz;->OooO0oo(Lz2/jx;Lokhttp3/Protocol;)Lz2/sx$OooO00o;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Lz2/xx;->OooO00o:Lz2/xx;

    invoke-virtual {p1, v0}, Lz2/xx;->OooO0Oo(Lz2/sx$OooO00o;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public OooO0o(Lz2/qx;J)Lz2/d10;
    .locals 0

    iget-object p1, p0, Lz2/gz;->OooO0o0:Lz2/jz;

    invoke-virtual {p1}, Lz2/jz;->OooOO0o()Lz2/d10;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/gz;->OooO0Oo:Lz2/hz;

    invoke-virtual {v0}, Lz2/hz;->flush()V

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lz2/gz;->OooO0o0:Lz2/jz;

    if-eqz v0, :cond_0

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lz2/jz;->OooO0oo(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_0
    return-void
.end method
