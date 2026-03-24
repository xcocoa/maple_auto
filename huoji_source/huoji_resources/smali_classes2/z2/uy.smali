.class public final Lz2/uy;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO00o:Lokio/ByteString;

.field private static final OooO0O0:Lokio/ByteString;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lz2/uy;->OooO00o:Lokio/ByteString;

    const-string v0, "\t ,="

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lz2/uy;->OooO0O0:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static OooO(Lz2/j00;)Ljava/lang/String;
    .locals 12

    invoke-virtual {p0}, Lz2/j00;->readByte()B

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    new-instance v0, Lz2/j00;

    invoke-direct {v0}, Lz2/j00;-><init>()V

    :goto_0
    sget-object v2, Lz2/uy;->OooO00o:Lokio/ByteString;

    invoke-virtual {p0, v2}, Lz2/j00;->OooOOoo(Lokio/ByteString;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    return-object v6

    :cond_0
    invoke-virtual {p0, v2, v3}, Lz2/j00;->o00Oo0(J)B

    move-result v4

    if-ne v4, v1, :cond_1

    invoke-virtual {v0, p0, v2, v3}, Lz2/j00;->OooOooO(Lz2/j00;J)V

    invoke-virtual {p0}, Lz2/j00;->readByte()B

    invoke-virtual {v0}, Lz2/j00;->Oooo0oo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lz2/j00;->o00000O0()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    add-long v9, v2, v7

    cmp-long v11, v4, v9

    if-nez v11, :cond_2

    return-object v6

    :cond_2
    invoke-virtual {v0, p0, v2, v3}, Lz2/j00;->OooOooO(Lz2/j00;J)V

    invoke-virtual {p0}, Lz2/j00;->readByte()B

    invoke-virtual {v0, p0, v7, v8}, Lz2/j00;->OooOooO(Lz2/j00;J)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static OooO00o(Lz2/jx;)J
    .locals 2

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lz2/jx;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/uy;->OooOOo0(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static OooO0O0(Lz2/sx;)J
    .locals 2

    invoke-virtual {p0}, Lz2/sx;->o00Oo0()Lz2/jx;

    move-result-object p0

    invoke-static {p0}, Lz2/uy;->OooO00o(Lz2/jx;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static OooO0OO(Lz2/sx;)Z
    .locals 8

    invoke-virtual {p0}, Lz2/sx;->o0OOO0o()Lz2/qx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lz2/sx;->OoooooO()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    :cond_2
    invoke-static {p0}, Lz2/uy;->OooO0O0(Lz2/sx;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lz2/sx;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3
.end method

.method public static OooO0Oo(Lz2/jx;)Z
    .locals 1

    invoke-static {p0}, Lz2/uy;->OooOOo(Lz2/jx;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "*"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static OooO0o(Ljava/util/List;Lz2/j00;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/ww;",
            ">;",
            "Lz2/j00;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_0

    invoke-static {p1}, Lz2/uy;->OooOOOo(Lz2/j00;)Z

    invoke-static {p1}, Lz2/uy;->OooOO0(Lz2/j00;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lz2/uy;->OooOOOo(Lz2/j00;)Z

    move-result v2

    invoke-static {p1}, Lz2/uy;->OooOO0(Lz2/j00;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lz2/j00;->OooOOO()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lz2/ww;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lz2/ww;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const/16 v4, 0x3d

    invoke-static {p1, v4}, Lz2/uy;->OooOOO0(Lz2/j00;B)I

    move-result v5

    invoke-static {p1}, Lz2/uy;->OooOOOo(Lz2/j00;)Z

    move-result v6

    if-nez v2, :cond_4

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lz2/j00;->OooOOO()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    new-instance v2, Lz2/ww;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lz2/uy;->OooOO0o(CI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lz2/ww;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1, v4}, Lz2/uy;->OooOOO0(Lz2/j00;B)I

    move-result v6

    add-int/2addr v5, v6

    :goto_2
    if-nez v3, :cond_6

    invoke-static {p1}, Lz2/uy;->OooOO0(Lz2/j00;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lz2/uy;->OooOOOo(Lz2/j00;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {p1, v4}, Lz2/uy;->OooOOO0(Lz2/j00;B)I

    move-result v5

    :cond_6
    if-nez v5, :cond_7

    :goto_3
    new-instance v4, Lz2/ww;

    invoke-direct {v4, v1, v2}, Lz2/ww;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x1

    if-le v5, v6, :cond_8

    return-void

    :cond_8
    invoke-static {p1}, Lz2/uy;->OooOOOo(Lz2/j00;)Z

    move-result v6

    if-eqz v6, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Lz2/j00;->OooOOO()Z

    move-result v6

    if-nez v6, :cond_a

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Lz2/j00;->o00Oo0(J)B

    move-result v6

    const/16 v7, 0x22

    if-ne v6, v7, :cond_a

    invoke-static {p1}, Lz2/uy;->OooO(Lz2/j00;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_a
    invoke-static {p1}, Lz2/uy;->OooOO0(Lz2/j00;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    if-nez v6, :cond_b

    return-void

    :cond_b
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_c

    return-void

    :cond_c
    invoke-static {p1}, Lz2/uy;->OooOOOo(Lz2/j00;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p1}, Lz2/j00;->OooOOO()Z

    move-result v3

    if-nez v3, :cond_d

    return-void

    :cond_d
    move-object v3, v0

    goto :goto_2
.end method

.method public static OooO0o0(Lz2/sx;)Z
    .locals 0

    invoke-virtual {p0}, Lz2/sx;->o00Oo0()Lz2/jx;

    move-result-object p0

    invoke-static {p0}, Lz2/uy;->OooO0Oo(Lz2/jx;)Z

    move-result p0

    return p0
.end method

.method public static OooO0oO(Lz2/jx;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/jx;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lz2/ww;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lz2/jx;->OooOO0o()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lz2/jx;->OooO0oO(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lz2/j00;

    invoke-direct {v2}, Lz2/j00;-><init>()V

    invoke-virtual {p0, v1}, Lz2/jx;->OooOOO(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lz2/j00;->o0000Oo0(Ljava/lang/String;)Lz2/j00;

    move-result-object v2

    invoke-static {v0, v2}, Lz2/uy;->OooO0o(Ljava/util/List;Lz2/j00;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static OooO0oo(Ljava/lang/String;I)I
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    long-to-int p1, p0

    :catch_0
    return p1
.end method

.method private static OooOO0(Lz2/j00;)Ljava/lang/String;
    .locals 5

    :try_start_0
    sget-object v0, Lz2/uy;->OooO0O0:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lz2/j00;->OooOOoo(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lz2/j00;->o00000O0()J

    move-result-wide v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0, v1}, Lz2/j00;->OooO0O0(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static OooOO0O(Lz2/cx;Lz2/kx;Lz2/jx;)V
    .locals 1

    sget-object v0, Lz2/cx;->OooO00o:Lz2/cx;

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lz2/bx;->OooOO0O(Lz2/kx;Lz2/jx;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1, p2}, Lz2/cx;->OooO00o(Lz2/kx;Ljava/util/List;)V

    return-void
.end method

.method private static OooOO0o(CI)Ljava/lang/String;
    .locals 0

    new-array p1, p1, [C

    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([CC)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static OooOOO(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private static OooOOO0(Lz2/j00;B)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lz2/j00;->OooOOO()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lz2/j00;->o00Oo0(J)B

    move-result v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lz2/j00;->readByte()B

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static OooOOOO(Ljava/lang/String;I)I
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private static OooOOOo(Lz2/j00;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lz2/j00;->OooOOO()Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lz2/j00;->o00Oo0(J)B

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lz2/j00;->readByte()B

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lz2/j00;->readByte()B

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static OooOOo(Lz2/jx;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/jx;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lz2/jx;->OooOO0o()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lz2/jx;->OooO0oO(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Vary"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v3}, Lz2/jx;->OooOOO(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_1
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static OooOOo0(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method private static OooOOoo(Lz2/sx;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/sx;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lz2/sx;->o00Oo0()Lz2/jx;

    move-result-object p0

    invoke-static {p0}, Lz2/uy;->OooOOo(Lz2/jx;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static OooOo0(Lz2/sx;)Lz2/jx;
    .locals 1

    invoke-virtual {p0}, Lz2/sx;->oo000o()Lz2/sx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/sx;->o0OOO0o()Lz2/qx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/qx;->OooO0o0()Lz2/jx;

    move-result-object v0

    invoke-virtual {p0}, Lz2/sx;->o00Oo0()Lz2/jx;

    move-result-object p0

    invoke-static {v0, p0}, Lz2/uy;->OooOo00(Lz2/jx;Lz2/jx;)Lz2/jx;

    move-result-object p0

    return-object p0
.end method

.method public static OooOo00(Lz2/jx;Lz2/jx;)Lz2/jx;
    .locals 5

    invoke-static {p1}, Lz2/uy;->OooOOo(Lz2/jx;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lz2/jx$OooO00o;

    invoke-direct {p0}, Lz2/jx$OooO00o;-><init>()V

    invoke-virtual {p0}, Lz2/jx$OooO00o;->OooO0oo()Lz2/jx;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lz2/jx$OooO00o;

    invoke-direct {v0}, Lz2/jx$OooO00o;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lz2/jx;->OooOO0o()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lz2/jx;->OooO0oO(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1}, Lz2/jx;->OooOOO(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lz2/jx$OooO00o;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)Lz2/jx$OooO00o;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lz2/jx$OooO00o;->OooO0oo()Lz2/jx;

    move-result-object p0

    return-object p0
.end method

.method public static OooOo0O(Lz2/sx;Lz2/jx;Lz2/qx;)Z
    .locals 2

    invoke-static {p0}, Lz2/uy;->OooOOoo(Lz2/sx;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lz2/jx;->OooOOOO(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v0}, Lz2/qx;->OooO0Oo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lz2/zx;->OooOOo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
