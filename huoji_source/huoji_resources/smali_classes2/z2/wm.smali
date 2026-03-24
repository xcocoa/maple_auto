.class public final Lz2/wm;
.super Lz2/jn;
.source ""


# instance fields
.field private final OooO:Ljava/lang/String;

.field private final OooO0O0:[Ljava/lang/String;

.field private final OooO0OO:[Ljava/lang/String;

.field private final OooO0Oo:Ljava/lang/String;

.field private final OooO0o:[Ljava/lang/String;

.field private final OooO0o0:[Ljava/lang/String;

.field private final OooO0oO:[Ljava/lang/String;

.field private final OooO0oo:[Ljava/lang/String;

.field private final OooOO0:Ljava/lang/String;

.field private final OooOO0O:[Ljava/lang/String;

.field private final OooOO0o:[Ljava/lang/String;

.field private final OooOOO:Ljava/lang/String;

.field private final OooOOO0:Ljava/lang/String;

.field private final OooOOOO:Ljava/lang/String;

.field private final OooOOOo:[Ljava/lang/String;

.field private final OooOOo0:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    sget-object v7, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v7}, Lz2/jn;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    array-length v7, v1

    array-length v8, v2

    if-ne v7, v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Phone numbers and types lengths differ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    array-length v7, v3

    array-length v8, v4

    if-ne v7, v8, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Emails and types lengths differ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    array-length v7, v5

    array-length v8, v6

    if-ne v7, v8, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Addresses and types lengths differ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    move-object v7, p1

    iput-object v7, v0, Lz2/wm;->OooO0O0:[Ljava/lang/String;

    move-object v7, p2

    iput-object v7, v0, Lz2/wm;->OooO0OO:[Ljava/lang/String;

    move-object v7, p3

    iput-object v7, v0, Lz2/wm;->OooO0Oo:Ljava/lang/String;

    iput-object v1, v0, Lz2/wm;->OooO0o0:[Ljava/lang/String;

    iput-object v2, v0, Lz2/wm;->OooO0o:[Ljava/lang/String;

    iput-object v3, v0, Lz2/wm;->OooO0oO:[Ljava/lang/String;

    iput-object v4, v0, Lz2/wm;->OooO0oo:[Ljava/lang/String;

    move-object/from16 v1, p8

    iput-object v1, v0, Lz2/wm;->OooO:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v0, Lz2/wm;->OooOO0:Ljava/lang/String;

    iput-object v5, v0, Lz2/wm;->OooOO0O:[Ljava/lang/String;

    iput-object v6, v0, Lz2/wm;->OooOO0o:[Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Lz2/wm;->OooOOO0:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lz2/wm;->OooOOO:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lz2/wm;->OooOOOO:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lz2/wm;->OooOOOo:[Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lz2/wm;->OooOOo0:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lz2/wm;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final OooO()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooO0oO:[Ljava/lang/String;

    return-object v0
.end method

.method public final OooO00o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lz2/wm;->OooO0O0:[Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0Oo([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/wm;->OooO0OO:[Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0Oo([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/wm;->OooO0Oo:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/wm;->OooOOOO:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/wm;->OooOOO0:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/wm;->OooOO0O:[Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0Oo([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/wm;->OooO0o0:[Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0Oo([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/wm;->OooO0oO:[Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0Oo([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/wm;->OooO:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/wm;->OooOOOo:[Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0Oo([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/wm;->OooOOO:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/wm;->OooOOo0:[Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0Oo([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/wm;->OooOO0:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final OooO0o()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooOO0O:[Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0o0()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooOO0o:[Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooOOO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oo()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooO0oo:[Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooOOo0:[Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0o()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooO0O0:[Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooOO0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOO0()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooO0OO:[Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOOO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooOOO0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOOo()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooO0o0:[Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOo0()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooO0o:[Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOoo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooOOOO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOo00()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/wm;->OooOOOo:[Ljava/lang/String;

    return-object v0
.end method
