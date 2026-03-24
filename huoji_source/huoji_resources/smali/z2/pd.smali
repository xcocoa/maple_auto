.class public abstract Lz2/pd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oo000o$OooO0O0;
.implements Lz2/oo000o$OooO00o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/oo000o$OooO0O0<",
        "Ljava/lang/Object;",
        ">;",
        "Lz2/oo000o$OooO00o;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0OO(Ljava/lang/String;Ljava/util/Map;Lz2/md;)Lz2/rd;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lz2/md;",
            ")",
            "Lz2/rd;"
        }
    .end annotation

    new-instance v6, Lz2/rd;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lz2/rd;-><init>(Ljava/lang/String;Ljava/util/Map;Lz2/oo000o$OooO0O0;Lz2/oo000o$OooO00o;Lz2/md;)V

    return-object v6
.end method

.method public OooO0Oo(Ljava/lang/String;Lz2/md;)Lz2/rd;
    .locals 1

    new-instance v0, Lz2/rd;

    invoke-direct {v0, p1, p0, p0, p2}, Lz2/rd;-><init>(Ljava/lang/String;Lz2/oo000o$OooO0O0;Lz2/oo000o$OooO00o;Lz2/md;)V

    return-object v0
.end method

.method public OooO0o(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lz2/md;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lz2/md;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lz2/qd;->OooO0OO()Lz2/qd;

    move-result-object v0

    invoke-virtual {p0, p3, p4, p5}, Lz2/pd;->OooO0OO(Ljava/lang/String;Ljava/util/Map;Lz2/md;)Lz2/rd;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lz2/qd;->OooO00o(Landroid/content/Context;Ljava/lang/Object;Lcom/android/volley/Request;)V

    return-void
.end method

.method public OooO0o0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Lz2/md;)V
    .locals 1

    invoke-static {}, Lz2/qd;->OooO0OO()Lz2/qd;

    move-result-object v0

    invoke-virtual {p0, p3, p4}, Lz2/pd;->OooO0Oo(Ljava/lang/String;Lz2/md;)Lz2/rd;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lz2/qd;->OooO00o(Landroid/content/Context;Ljava/lang/Object;Lcom/android/volley/Request;)V

    return-void
.end method
