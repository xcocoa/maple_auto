.class public abstract Lz2/ac0;
.super Lz2/la0;
.source ""


# static fields
.field public static final OooOO0o:Ljava/lang/String; = "Generator"


# instance fields
.field private OooOO0:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lz2/hc0;",
            ">;"
        }
    .end annotation
.end field

.field private OooOO0O:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lz2/ec0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/la0;-><init>()V

    return-void
.end method

.method private static OooOoO0(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    new-instance v0, Lz2/yb0;

    invoke-direct {v0}, Lz2/yb0;-><init>()V

    invoke-virtual {v0, p0, p1}, Lz2/vb0;->OooOoO(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private OooOoOO()Z
    .locals 3

    iget-object v0, p0, Lz2/ac0;->OooOO0:Ljava/util/Collection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {}, Lz2/rb0;->OooO0oo()Lz2/rb0;

    move-result-object v2

    invoke-virtual {v2}, Lz2/rb0;->OooO0o0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static OooOoo(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    new-instance v0, Lz2/yb0;

    invoke-direct {v0}, Lz2/yb0;-><init>()V

    invoke-virtual {v0, p0, p1}, Lz2/yb0;->OooOooO(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method public static OooOoo0(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lz2/ac0;->OooOoo(Landroid/database/sqlite/SQLiteDatabase;Z)V

    invoke-static {p0, v0}, Lz2/ac0;->OooOoO0(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private static OooOooo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    new-instance v0, Lz2/zb0;

    invoke-direct {v0}, Lz2/zb0;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lz2/zb0;->OooOooO(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private static Oooo0(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    new-instance v0, Lz2/cc0;

    invoke-direct {v0}, Lz2/cc0;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lz2/wb0;->OooOoO(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method public static Oooo0O0(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-static {p0}, Lz2/ac0;->OooOooo(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lz2/ac0;->OooOoo(Landroid/database/sqlite/SQLiteDatabase;Z)V

    invoke-static {p0}, Lz2/ac0;->Oooo0(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p0}, Lz2/ac0;->Oooo0OO(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p0, v0}, Lz2/ac0;->OooOoO0(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private static Oooo0OO(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    new-instance v0, Lz2/cc0;

    invoke-direct {v0}, Lz2/cc0;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lz2/cc0;->OooOooO(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method


# virtual methods
.method public abstract OooOoO(Landroid/database/sqlite/SQLiteDatabase;Z)V
.end method

.method public abstract OooOooO(Landroid/database/sqlite/SQLiteDatabase;Z)V
.end method

.method public Oooo000(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lorg/litepal/exceptions/DatabaseGenerateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An exception that indicates there was an error with SQL parsing or execution. "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public Oooo00O()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lz2/ec0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ac0;->OooOO0O:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lz2/rb0;->OooO0oo()Lz2/rb0;

    move-result-object v0

    invoke-virtual {v0}, Lz2/rb0;->OooO0o0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/la0;->OooO0o(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lz2/ac0;->OooOO0O:Ljava/util/Collection;

    :cond_1
    iget-object v0, p0, Lz2/ac0;->OooOO0O:Ljava/util/Collection;

    return-object v0
.end method

.method public Oooo00o()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lz2/hc0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ac0;->OooOO0:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/ac0;->OooOO0:Ljava/util/Collection;

    :cond_0
    invoke-direct {p0}, Lz2/ac0;->OooOoOO()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/ac0;->OooOO0:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    invoke-static {}, Lz2/rb0;->OooO0oo()Lz2/rb0;

    move-result-object v0

    invoke-virtual {v0}, Lz2/rb0;->OooO0o0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lz2/ac0;->OooOO0:Ljava/util/Collection;

    invoke-virtual {p0, v1}, Lz2/la0;->OooOOO(Ljava/lang/String;)Lz2/hc0;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz2/ac0;->OooOO0:Ljava/util/Collection;

    return-object v0
.end method
