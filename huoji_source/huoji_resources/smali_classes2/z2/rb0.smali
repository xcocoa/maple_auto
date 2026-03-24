.class public final Lz2/rb0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO0oO:Lz2/rb0;


# instance fields
.field private OooO00o:I

.field private OooO0O0:Ljava/lang/String;

.field private OooO0OO:Ljava/lang/String;

.field private OooO0Oo:Ljava/lang/String;

.field private OooO0o:Ljava/lang/String;

.field private OooO0o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO0OO()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lz2/rb0;->OooO0oO:Lz2/rb0;

    return-void
.end method

.method public static OooO0oo()Lz2/rb0;
    .locals 2

    sget-object v0, Lz2/rb0;->OooO0oO:Lz2/rb0;

    if-nez v0, :cond_1

    const-class v0, Lz2/rb0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/rb0;->OooO0oO:Lz2/rb0;

    if-nez v1, :cond_0

    new-instance v1, Lz2/rb0;

    invoke-direct {v1}, Lz2/rb0;-><init>()V

    sput-object v1, Lz2/rb0;->OooO0oO:Lz2/rb0;

    invoke-static {}, Lz2/rb0;->OooOO0O()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lz2/rb0;->OooO0oO:Lz2/rb0;

    return-object v0
.end method

.method private static OooOO0O()V
    .locals 3

    invoke-static {}, Lz2/pc0;->OooO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/ub0;->OooO0O0()Lz2/sb0;

    move-result-object v0

    sget-object v1, Lz2/rb0;->OooO0oO:Lz2/rb0;

    invoke-virtual {v0}, Lz2/sb0;->OooO0Oo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz2/rb0;->OooOOO(Ljava/lang/String;)V

    sget-object v1, Lz2/rb0;->OooO0oO:Lz2/rb0;

    invoke-virtual {v0}, Lz2/sb0;->OooO0o()I

    move-result v2

    invoke-virtual {v1, v2}, Lz2/rb0;->OooOOo0(I)V

    sget-object v1, Lz2/rb0;->OooO0oO:Lz2/rb0;

    invoke-virtual {v0}, Lz2/sb0;->OooO0OO()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz2/rb0;->OooOOO0(Ljava/util/List;)V

    sget-object v1, Lz2/rb0;->OooO0oO:Lz2/rb0;

    invoke-virtual {v0}, Lz2/sb0;->OooO0O0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz2/rb0;->OooOO0o(Ljava/lang/String;)V

    sget-object v1, Lz2/rb0;->OooO0oO:Lz2/rb0;

    invoke-virtual {v0}, Lz2/sb0;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lz2/rb0;->OooOOOo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/rb0;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method

.method public OooO00o(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lz2/rb0;->OooO0o0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0O0()V
    .locals 3

    iget-object v0, p0, Lz2/rb0;->OooO0O0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lz2/rb0;->OooOO0O()V

    iget-object v0, p0, Lz2/rb0;->OooO0O0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/litepal/exceptions/InvalidAttributesException;

    const-string v1, "dbname is empty or not defined in litepal.xml file, or your litepal.xml file is missing."

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/InvalidAttributesException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lz2/rb0;->OooO0O0:Ljava/lang/String;

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lz2/rb0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz2/rb0;->OooO0O0:Ljava/lang/String;

    :cond_2
    iget v0, p0, Lz2/rb0;->OooO00o:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    iget-object v1, p0, Lz2/rb0;->OooO0o:Ljava/lang/String;

    invoke-static {v1}, Lz2/tc0;->OooO00o(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lz2/rb0;->OooO0OO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "lower"

    if-eqz v0, :cond_3

    iput-object v1, p0, Lz2/rb0;->OooO0OO:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lz2/rb0;->OooO0OO:Ljava/lang/String;

    const-string v2, "upper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lz2/rb0;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lz2/rb0;->OooO0OO:Ljava/lang/String;

    const-string v1, "keep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/litepal/exceptions/InvalidAttributesException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lz2/rb0;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is an invalid value for <cases></cases>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/InvalidAttributesException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void

    :cond_6
    new-instance v0, Lorg/litepal/exceptions/InvalidAttributesException;

    const-string v1, "the version in litepal.xml is earlier than the current version"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/InvalidAttributesException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lorg/litepal/exceptions/InvalidAttributesException;

    const-string v1, "the version of database can not be less than 1"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/InvalidAttributesException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/rb0;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/rb0;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0o0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/rb0;->OooO0o0:Ljava/util/List;

    const-string v1, "org.litepal.model.Table_Schema"

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/rb0;->OooO0o0:Ljava/util/List;

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/rb0;->OooO0o0:Ljava/util/List;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lz2/rb0;->OooO0o0:Ljava/util/List;

    return-object v0
.end method

.method public OooO0oO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/rb0;->OooO0o:Ljava/lang/String;

    return-object v0
.end method

.method public OooOO0()I
    .locals 1

    iget v0, p0, Lz2/rb0;->OooO00o:I

    return v0
.end method

.method public OooOO0o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/rb0;->OooO0OO:Ljava/lang/String;

    return-void
.end method

.method public OooOOO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/rb0;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method public OooOOO0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/rb0;->OooO0o0:Ljava/util/List;

    return-void
.end method

.method public OooOOOO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/rb0;->OooO0o:Ljava/lang/String;

    return-void
.end method

.method public OooOOOo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/rb0;->OooO0Oo:Ljava/lang/String;

    return-void
.end method

.method public OooOOo0(I)V
    .locals 0

    iput p1, p0, Lz2/rb0;->OooO00o:I

    return-void
.end method
