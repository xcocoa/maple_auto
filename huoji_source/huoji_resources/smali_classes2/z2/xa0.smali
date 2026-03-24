.class public Lz2/xa0;
.super Lz2/qa0;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/qa0;-><init>()V

    return-void
.end method

.method private o0O0O00(Lz2/ua0;Lz2/ua0;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz2/qa0;->o00oO0O(Lz2/ua0;Lz2/ua0;)V

    return-void
.end method

.method private o0OO00O(Lz2/ua0;Lz2/ua0;)V
    .locals 3

    invoke-virtual {p2}, Lz2/ua0;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lz2/ua0;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lz2/ua0;->getBaseObjId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lz2/ua0;->addAssociatedModelWithFK(Ljava/lang/String;J)V

    invoke-virtual {p2}, Lz2/ua0;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lz2/ua0;->getBaseObjId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lz2/ua0;->addAssociatedModelWithoutFK(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private oo0o0Oo(Lz2/ua0;Lz2/ua0;Lz2/ob0;)V
    .locals 0

    invoke-virtual {p3}, Lz2/ob0;->OooO0O0()Ljava/lang/reflect/Field;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lz2/xa0;->o0OO00O(Lz2/ua0;Lz2/ua0;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lz2/xa0;->o0O0O00(Lz2/ua0;Lz2/ua0;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public o0Oo0oo(Lz2/ua0;Lz2/ob0;)V
    .locals 1
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

    invoke-virtual {p0, p1, v0, p2}, Lz2/qa0;->oo000o(Lz2/ua0;Lz2/ua0;Lz2/ob0;)V

    invoke-direct {p0, p1, v0, p2}, Lz2/xa0;->oo0o0Oo(Lz2/ua0;Lz2/ua0;Lz2/ob0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lz2/ob0;->OooO0OO()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz2/ua0;->addAssociatedTableNameToClearFK(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
