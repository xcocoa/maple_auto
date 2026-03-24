.class public Lz2/yb0;
.super Lz2/vb0;
.source ""


# static fields
.field public static final OooOOO0:Ljava/lang/String; = "Creator"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/vb0;-><init>()V

    return-void
.end method

.method private OoooOoo(Lz2/hc0;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lz2/hc0;->OooO0o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/vb0;->OoooO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public OooOooO(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2

    invoke-virtual {p0}, Lz2/ac0;->Oooo00o()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/hc0;

    invoke-virtual {p0, v1, p1, p2}, Lz2/yb0;->OoooOo0(Lz2/hc0;Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OoooOo0(Lz2/hc0;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lz2/yb0;->Ooooo00(Lz2/hc0;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lz2/ac0;->Oooo000(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Lz2/hc0;->OooO0o()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lz2/vb0;->OoooO0O(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public OoooOoO(Lz2/hc0;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lz2/hc0;->OooO0o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lz2/hc0;->OooO0o0()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lz2/vb0;->OoooO00(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Ooooo00(Lz2/hc0;Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/hc0;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lz2/yb0;->OoooOoo(Lz2/hc0;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, p1}, Lz2/yb0;->OoooOoO(Lz2/hc0;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lz2/hc0;->OooO0o()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lz2/rc0;->OooOo00(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    return-object v0
.end method
