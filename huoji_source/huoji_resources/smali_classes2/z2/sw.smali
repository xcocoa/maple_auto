.class public final Lz2/sw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/sw$OooO00o;
    }
.end annotation


# static fields
.field public static final OooOOO:Lz2/sw;

.field public static final OooOOOO:Lz2/sw;


# instance fields
.field private final OooO:I

.field private final OooO00o:Z

.field private final OooO0O0:Z

.field private final OooO0OO:I

.field private final OooO0Oo:I

.field private final OooO0o:Z

.field private final OooO0o0:Z

.field private final OooO0oO:Z

.field private final OooO0oo:I

.field private final OooOO0:Z

.field private final OooOO0O:Z

.field private final OooOO0o:Z

.field public OooOOO0:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lz2/sw$OooO00o;

    invoke-direct {v0}, Lz2/sw$OooO00o;-><init>()V

    invoke-virtual {v0}, Lz2/sw$OooO00o;->OooO0o()Lz2/sw$OooO00o;

    move-result-object v0

    invoke-virtual {v0}, Lz2/sw$OooO00o;->OooO00o()Lz2/sw;

    move-result-object v0

    sput-object v0, Lz2/sw;->OooOOO:Lz2/sw;

    new-instance v0, Lz2/sw$OooO00o;

    invoke-direct {v0}, Lz2/sw$OooO00o;-><init>()V

    invoke-virtual {v0}, Lz2/sw$OooO00o;->OooO()Lz2/sw$OooO00o;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2, v1}, Lz2/sw$OooO00o;->OooO0Oo(ILjava/util/concurrent/TimeUnit;)Lz2/sw$OooO00o;

    move-result-object v0

    invoke-virtual {v0}, Lz2/sw$OooO00o;->OooO00o()Lz2/sw;

    move-result-object v0

    sput-object v0, Lz2/sw;->OooOOOO:Lz2/sw;

    return-void
.end method

.method public constructor <init>(Lz2/sw$OooO00o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lz2/sw$OooO00o;->OooO00o:Z

    iput-boolean v0, p0, Lz2/sw;->OooO00o:Z

    iget-boolean v0, p1, Lz2/sw$OooO00o;->OooO0O0:Z

    iput-boolean v0, p0, Lz2/sw;->OooO0O0:Z

    iget v0, p1, Lz2/sw$OooO00o;->OooO0OO:I

    iput v0, p0, Lz2/sw;->OooO0OO:I

    const/4 v0, -0x1

    iput v0, p0, Lz2/sw;->OooO0Oo:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/sw;->OooO0o0:Z

    iput-boolean v0, p0, Lz2/sw;->OooO0o:Z

    iput-boolean v0, p0, Lz2/sw;->OooO0oO:Z

    iget v0, p1, Lz2/sw$OooO00o;->OooO0Oo:I

    iput v0, p0, Lz2/sw;->OooO0oo:I

    iget v0, p1, Lz2/sw$OooO00o;->OooO0o0:I

    iput v0, p0, Lz2/sw;->OooO:I

    iget-boolean v0, p1, Lz2/sw$OooO00o;->OooO0o:Z

    iput-boolean v0, p0, Lz2/sw;->OooOO0:Z

    iget-boolean v0, p1, Lz2/sw$OooO00o;->OooO0oO:Z

    iput-boolean v0, p0, Lz2/sw;->OooOO0O:Z

    iget-boolean p1, p1, Lz2/sw$OooO00o;->OooO0oo:Z

    iput-boolean p1, p0, Lz2/sw;->OooOO0o:Z

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .locals 0
    .param p13    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lz2/sw;->OooO00o:Z

    iput-boolean p2, p0, Lz2/sw;->OooO0O0:Z

    iput p3, p0, Lz2/sw;->OooO0OO:I

    iput p4, p0, Lz2/sw;->OooO0Oo:I

    iput-boolean p5, p0, Lz2/sw;->OooO0o0:Z

    iput-boolean p6, p0, Lz2/sw;->OooO0o:Z

    iput-boolean p7, p0, Lz2/sw;->OooO0oO:Z

    iput p8, p0, Lz2/sw;->OooO0oo:I

    iput p9, p0, Lz2/sw;->OooO:I

    iput-boolean p10, p0, Lz2/sw;->OooOO0:Z

    iput-boolean p11, p0, Lz2/sw;->OooOO0O:Z

    iput-boolean p12, p0, Lz2/sw;->OooOO0o:Z

    iput-object p13, p0, Lz2/sw;->OooOOO0:Ljava/lang/String;

    return-void
.end method

.method private OooO00o()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lz2/sw;->OooO00o:Z

    if-eqz v1, :cond_0

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lz2/sw;->OooO0O0:Z

    if-eqz v1, :cond_1

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lz2/sw;->OooO0OO:I

    const-string v2, ", "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/sw;->OooO0OO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lz2/sw;->OooO0Oo:I

    if-eq v1, v3, :cond_3

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/sw;->OooO0Oo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lz2/sw;->OooO0o0:Z

    if-eqz v1, :cond_4

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Lz2/sw;->OooO0o:Z

    if-eqz v1, :cond_5

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v1, p0, Lz2/sw;->OooO0oO:Z

    if-eqz v1, :cond_6

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v1, p0, Lz2/sw;->OooO0oo:I

    if-eq v1, v3, :cond_7

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/sw;->OooO0oo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v1, p0, Lz2/sw;->OooO:I

    if-eq v1, v3, :cond_8

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/sw;->OooO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-boolean v1, p0, Lz2/sw;->OooOO0:Z

    if-eqz v1, :cond_9

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-boolean v1, p0, Lz2/sw;->OooOO0O:Z

    if-eqz v1, :cond_a

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-boolean v1, p0, Lz2/sw;->OooOO0o:Z

    if-eqz v1, :cond_b

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    const-string v0, ""

    return-object v0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static OooOOO0(Lz2/jx;)Lz2/sw;
    .locals 22

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lz2/jx;->OooOO0o()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    if-ge v6, v1, :cond_12

    invoke-virtual {v0, v6}, Lz2/jx;->OooO0oO(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6}, Lz2/jx;->OooOOO(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "Cache-Control"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    move-object v8, v4

    goto :goto_2

    :cond_1
    const-string v3, "Pragma"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :goto_1
    const/4 v7, 0x0

    :goto_2
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_11

    const-string v3, "=,;"

    invoke-static {v4, v2, v3}, Lz2/uy;->OooOOO(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_4

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v0, 0x2c

    if-eq v5, v0, :cond_4

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    invoke-static {v4, v3}, Lz2/uy;->OooOOOO(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    const-string v3, "\""

    invoke-static {v4, v0, v3}, Lz2/uy;->OooOOO(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_5

    :cond_3
    const/4 v5, 0x1

    const-string v3, ",;"

    invoke-static {v4, v0, v3}, Lz2/uy;->OooOOO(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v5, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x0

    :goto_5
    const-string v5, "no-cache"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    const/4 v9, 0x1

    goto/16 :goto_6

    :cond_5
    const-string v5, "no-store"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, -0x1

    const/4 v10, 0x1

    goto/16 :goto_6

    :cond_6
    const-string v5, "max-age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, -0x1

    invoke-static {v0, v5}, Lz2/uy;->OooO0oo(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_6

    :cond_7
    const-string v5, "s-maxage"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, -0x1

    invoke-static {v0, v5}, Lz2/uy;->OooO0oo(Ljava/lang/String;I)I

    move-result v12

    goto :goto_6

    :cond_8
    const-string v5, "private"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, -0x1

    const/4 v13, 0x1

    goto :goto_6

    :cond_9
    const-string v5, "public"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, -0x1

    const/4 v14, 0x1

    goto :goto_6

    :cond_a
    const-string v5, "must-revalidate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, -0x1

    const/4 v15, 0x1

    goto :goto_6

    :cond_b
    const-string v5, "max-stale"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Lz2/uy;->OooO0oo(Ljava/lang/String;I)I

    move-result v16

    const/4 v5, -0x1

    goto :goto_6

    :cond_c
    const-string v5, "min-fresh"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, -0x1

    invoke-static {v0, v5}, Lz2/uy;->OooO0oo(Ljava/lang/String;I)I

    move-result v17

    goto :goto_6

    :cond_d
    const/4 v5, -0x1

    const-string v0, "only-if-cached"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v18, 0x1

    goto :goto_6

    :cond_e
    const-string v0, "no-transform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v19, 0x1

    goto :goto_6

    :cond_f
    const-string v0, "immutable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v20, 0x1

    :cond_10
    :goto_6
    move-object/from16 v0, p0

    move v2, v3

    goto/16 :goto_3

    :cond_11
    const/4 v5, -0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_12
    if-nez v7, :cond_13

    const/16 v21, 0x0

    goto :goto_7

    :cond_13
    move-object/from16 v21, v8

    :goto_7
    new-instance v0, Lz2/sw;

    move-object v8, v0

    invoke-direct/range {v8 .. v21}, Lz2/sw;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public OooO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/sw;->OooO00o:Z

    return v0
.end method

.method public OooO0O0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/sw;->OooOO0o:Z

    return v0
.end method

.method public OooO0OO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/sw;->OooO0o0:Z

    return v0
.end method

.method public OooO0Oo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/sw;->OooO0o:Z

    return v0
.end method

.method public OooO0o()I
    .locals 1

    iget v0, p0, Lz2/sw;->OooO0oo:I

    return v0
.end method

.method public OooO0o0()I
    .locals 1

    iget v0, p0, Lz2/sw;->OooO0OO:I

    return v0
.end method

.method public OooO0oO()I
    .locals 1

    iget v0, p0, Lz2/sw;->OooO:I

    return v0
.end method

.method public OooO0oo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/sw;->OooO0oO:Z

    return v0
.end method

.method public OooOO0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/sw;->OooO0O0:Z

    return v0
.end method

.method public OooOO0O()Z
    .locals 1

    iget-boolean v0, p0, Lz2/sw;->OooOO0O:Z

    return v0
.end method

.method public OooOO0o()Z
    .locals 1

    iget-boolean v0, p0, Lz2/sw;->OooOO0:Z

    return v0
.end method

.method public OooOOO()I
    .locals 1

    iget v0, p0, Lz2/sw;->OooO0Oo:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/sw;->OooOOO0:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lz2/sw;->OooO00o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz2/sw;->OooOOO0:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
