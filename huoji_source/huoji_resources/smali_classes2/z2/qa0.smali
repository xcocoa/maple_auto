.class public abstract Lz2/qa0;
.super Lz2/ra0;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/ra0;-><init>()V

    return-void
.end method

.method private o0ooOO0(Lz2/ob0;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lz2/ob0;->OooO0OO()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/la0;->OooO0oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public o00oO0O(Lz2/ua0;Lz2/ua0;)V
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lz2/ua0;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lz2/ua0;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lz2/ua0;->getBaseObjId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lz2/ua0;->addAssociatedModelWithFK(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lz2/ua0;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lz2/ua0;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lz2/ua0;->getBaseObjId()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Lz2/ua0;->addAssociatedModelWithoutFK(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public o00oO0o(Ljava/util/Collection;Ljava/lang/reflect/Field;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lz2/ua0;",
            ">;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/Collection<",
            "Lz2/ua0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/la0;->OooOOo0(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lz2/la0;->OooOo00(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object p2

    :cond_2
    new-instance p1, Lorg/litepal/exceptions/LitePalSupportException;

    const-string p2, "The field to declare many2one or many2many associations should be List or Set."

    invoke-direct {p1, p2}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o0OOO0o(Lz2/ua0;Lz2/ob0;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/ua0;",
            "Lz2/ob0;",
            "Ljava/util/Collection<",
            "Lz2/ua0;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-virtual {p2}, Lz2/ob0;->OooO0O0()Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lz2/ra0;->o00O0O(Lz2/ua0;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method

.method public o0ooOOo(Lz2/ua0;Lz2/ob0;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/ua0;",
            "Lz2/ob0;",
            ")",
            "Ljava/util/Collection<",
            "Lz2/ua0;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-virtual {p2}, Lz2/ob0;->OooO0O0()Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lz2/ra0;->Oooo0o0(Lz2/ua0;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public o0ooOoO(Lz2/ua0;Lz2/ob0;)V
    .locals 0

    invoke-direct {p0, p2}, Lz2/qa0;->o0ooOO0(Lz2/ob0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz2/ua0;->addFKNameToClearSelf(Ljava/lang/String;)V

    return-void
.end method

.method public oo000o(Lz2/ua0;Lz2/ua0;Lz2/ob0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-virtual {p3}, Lz2/ob0;->OooO0O0()Ljava/lang/reflect/Field;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p1}, Lz2/ra0;->o00O0O(Lz2/ua0;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method
