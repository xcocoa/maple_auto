.class public Lz2/wd;
.super Lz2/vd;
.source ""

# interfaces
.implements Lz2/td;


# instance fields
.field private OooO0O0:Lz2/sd;


# direct methods
.method public constructor <init>(Lz2/sd;)V
    .locals 0

    invoke-direct {p0}, Lz2/vd;-><init>()V

    iput-object p1, p0, Lz2/wd;->OooO0O0:Lz2/sd;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lz2/wd;->OooO0O0:Lz2/sd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/sd;->OooO00o(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/vd;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lz2/od;->OooOO0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public OooO0OO()V
    .locals 2

    iget-object v0, p0, Lz2/vd;->OooO00o:Lz2/od;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/od;->OooOOO(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public OooO0o(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/wd;->OooO0O0:Lz2/sd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/sd;->OooO0O0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
