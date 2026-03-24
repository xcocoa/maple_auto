.class public abstract Lz2/h20;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/n20;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private OooO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lz2/n20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "+",
            "Lz2/t20;",
            ">;)",
            "Lz2/n20;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/h20;->OooO0oo(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lz2/h20;->OooO0oo(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/t20;

    invoke-virtual {p0, p1}, Lz2/h20;->OooO0O0(Lz2/t20;)Lz2/n20;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lz2/h20;->OooO0oo(Ljava/lang/String;)V

    return-object p0
.end method

.method private OooOO0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lz2/n20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Lz2/n20;"
        }
    .end annotation

    new-instance v0, Lz2/s30;

    invoke-direct {v0, p4}, Lz2/s30;-><init>(Ljava/util/Iterator;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lz2/h20;->OooO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lz2/n20;

    move-result-object p1

    return-object p1
.end method

.method private OooOO0O(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private OooOO0o(C)V
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lz2/h20;->OooO0oO(C)V

    goto :goto_1

    :cond_0
    const-string p1, "\\\""

    goto :goto_0

    :cond_1
    const-string p1, "\\r"

    goto :goto_0

    :cond_2
    const-string p1, "\\n"

    goto :goto_0

    :cond_3
    const-string p1, "\\t"

    :goto_0
    invoke-virtual {p0, p1}, Lz2/h20;->OooO0oo(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private OooOOO0(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lz2/h20;->OooO0oO(C)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lz2/h20;->OooOO0o(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lz2/h20;->OooO0oO(C)V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lz2/n20;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Lz2/t20;",
            ">;)",
            "Lz2/n20;"
        }
    .end annotation

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lz2/h20;->OooO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lz2/n20;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(Lz2/t20;)Lz2/n20;
    .locals 0

    invoke-interface {p1, p0}, Lz2/t20;->describeTo(Lz2/n20;)V

    return-object p0
.end method

.method public varargs OooO0OO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lz2/n20;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TT;)",
            "Lz2/n20;"
        }
    .end annotation

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lz2/h20;->OooO0o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lz2/n20;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Ljava/lang/String;)Lz2/n20;
    .locals 0

    invoke-virtual {p0, p1}, Lz2/h20;->OooO0oo(Ljava/lang/String;)V

    return-object p0
.end method

.method public OooO0o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lz2/n20;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lz2/n20;"
        }
    .end annotation

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lz2/h20;->OooOO0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lz2/n20;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o0(Ljava/lang/Object;)Lz2/n20;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "null"

    :goto_0
    invoke-virtual {p0, p1}, Lz2/h20;->OooO0oo(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lz2/h20;->OooOOO0(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lz2/h20;->OooO0oO(C)V

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-direct {p0, p1}, Lz2/h20;->OooOO0o(C)V

    invoke-virtual {p0, v0}, Lz2/h20;->OooO0oO(C)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    const/16 v1, 0x3c

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lz2/h20;->OooO0oO(C)V

    invoke-direct {p0, p1}, Lz2/h20;->OooOO0O(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/h20;->OooO0oo(Ljava/lang/String;)V

    const-string p1, "s>"

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lz2/h20;->OooO0oO(C)V

    invoke-direct {p0, p1}, Lz2/h20;->OooOO0O(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/h20;->OooO0oo(Ljava/lang/String;)V

    const-string p1, "L>"

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lz2/h20;->OooO0oO(C)V

    invoke-direct {p0, p1}, Lz2/h20;->OooOO0O(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/h20;->OooO0oo(Ljava/lang/String;)V

    const-string p1, "F>"

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lz2/p30;

    invoke-direct {v0, p1}, Lz2/p30;-><init>(Ljava/lang/Object;)V

    const-string p1, "["

    const-string v1, ", "

    const-string v2, "]"

    invoke-direct {p0, p1, v1, v2, v0}, Lz2/h20;->OooOO0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lz2/n20;

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Lz2/h20;->OooO0oO(C)V

    invoke-direct {p0, p1}, Lz2/h20;->OooOO0O(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/h20;->OooO0oo(Ljava/lang/String;)V

    const/16 p1, 0x3e

    invoke-virtual {p0, p1}, Lz2/h20;->OooO0oO(C)V

    :goto_1
    return-object p0
.end method

.method public abstract OooO0oO(C)V
.end method

.method public OooO0oo(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lz2/h20;->OooO0oO(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
