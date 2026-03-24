.class public Lz2/wa0;
.super Lz2/qa0;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/qa0;-><init>()V

    return-void
.end method

.method private o000OOo(Lz2/ua0;Lz2/ua0;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz2/qa0;->o00oO0O(Lz2/ua0;Lz2/ua0;)V

    return-void
.end method

.method private o0O0O00(Ljava/util/Collection;Lz2/ua0;Lz2/ua0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lz2/ua0;",
            ">;",
            "Lz2/ua0;",
            "Lz2/ua0;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p3}, Lz2/ua0;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lz2/ua0;->getTableName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lz2/ua0;->getBaseObjId()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Lz2/ua0;->addAssociatedModelWithoutFK(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method private o0OO00O(Lz2/ua0;Lz2/ob0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lz2/ra0;->Oooo00O(Lz2/ua0;Lz2/ob0;)Lz2/ua0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lz2/qa0;->o0ooOOo(Lz2/ua0;Lz2/ob0;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p2}, Lz2/ob0;->OooO0O0()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lz2/qa0;->o00oO0o(Ljava/util/Collection;Ljava/lang/reflect/Field;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lz2/qa0;->o0OOO0o(Lz2/ua0;Lz2/ob0;Ljava/util/Collection;)V

    invoke-direct {p0, v1, p1, v0}, Lz2/wa0;->o0O0O00(Ljava/util/Collection;Lz2/ua0;Lz2/ua0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lz2/qa0;->o0ooOoO(Lz2/ua0;Lz2/ob0;)V

    :goto_0
    return-void
.end method

.method private oo0o0Oo(Lz2/ua0;Lz2/ob0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lz2/ra0;->Oooo00o(Lz2/ua0;Lz2/ob0;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/ua0;

    invoke-virtual {p0, p1, v1, p2}, Lz2/qa0;->oo000o(Lz2/ua0;Lz2/ua0;Lz2/ob0;)V

    invoke-direct {p0, p1, v1}, Lz2/wa0;->o000OOo(Lz2/ua0;Lz2/ua0;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p2}, Lz2/ob0;->OooO0OO()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz2/ua0;->addAssociatedTableNameToClearFK(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public o0Oo0oo(Lz2/ua0;Lz2/ob0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-virtual {p1}, Lz2/ua0;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lz2/ob0;->OooO0o0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lz2/wa0;->o0OO00O(Lz2/ua0;Lz2/ob0;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lz2/wa0;->oo0o0Oo(Lz2/ua0;Lz2/ob0;)V

    :goto_0
    return-void
.end method
