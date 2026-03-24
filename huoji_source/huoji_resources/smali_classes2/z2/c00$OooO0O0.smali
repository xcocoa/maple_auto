.class public Lz2/c00$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/uw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/c00;->OooOOO0(Lz2/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/qx;

.field public final synthetic OooO0O0:Lz2/c00;


# direct methods
.method public constructor <init>(Lz2/c00;Lz2/qx;)V
    .locals 0

    iput-object p1, p0, Lz2/c00$OooO0O0;->OooO0O0:Lz2/c00;

    iput-object p2, p0, Lz2/c00$OooO0O0;->OooO00o:Lz2/qx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lz2/tw;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lz2/c00$OooO0O0;->OooO0O0:Lz2/c00;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lz2/c00;->OooOOO(Ljava/lang/Exception;Lz2/sx;)V

    return-void
.end method

.method public onResponse(Lz2/tw;Lz2/sx;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lz2/c00$OooO0O0;->OooO0O0:Lz2/c00;

    invoke-virtual {v0, p2}, Lz2/c00;->OooOO0O(Lz2/sx;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v0, Lz2/xx;->OooO00o:Lz2/xx;

    invoke-virtual {v0, p1}, Lz2/xx;->OooOOOO(Lz2/tw;)Lz2/py;

    move-result-object p1

    invoke-virtual {p1}, Lz2/py;->OooOO0()V

    invoke-virtual {p1}, Lz2/py;->OooO0Oo()Lz2/my;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/my;->OooOOoo(Lz2/py;)Lz2/c00$OooOO0O;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lz2/c00$OooO0O0;->OooO0O0:Lz2/c00;

    iget-object v2, v1, Lz2/c00;->OooO0O0:Lz2/wx;

    invoke-virtual {v2, v1, p2}, Lz2/wx;->OooO0o(Lz2/vx;Lz2/sx;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OkHttp WebSocket "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/c00$OooO0O0;->OooO00o:Lz2/qx;

    invoke-virtual {v1}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v1

    invoke-virtual {v1}, Lz2/kx;->Oooo0oO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lz2/c00$OooO0O0;->OooO0O0:Lz2/c00;

    invoke-virtual {v1, p2, v0}, Lz2/c00;->OooOOOO(Ljava/lang/String;Lz2/c00$OooOO0O;)V

    invoke-virtual {p1}, Lz2/py;->OooO0Oo()Lz2/my;

    move-result-object p1

    invoke-virtual {p1}, Lz2/my;->OooO0Oo()Ljava/net/Socket;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object p1, p0, Lz2/c00$OooO0O0;->OooO0O0:Lz2/c00;

    invoke-virtual {p1}, Lz2/c00;->OooOOOo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lz2/c00$OooO0O0;->OooO0O0:Lz2/c00;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lz2/c00;->OooOOO(Ljava/lang/Exception;Lz2/sx;)V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    iget-object v0, p0, Lz2/c00$OooO0O0;->OooO0O0:Lz2/c00;

    invoke-virtual {v0, p1, p2}, Lz2/c00;->OooOOO(Ljava/lang/Exception;Lz2/sx;)V

    invoke-static {p2}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    return-void
.end method
