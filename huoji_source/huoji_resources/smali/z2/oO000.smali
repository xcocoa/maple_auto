.class public final Lz2/oO000;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz2/o0O0O0Oo;",
            "Lz2/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final OooO0O0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz2/o0O0O0Oo;",
            "Lz2/o<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/oO000;->OooO00o:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/oO000;->OooO0O0:Ljava/util/Map;

    return-void
.end method

.method private OooO0OO(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lz2/o0O0O0Oo;",
            "Lz2/o<",
            "*>;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/oO000;->OooO0O0:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/oO000;->OooO00o:Ljava/util/Map;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public OooO00o(Lz2/o0O0O0Oo;Z)Lz2/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Z)",
            "Lz2/o<",
            "*>;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lz2/oO000;->OooO0OO(Z)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o;

    return-object p1
.end method

.method public OooO0O0()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lz2/o0O0O0Oo;",
            "Lz2/o<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO000;->OooO00o:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public OooO0Oo(Lz2/o0O0O0Oo;Lz2/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Lz2/o<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lz2/o;->OooOOo0()Z

    move-result v0

    invoke-direct {p0, v0}, Lz2/oO000;->OooO0OO(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public OooO0o0(Lz2/o0O0O0Oo;Lz2/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Lz2/o<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lz2/o;->OooOOo0()Z

    move-result v0

    invoke-direct {p0, v0}, Lz2/oO000;->OooO0OO(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
