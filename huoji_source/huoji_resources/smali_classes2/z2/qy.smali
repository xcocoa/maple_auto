.class public final Lz2/qy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/lx;


# instance fields
.field private final OooO00o:Lz2/cx;


# direct methods
.method public constructor <init>(Lz2/cx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/qy;->OooO00o:Lz2/cx;

    return-void
.end method

.method private OooO00o(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/bx;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz2/bx;

    invoke-virtual {v3}, Lz2/bx;->OooO0oo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lz2/bx;->OooOo00()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public intercept(Lz2/lx$OooO00o;)Lz2/sx;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lz2/lx$OooO00o;->request()Lz2/qx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/qx;->OooO0oo()Lz2/qx$OooO00o;

    move-result-object v1

    invoke-virtual {v0}, Lz2/qx;->OooO00o()Lz2/rx;

    move-result-object v2

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lz2/rx;->contentType()Lz2/mx;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lz2/mx;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    :cond_0
    invoke-virtual {v2}, Lz2/rx;->contentLength()J

    move-result-wide v7

    const-string v2, "Transfer-Encoding"

    cmp-long v9, v7, v4

    if-eqz v9, :cond_1

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    invoke-virtual {v1, v2}, Lz2/qx$OooO00o;->OooOOO(Ljava/lang/String;)Lz2/qx$OooO00o;

    goto :goto_0

    :cond_1
    const-string v7, "chunked"

    invoke-virtual {v1, v2, v7}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    invoke-virtual {v1, v6}, Lz2/qx$OooO00o;->OooOOO(Ljava/lang/String;)Lz2/qx$OooO00o;

    :cond_2
    :goto_0
    const-string v2, "Host"

    invoke-virtual {v0, v2}, Lz2/qx;->OooO0OO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v7

    invoke-static {v7, v8}, Lz2/zx;->OooOo00(Lz2/kx;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    :cond_3
    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lz2/qx;->OooO0OO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "Keep-Alive"

    invoke-virtual {v1, v2, v7}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    :cond_4
    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2}, Lz2/qx;->OooO0OO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    if-nez v7, :cond_5

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Lz2/qx;->OooO0OO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v8, 0x1

    invoke-virtual {v1, v2, v9}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    :cond_5
    iget-object v2, p0, Lz2/qy;->OooO00o:Lz2/cx;

    invoke-virtual {v0}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v7

    invoke-interface {v2, v7}, Lz2/cx;->OooO0O0(Lz2/kx;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0, v2}, Lz2/qy;->OooO00o(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "Cookie"

    invoke-virtual {v1, v7, v2}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    :cond_6
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2}, Lz2/qx;->OooO0OO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-static {}, Lz2/ay;->OooO00o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    :cond_7
    invoke-virtual {v1}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    move-result-object v1

    invoke-interface {p1, v1}, Lz2/lx$OooO00o;->OooO0o0(Lz2/qx;)Lz2/sx;

    move-result-object p1

    iget-object v1, p0, Lz2/qy;->OooO00o:Lz2/cx;

    invoke-virtual {v0}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v2

    invoke-virtual {p1}, Lz2/sx;->o00Oo0()Lz2/jx;

    move-result-object v7

    invoke-static {v1, v2, v7}, Lz2/uy;->OooOO0O(Lz2/cx;Lz2/kx;Lz2/jx;)V

    invoke-virtual {p1}, Lz2/sx;->o00oO0o()Lz2/sx$OooO00o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lz2/sx$OooO00o;->OooOOo0(Lz2/qx;)Lz2/sx$OooO00o;

    move-result-object v0

    if-eqz v8, :cond_8

    const-string v1, "Content-Encoding"

    invoke-virtual {p1, v1}, Lz2/sx;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1}, Lz2/uy;->OooO0OO(Lz2/sx;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lz2/s00;

    invoke-virtual {p1}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v7

    invoke-virtual {v7}, Lz2/tx;->source()Lz2/l00;

    move-result-object v7

    invoke-direct {v2, v7}, Lz2/s00;-><init>(Lz2/e10;)V

    invoke-virtual {p1}, Lz2/sx;->o00Oo0()Lz2/jx;

    move-result-object v7

    invoke-virtual {v7}, Lz2/jx;->OooO()Lz2/jx$OooO00o;

    move-result-object v7

    invoke-virtual {v7, v1}, Lz2/jx$OooO00o;->OooOO0(Ljava/lang/String;)Lz2/jx$OooO00o;

    move-result-object v1

    invoke-virtual {v1, v6}, Lz2/jx$OooO00o;->OooOO0(Ljava/lang/String;)Lz2/jx$OooO00o;

    move-result-object v1

    invoke-virtual {v1}, Lz2/jx$OooO00o;->OooO0oo()Lz2/jx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/sx$OooO00o;->OooOO0(Lz2/jx;)Lz2/sx$OooO00o;

    invoke-virtual {p1, v3}, Lz2/sx;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lz2/xy;

    invoke-static {v2}, Lz2/w00;->OooO0Oo(Lz2/e10;)Lz2/l00;

    move-result-object v2

    invoke-direct {v1, p1, v4, v5, v2}, Lz2/xy;-><init>(Ljava/lang/String;JLz2/l00;)V

    invoke-virtual {v0, v1}, Lz2/sx$OooO00o;->OooO0O0(Lz2/tx;)Lz2/sx$OooO00o;

    :cond_8
    invoke-virtual {v0}, Lz2/sx$OooO00o;->OooO0OO()Lz2/sx;

    move-result-object p1

    return-object p1
.end method
