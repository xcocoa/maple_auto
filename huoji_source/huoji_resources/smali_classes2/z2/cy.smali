.class public final Lz2/cy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/lx;


# instance fields
.field public final OooO00o:Lz2/hy;


# direct methods
.method public constructor <init>(Lz2/hy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/cy;->OooO00o:Lz2/hy;

    return-void
.end method

.method private OooO00o(Lz2/dy;Lz2/sx;)Lz2/sx;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p1}, Lz2/dy;->OooO00o()Lz2/d10;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p2}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v1

    invoke-virtual {v1}, Lz2/tx;->source()Lz2/l00;

    move-result-object v1

    invoke-static {v0}, Lz2/w00;->OooO0OO(Lz2/d10;)Lz2/k00;

    move-result-object v0

    new-instance v2, Lz2/cy$OooO00o;

    invoke-direct {v2, p0, v1, p1, v0}, Lz2/cy$OooO00o;-><init>(Lz2/cy;Lz2/l00;Lz2/dy;Lz2/k00;)V

    const-string p1, "Content-Type"

    invoke-virtual {p2, p1}, Lz2/sx;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/tx;->contentLength()J

    move-result-wide v0

    invoke-virtual {p2}, Lz2/sx;->o00oO0o()Lz2/sx$OooO00o;

    move-result-object p2

    new-instance v3, Lz2/xy;

    invoke-static {v2}, Lz2/w00;->OooO0Oo(Lz2/e10;)Lz2/l00;

    move-result-object v2

    invoke-direct {v3, p1, v0, v1, v2}, Lz2/xy;-><init>(Ljava/lang/String;JLz2/l00;)V

    invoke-virtual {p2, v3}, Lz2/sx$OooO00o;->OooO0O0(Lz2/tx;)Lz2/sx$OooO00o;

    move-result-object p1

    invoke-virtual {p1}, Lz2/sx$OooO00o;->OooO0OO()Lz2/sx;

    move-result-object p1

    return-object p1
.end method

.method private static OooO0O0(Lz2/jx;Lz2/jx;)Lz2/jx;
    .locals 7

    new-instance v0, Lz2/jx$OooO00o;

    invoke-direct {v0}, Lz2/jx$OooO00o;-><init>()V

    invoke-virtual {p0}, Lz2/jx;->OooOO0o()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lz2/jx;->OooO0oO(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lz2/jx;->OooOOO(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lz2/cy;->OooO0OO(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Lz2/cy;->OooO0Oo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lz2/jx;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    sget-object v6, Lz2/xx;->OooO00o:Lz2/xx;

    invoke-virtual {v6, v0, v4, v5}, Lz2/xx;->OooO0O0(Lz2/jx$OooO00o;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lz2/jx;->OooOO0o()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lz2/jx;->OooO0oO(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lz2/cy;->OooO0OO(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lz2/cy;->OooO0Oo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lz2/xx;->OooO00o:Lz2/xx;

    invoke-virtual {p1, v2}, Lz2/jx;->OooOOO(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lz2/xx;->OooO0O0(Lz2/jx$OooO00o;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lz2/jx$OooO00o;->OooO0oo()Lz2/jx;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0OO(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Content-Length"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static OooO0Oo(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static OooO0o0(Lz2/sx;)Lz2/sx;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/sx;->o00oO0o()Lz2/sx$OooO00o;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz2/sx$OooO00o;->OooO0O0(Lz2/tx;)Lz2/sx$OooO00o;

    move-result-object p0

    invoke-virtual {p0}, Lz2/sx$OooO00o;->OooO0OO()Lz2/sx;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public intercept(Lz2/lx$OooO00o;)Lz2/sx;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/cy;->OooO00o:Lz2/hy;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lz2/lx$OooO00o;->request()Lz2/qx;

    move-result-object v1

    invoke-interface {v0, v1}, Lz2/hy;->OooO0o0(Lz2/qx;)Lz2/sx;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lz2/ey$OooO00o;

    invoke-interface {p1}, Lz2/lx$OooO00o;->request()Lz2/qx;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lz2/ey$OooO00o;-><init>(JLz2/qx;Lz2/sx;)V

    invoke-virtual {v3}, Lz2/ey$OooO00o;->OooO0OO()Lz2/ey;

    move-result-object v1

    iget-object v2, v1, Lz2/ey;->OooO00o:Lz2/qx;

    iget-object v3, v1, Lz2/ey;->OooO0O0:Lz2/sx;

    iget-object v4, p0, Lz2/cy;->OooO00o:Lz2/hy;

    if-eqz v4, :cond_1

    invoke-interface {v4, v1}, Lz2/hy;->OooO0O0(Lz2/ey;)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v1

    invoke-static {v1}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    new-instance v0, Lz2/sx$OooO00o;

    invoke-direct {v0}, Lz2/sx$OooO00o;-><init>()V

    invoke-interface {p1}, Lz2/lx$OooO00o;->request()Lz2/qx;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz2/sx$OooO00o;->OooOOo0(Lz2/qx;)Lz2/sx$OooO00o;

    move-result-object p1

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {p1, v0}, Lz2/sx$OooO00o;->OooOOO(Lokhttp3/Protocol;)Lz2/sx$OooO00o;

    move-result-object p1

    const/16 v0, 0x1f8

    invoke-virtual {p1, v0}, Lz2/sx$OooO00o;->OooO0oO(I)Lz2/sx$OooO00o;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {p1, v0}, Lz2/sx$OooO00o;->OooOO0O(Ljava/lang/String;)Lz2/sx$OooO00o;

    move-result-object p1

    sget-object v0, Lz2/zx;->OooO0OO:Lz2/tx;

    invoke-virtual {p1, v0}, Lz2/sx$OooO00o;->OooO0O0(Lz2/tx;)Lz2/sx$OooO00o;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lz2/sx$OooO00o;->OooOOo(J)Lz2/sx$OooO00o;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lz2/sx$OooO00o;->OooOOOO(J)Lz2/sx$OooO00o;

    move-result-object p1

    invoke-virtual {p1}, Lz2/sx$OooO00o;->OooO0OO()Lz2/sx;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v3}, Lz2/sx;->o00oO0o()Lz2/sx$OooO00o;

    move-result-object p1

    invoke-static {v3}, Lz2/cy;->OooO0o0(Lz2/sx;)Lz2/sx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/sx$OooO00o;->OooO0Oo(Lz2/sx;)Lz2/sx$OooO00o;

    move-result-object p1

    invoke-virtual {p1}, Lz2/sx$OooO00o;->OooO0OO()Lz2/sx;

    move-result-object p1

    return-object p1

    :cond_4
    :try_start_0
    invoke-interface {p1, v2}, Lz2/lx$OooO00o;->OooO0o0(Lz2/qx;)Lz2/sx;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v0

    invoke-static {v0}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lz2/sx;->OoooooO()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lz2/sx;->o00oO0o()Lz2/sx$OooO00o;

    move-result-object v0

    invoke-virtual {v3}, Lz2/sx;->o00Oo0()Lz2/jx;

    move-result-object v1

    invoke-virtual {p1}, Lz2/sx;->o00Oo0()Lz2/jx;

    move-result-object v2

    invoke-static {v1, v2}, Lz2/cy;->OooO0O0(Lz2/jx;Lz2/jx;)Lz2/jx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/sx$OooO00o;->OooOO0(Lz2/jx;)Lz2/sx$OooO00o;

    move-result-object v0

    invoke-virtual {p1}, Lz2/sx;->o0Oo0oo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lz2/sx$OooO00o;->OooOOo(J)Lz2/sx$OooO00o;

    move-result-object v0

    invoke-virtual {p1}, Lz2/sx;->o0ooOoO()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lz2/sx$OooO00o;->OooOOOO(J)Lz2/sx$OooO00o;

    move-result-object v0

    invoke-static {v3}, Lz2/cy;->OooO0o0(Lz2/sx;)Lz2/sx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/sx$OooO00o;->OooO0Oo(Lz2/sx;)Lz2/sx$OooO00o;

    move-result-object v0

    invoke-static {p1}, Lz2/cy;->OooO0o0(Lz2/sx;)Lz2/sx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/sx$OooO00o;->OooOO0o(Lz2/sx;)Lz2/sx$OooO00o;

    move-result-object v0

    invoke-virtual {v0}, Lz2/sx$OooO00o;->OooO0OO()Lz2/sx;

    move-result-object v0

    invoke-virtual {p1}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object p1

    invoke-virtual {p1}, Lz2/tx;->close()V

    iget-object p1, p0, Lz2/cy;->OooO00o:Lz2/hy;

    invoke-interface {p1}, Lz2/hy;->OooO00o()V

    iget-object p1, p0, Lz2/cy;->OooO00o:Lz2/hy;

    invoke-interface {p1, v3, v0}, Lz2/hy;->OooO0o(Lz2/sx;Lz2/sx;)V

    return-object v0

    :cond_6
    invoke-virtual {v3}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v0

    invoke-static {v0}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    :cond_7
    invoke-virtual {p1}, Lz2/sx;->o00oO0o()Lz2/sx$OooO00o;

    move-result-object v0

    invoke-static {v3}, Lz2/cy;->OooO0o0(Lz2/sx;)Lz2/sx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/sx$OooO00o;->OooO0Oo(Lz2/sx;)Lz2/sx$OooO00o;

    move-result-object v0

    invoke-static {p1}, Lz2/cy;->OooO0o0(Lz2/sx;)Lz2/sx;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz2/sx$OooO00o;->OooOO0o(Lz2/sx;)Lz2/sx$OooO00o;

    move-result-object p1

    invoke-virtual {p1}, Lz2/sx$OooO00o;->OooO0OO()Lz2/sx;

    move-result-object p1

    iget-object v0, p0, Lz2/cy;->OooO00o:Lz2/hy;

    if-eqz v0, :cond_9

    invoke-static {p1}, Lz2/uy;->OooO0OO(Lz2/sx;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, v2}, Lz2/ey;->OooO00o(Lz2/sx;Lz2/qx;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lz2/cy;->OooO00o:Lz2/hy;

    invoke-interface {v0, p1}, Lz2/hy;->OooO0Oo(Lz2/sx;)Lz2/dy;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lz2/cy;->OooO00o(Lz2/dy;Lz2/sx;)Lz2/sx;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {v2}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/vy;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_1
    iget-object v0, p0, Lz2/cy;->OooO00o:Lz2/hy;

    invoke-interface {v0, v2}, Lz2/hy;->OooO0OO(Lz2/qx;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_9
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v0

    invoke-static {v0}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    :cond_a
    throw p1
.end method
