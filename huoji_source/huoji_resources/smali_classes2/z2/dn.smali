.class public final Lz2/dn;
.super Lz2/jn;
.source ""


# static fields
.field public static final OooOOo:Ljava/lang/String; = "LB"

.field public static final OooOOo0:Ljava/lang/String; = "KG"


# instance fields
.field private final OooO:Ljava/lang/String;

.field private final OooO0O0:Ljava/lang/String;

.field private final OooO0OO:Ljava/lang/String;

.field private final OooO0Oo:Ljava/lang/String;

.field private final OooO0o:Ljava/lang/String;

.field private final OooO0o0:Ljava/lang/String;

.field private final OooO0oO:Ljava/lang/String;

.field private final OooO0oo:Ljava/lang/String;

.field private final OooOO0:Ljava/lang/String;

.field private final OooOO0O:Ljava/lang/String;

.field private final OooOO0o:Ljava/lang/String;

.field private final OooOOO:Ljava/lang/String;

.field private final OooOOO0:Ljava/lang/String;

.field private final OooOOOO:Ljava/lang/String;

.field private final OooOOOo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v1}, Lz2/jn;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    move-object v1, p1

    iput-object v1, v0, Lz2/dn;->OooO0O0:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lz2/dn;->OooO0OO:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lz2/dn;->OooO0Oo:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lz2/dn;->OooO0o0:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lz2/dn;->OooO0o:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lz2/dn;->OooO0oO:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lz2/dn;->OooO0oo:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lz2/dn;->OooO:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lz2/dn;->OooOO0:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lz2/dn;->OooOO0O:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lz2/dn;->OooOO0o:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lz2/dn;->OooOOO0:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lz2/dn;->OooOOO:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lz2/dn;->OooOOOO:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lz2/dn;->OooOOOo:Ljava/util/Map;

    return-void
.end method

.method private static OooO0o0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static OooOo0(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final OooO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dn;->OooO0oO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO00o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dn;->OooO0O0:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final OooO0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dn;->OooO0oo:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dn;->OooO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dn;->OooO0o0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dn;->OooOOO0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dn;->OooOOOO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dn;->OooOOO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dn;->OooO0o:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOO0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dn;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOOO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dn;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOOo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dn;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dn;->OooOO0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOo0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/dn;->OooOOOo:Ljava/util/Map;

    return-object v0
.end method

.method public final OooOOoo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dn;->OooOO0o:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOo00()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dn;->OooOO0O:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lz2/dn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lz2/dn;

    iget-object v0, p0, Lz2/dn;->OooO0OO:Ljava/lang/String;

    iget-object v2, p1, Lz2/dn;->OooO0OO:Ljava/lang/String;

    invoke-static {v0, v2}, Lz2/dn;->OooO0o0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/dn;->OooO0Oo:Ljava/lang/String;

    iget-object v2, p1, Lz2/dn;->OooO0Oo:Ljava/lang/String;

    invoke-static {v0, v2}, Lz2/dn;->OooO0o0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/dn;->OooO0o0:Ljava/lang/String;

    iget-object v2, p1, Lz2/dn;->OooO0o0:Ljava/lang/String;

    invoke-static {v0, v2}, Lz2/dn;->OooO0o0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/dn;->OooO0o:Ljava/lang/String;

    iget-object v2, p1, Lz2/dn;->OooO0o:Ljava/lang/String;

    invoke-static {v0, v2}, Lz2/dn;->OooO0o0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/dn;->OooO0oo:Ljava/lang/String;

    iget-object v2, p1, Lz2/dn;->OooO0oo:Ljava/lang/String;

    invoke-static {v0, v2}, Lz2/dn;->OooO0o0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/dn;->OooO:Ljava/lang/String;

    iget-object v2, p1, Lz2/dn;->OooO:Ljava/lang/String;

    invoke-static {v0, v2}, Lz2/dn;->OooO0o0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/dn;->OooOO0:Ljava/lang/String;

    iget-object v2, p1, Lz2/dn;->OooOO0:Ljava/lang/String;

    invoke-static {v0, v2}, Lz2/dn;->OooO0o0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/dn;->OooOO0O:Ljava/lang/String;

    iget-object v2, p1, Lz2/dn;->OooOO0O:Ljava/lang/String;

    invoke-static {v0, v2}, Lz2/dn;->OooO0o0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/dn;->OooOO0o:Ljava/lang/String;

    iget-object v2, p1, Lz2/dn;->OooOO0o:Ljava/lang/String;

    invoke-static {v0, v2}, Lz2/dn;->OooO0o0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/dn;->OooOOO0:Ljava/lang/String;

    iget-object v2, p1, Lz2/dn;->OooOOO0:Ljava/lang/String;

    invoke-static {v0, v2}, Lz2/dn;->OooO0o0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/dn;->OooOOO:Ljava/lang/String;

    iget-object v2, p1, Lz2/dn;->OooOOO:Ljava/lang/String;

    invoke-static {v0, v2}, Lz2/dn;->OooO0o0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/dn;->OooOOOO:Ljava/lang/String;

    iget-object v2, p1, Lz2/dn;->OooOOOO:Ljava/lang/String;

    invoke-static {v0, v2}, Lz2/dn;->OooO0o0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/dn;->OooOOOo:Ljava/util/Map;

    iget-object p1, p1, Lz2/dn;->OooOOOo:Ljava/util/Map;

    invoke-static {v0, p1}, Lz2/dn;->OooO0o0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lz2/dn;->OooO0OO:Ljava/lang/String;

    invoke-static {v0}, Lz2/dn;->OooOo0(Ljava/lang/Object;)I

    move-result v0

    xor-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lz2/dn;->OooO0Oo:Ljava/lang/String;

    invoke-static {v1}, Lz2/dn;->OooOo0(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lz2/dn;->OooO0o0:Ljava/lang/String;

    invoke-static {v1}, Lz2/dn;->OooOo0(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lz2/dn;->OooO0o:Ljava/lang/String;

    invoke-static {v1}, Lz2/dn;->OooOo0(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lz2/dn;->OooO0oo:Ljava/lang/String;

    invoke-static {v1}, Lz2/dn;->OooOo0(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lz2/dn;->OooO:Ljava/lang/String;

    invoke-static {v1}, Lz2/dn;->OooOo0(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lz2/dn;->OooOO0:Ljava/lang/String;

    invoke-static {v1}, Lz2/dn;->OooOo0(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lz2/dn;->OooOO0O:Ljava/lang/String;

    invoke-static {v1}, Lz2/dn;->OooOo0(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lz2/dn;->OooOO0o:Ljava/lang/String;

    invoke-static {v1}, Lz2/dn;->OooOo0(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lz2/dn;->OooOOO0:Ljava/lang/String;

    invoke-static {v1}, Lz2/dn;->OooOo0(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lz2/dn;->OooOOO:Ljava/lang/String;

    invoke-static {v1}, Lz2/dn;->OooOo0(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lz2/dn;->OooOOOO:Ljava/lang/String;

    invoke-static {v1}, Lz2/dn;->OooOo0(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lz2/dn;->OooOOOo:Ljava/util/Map;

    invoke-static {v1}, Lz2/dn;->OooOo0(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
