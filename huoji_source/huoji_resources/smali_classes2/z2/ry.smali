.class public final Lz2/ry;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/lx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/ry$OooO00o;
    }
.end annotation


# instance fields
.field private final OooO00o:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lz2/ry;->OooO00o:Z

    return-void
.end method


# virtual methods
.method public intercept(Lz2/lx$OooO00o;)Lz2/sx;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lz2/wy;

    invoke-virtual {p1}, Lz2/wy;->OooOO0()Lz2/sy;

    move-result-object v0

    invoke-virtual {p1}, Lz2/wy;->OooOO0o()Lz2/py;

    move-result-object v1

    invoke-virtual {p1}, Lz2/wy;->OooO0o()Lz2/yw;

    move-result-object v2

    check-cast v2, Lz2/my;

    invoke-virtual {p1}, Lz2/wy;->request()Lz2/qx;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lz2/wy;->OooO()Lz2/gx;

    move-result-object v6

    invoke-virtual {p1}, Lz2/wy;->call()Lz2/tw;

    move-result-object v7

    invoke-virtual {v6, v7}, Lz2/gx;->OooOOOO(Lz2/tw;)V

    invoke-interface {v0, v3}, Lz2/sy;->OooO0O0(Lz2/qx;)V

    invoke-virtual {p1}, Lz2/wy;->OooO()Lz2/gx;

    move-result-object v6

    invoke-virtual {p1}, Lz2/wy;->call()Lz2/tw;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lz2/gx;->OooOOO(Lz2/tw;Lz2/qx;)V

    invoke-virtual {v3}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lz2/vy;->OooO0O0(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lz2/qx;->OooO00o()Lz2/rx;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "Expect"

    invoke-virtual {v3, v6}, Lz2/qx;->OooO0OO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "100-continue"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Lz2/sy;->OooO0o0()V

    invoke-virtual {p1}, Lz2/wy;->OooO()Lz2/gx;

    move-result-object v6

    invoke-virtual {p1}, Lz2/wy;->call()Lz2/tw;

    move-result-object v7

    invoke-virtual {v6, v7}, Lz2/gx;->OooOOoo(Lz2/tw;)V

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Lz2/sy;->OooO0Oo(Z)Lz2/sx$OooO00o;

    move-result-object v7

    :cond_0
    if-nez v7, :cond_1

    invoke-virtual {p1}, Lz2/wy;->OooO()Lz2/gx;

    move-result-object v2

    invoke-virtual {p1}, Lz2/wy;->call()Lz2/tw;

    move-result-object v6

    invoke-virtual {v2, v6}, Lz2/gx;->OooOOO0(Lz2/tw;)V

    invoke-virtual {v3}, Lz2/qx;->OooO00o()Lz2/rx;

    move-result-object v2

    invoke-virtual {v2}, Lz2/rx;->contentLength()J

    move-result-wide v8

    new-instance v2, Lz2/ry$OooO00o;

    invoke-interface {v0, v3, v8, v9}, Lz2/sy;->OooO0o(Lz2/qx;J)Lz2/d10;

    move-result-object v6

    invoke-direct {v2, v6}, Lz2/ry$OooO00o;-><init>(Lz2/d10;)V

    invoke-static {v2}, Lz2/w00;->OooO0OO(Lz2/d10;)Lz2/k00;

    move-result-object v6

    invoke-virtual {v3}, Lz2/qx;->OooO00o()Lz2/rx;

    move-result-object v8

    invoke-virtual {v8, v6}, Lz2/rx;->writeTo(Lz2/k00;)V

    invoke-interface {v6}, Lz2/d10;->close()V

    invoke-virtual {p1}, Lz2/wy;->OooO()Lz2/gx;

    move-result-object v6

    invoke-virtual {p1}, Lz2/wy;->call()Lz2/tw;

    move-result-object v8

    iget-wide v9, v2, Lz2/ry$OooO00o;->OoooOoo:J

    invoke-virtual {v6, v8, v9, v10}, Lz2/gx;->OooOO0o(Lz2/tw;J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lz2/my;->OooOOo0()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lz2/py;->OooOO0()V

    :cond_2
    :goto_0
    invoke-interface {v0}, Lz2/sy;->OooO00o()V

    const/4 v2, 0x0

    if-nez v7, :cond_3

    invoke-virtual {p1}, Lz2/wy;->OooO()Lz2/gx;

    move-result-object v6

    invoke-virtual {p1}, Lz2/wy;->call()Lz2/tw;

    move-result-object v7

    invoke-virtual {v6, v7}, Lz2/gx;->OooOOoo(Lz2/tw;)V

    invoke-interface {v0, v2}, Lz2/sy;->OooO0Oo(Z)Lz2/sx$OooO00o;

    move-result-object v7

    :cond_3
    invoke-virtual {v7, v3}, Lz2/sx$OooO00o;->OooOOo0(Lz2/qx;)Lz2/sx$OooO00o;

    move-result-object v6

    invoke-virtual {v1}, Lz2/py;->OooO0Oo()Lz2/my;

    move-result-object v7

    invoke-virtual {v7}, Lz2/my;->OooO0OO()Lz2/ix;

    move-result-object v7

    invoke-virtual {v6, v7}, Lz2/sx$OooO00o;->OooO0oo(Lz2/ix;)Lz2/sx$OooO00o;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lz2/sx$OooO00o;->OooOOo(J)Lz2/sx$OooO00o;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lz2/sx$OooO00o;->OooOOOO(J)Lz2/sx$OooO00o;

    move-result-object v6

    invoke-virtual {v6}, Lz2/sx$OooO00o;->OooO0OO()Lz2/sx;

    move-result-object v6

    invoke-virtual {v6}, Lz2/sx;->OoooooO()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_4

    invoke-interface {v0, v2}, Lz2/sy;->OooO0Oo(Z)Lz2/sx$OooO00o;

    move-result-object v2

    invoke-virtual {v2, v3}, Lz2/sx$OooO00o;->OooOOo0(Lz2/qx;)Lz2/sx$OooO00o;

    move-result-object v2

    invoke-virtual {v1}, Lz2/py;->OooO0Oo()Lz2/my;

    move-result-object v3

    invoke-virtual {v3}, Lz2/my;->OooO0OO()Lz2/ix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lz2/sx$OooO00o;->OooO0oo(Lz2/ix;)Lz2/sx$OooO00o;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lz2/sx$OooO00o;->OooOOo(J)Lz2/sx$OooO00o;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lz2/sx$OooO00o;->OooOOOO(J)Lz2/sx$OooO00o;

    move-result-object v2

    invoke-virtual {v2}, Lz2/sx$OooO00o;->OooO0OO()Lz2/sx;

    move-result-object v6

    invoke-virtual {v6}, Lz2/sx;->OoooooO()I

    move-result v7

    :cond_4
    invoke-virtual {p1}, Lz2/wy;->OooO()Lz2/gx;

    move-result-object v2

    invoke-virtual {p1}, Lz2/wy;->call()Lz2/tw;

    move-result-object p1

    invoke-virtual {v2, p1, v6}, Lz2/gx;->OooOOo(Lz2/tw;Lz2/sx;)V

    iget-boolean p1, p0, Lz2/ry;->OooO00o:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x65

    if-ne v7, p1, :cond_5

    invoke-virtual {v6}, Lz2/sx;->o00oO0o()Lz2/sx$OooO00o;

    move-result-object p1

    sget-object v0, Lz2/zx;->OooO0OO:Lz2/tx;

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Lz2/sx;->o00oO0o()Lz2/sx$OooO00o;

    move-result-object p1

    invoke-interface {v0, v6}, Lz2/sy;->OooO0OO(Lz2/sx;)Lz2/tx;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Lz2/sx$OooO00o;->OooO0O0(Lz2/tx;)Lz2/sx$OooO00o;

    move-result-object p1

    invoke-virtual {p1}, Lz2/sx$OooO00o;->OooO0OO()Lz2/sx;

    move-result-object p1

    invoke-virtual {p1}, Lz2/sx;->o0OOO0o()Lz2/qx;

    move-result-object v0

    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lz2/qx;->OooO0OO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "close"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, v2}, Lz2/sx;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {v1}, Lz2/py;->OooOO0()V

    :cond_7
    const/16 v0, 0xcc

    if-eq v7, v0, :cond_8

    const/16 v0, 0xcd

    if-ne v7, v0, :cond_9

    :cond_8
    invoke-virtual {p1}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/tx;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_a

    :cond_9
    return-object p1

    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object p1

    invoke-virtual {p1}, Lz2/tx;->contentLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
