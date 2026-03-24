.class public final Lz2/ky;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/lx;


# instance fields
.field public final OooO00o:Lz2/ox;


# direct methods
.method public constructor <init>(Lz2/ox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/ky;->OooO00o:Lz2/ox;

    return-void
.end method


# virtual methods
.method public intercept(Lz2/lx$OooO00o;)Lz2/sx;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lz2/wy;

    invoke-virtual {v0}, Lz2/wy;->request()Lz2/qx;

    move-result-object v1

    invoke-virtual {v0}, Lz2/wy;->OooOO0o()Lz2/py;

    move-result-object v2

    invoke-virtual {v1}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lz2/ky;->OooO00o:Lz2/ox;

    invoke-virtual {v2, v4, p1, v3}, Lz2/py;->OooO(Lz2/ox;Lz2/lx$OooO00o;Z)Lz2/sy;

    move-result-object p1

    invoke-virtual {v2}, Lz2/py;->OooO0Oo()Lz2/my;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lz2/wy;->OooOO0O(Lz2/qx;Lz2/py;Lz2/sy;Lz2/my;)Lz2/sx;

    move-result-object p1

    return-object p1
.end method
