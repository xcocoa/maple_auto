.class public Lz2/od;
.super Lz2/pd;
.source ""


# instance fields
.field private OoooOoO:Lz2/nd;

.field private OoooOoo:Lz2/md;

.field public Ooooo00:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lz2/nd;)V
    .locals 0

    invoke-direct {p0}, Lz2/pd;-><init>()V

    iput-object p1, p0, Lz2/od;->OoooOoO:Lz2/nd;

    return-void
.end method

.method public constructor <init>(Lz2/nd;Lz2/md;)V
    .locals 0

    invoke-direct {p0}, Lz2/pd;-><init>()V

    iput-object p1, p0, Lz2/od;->OoooOoO:Lz2/nd;

    iput-object p2, p0, Lz2/od;->OoooOoo:Lz2/md;

    return-void
.end method


# virtual methods
.method public OooO(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lz2/od;->OooO0oO(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public OooO0O0(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lz2/od;->OoooOoO:Lz2/nd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/nd;->OooO0o0(Lcom/android/volley/VolleyError;)V

    :cond_0
    return-void
.end method

.method public OooO0oO(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iput-object p3, p0, Lz2/od;->Ooooo00:Ljava/lang/String;

    iget-object v0, p0, Lz2/od;->OoooOoo:Lz2/md;

    invoke-super {p0, p1, p2, p3, v0}, Lz2/pd;->OooO0o0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Lz2/md;)V

    return-void
.end method

.method public OooO0oo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p0, p2}, Lz2/od;->OooO0oO(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public OooOO0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p3, p0, Lz2/od;->Ooooo00:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v7, p0, Lz2/od;->OoooOoo:Lz2/md;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-super/range {v2 .. v7}, Lz2/pd;->OooO0o(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lz2/md;)V

    return-void
.end method

.method public OooOO0O(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    invoke-virtual {p0, p1, p0, p2, p3}, Lz2/od;->OooOO0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public OooOO0o(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lz2/od;->OooOO0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public OooOOO(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lz2/qd;->OooO0OO()Lz2/qd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/qd;->OooO0o(Ljava/lang/Object;)V

    return-void
.end method

.method public OooOOO0()V
    .locals 0

    invoke-virtual {p0, p0}, Lz2/od;->OooOOO(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lz2/od;->OoooOoO:Lz2/nd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/nd;->OooO00o(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
