.class public final Lz2/wy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/lx$OooO00o;


# instance fields
.field private final OooO:I

.field private final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/lx;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0O0:Lz2/py;

.field private final OooO0OO:Lz2/sy;

.field private final OooO0Oo:Lz2/my;

.field private final OooO0o:Lz2/qx;

.field private final OooO0o0:I

.field private final OooO0oO:Lz2/tw;

.field private final OooO0oo:Lz2/gx;

.field private final OooOO0:I

.field private final OooOO0O:I

.field private OooOO0o:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lz2/py;Lz2/sy;Lz2/my;ILz2/qx;Lz2/tw;Lz2/gx;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/lx;",
            ">;",
            "Lz2/py;",
            "Lz2/sy;",
            "Lz2/my;",
            "I",
            "Lz2/qx;",
            "Lz2/tw;",
            "Lz2/gx;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/wy;->OooO00o:Ljava/util/List;

    iput-object p4, p0, Lz2/wy;->OooO0Oo:Lz2/my;

    iput-object p2, p0, Lz2/wy;->OooO0O0:Lz2/py;

    iput-object p3, p0, Lz2/wy;->OooO0OO:Lz2/sy;

    iput p5, p0, Lz2/wy;->OooO0o0:I

    iput-object p6, p0, Lz2/wy;->OooO0o:Lz2/qx;

    iput-object p7, p0, Lz2/wy;->OooO0oO:Lz2/tw;

    iput-object p8, p0, Lz2/wy;->OooO0oo:Lz2/gx;

    iput p9, p0, Lz2/wy;->OooO:I

    iput p10, p0, Lz2/wy;->OooOO0:I

    iput p11, p0, Lz2/wy;->OooOO0O:I

    return-void
.end method


# virtual methods
.method public OooO()Lz2/gx;
    .locals 1

    iget-object v0, p0, Lz2/wy;->OooO0oo:Lz2/gx;

    return-object v0
.end method

.method public OooO00o(ILjava/util/concurrent/TimeUnit;)Lz2/lx$OooO00o;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-long v1, v1

    const-string v3, "timeout"

    move-object/from16 v4, p2

    invoke-static {v3, v1, v2, v4}, Lz2/zx;->OooO0o0(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v15

    new-instance v1, Lz2/wy;

    iget-object v5, v0, Lz2/wy;->OooO00o:Ljava/util/List;

    iget-object v6, v0, Lz2/wy;->OooO0O0:Lz2/py;

    iget-object v7, v0, Lz2/wy;->OooO0OO:Lz2/sy;

    iget-object v8, v0, Lz2/wy;->OooO0Oo:Lz2/my;

    iget v9, v0, Lz2/wy;->OooO0o0:I

    iget-object v10, v0, Lz2/wy;->OooO0o:Lz2/qx;

    iget-object v11, v0, Lz2/wy;->OooO0oO:Lz2/tw;

    iget-object v12, v0, Lz2/wy;->OooO0oo:Lz2/gx;

    iget v13, v0, Lz2/wy;->OooO:I

    iget v14, v0, Lz2/wy;->OooOO0:I

    move-object v4, v1

    invoke-direct/range {v4 .. v15}, Lz2/wy;-><init>(Ljava/util/List;Lz2/py;Lz2/sy;Lz2/my;ILz2/qx;Lz2/tw;Lz2/gx;III)V

    return-object v1
.end method

.method public OooO0O0()I
    .locals 1

    iget v0, p0, Lz2/wy;->OooOO0:I

    return v0
.end method

.method public OooO0OO()I
    .locals 1

    iget v0, p0, Lz2/wy;->OooOO0O:I

    return v0
.end method

.method public OooO0Oo(ILjava/util/concurrent/TimeUnit;)Lz2/lx$OooO00o;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-long v1, v1

    const-string v3, "timeout"

    move-object/from16 v4, p2

    invoke-static {v3, v1, v2, v4}, Lz2/zx;->OooO0o0(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v13

    new-instance v1, Lz2/wy;

    iget-object v5, v0, Lz2/wy;->OooO00o:Ljava/util/List;

    iget-object v6, v0, Lz2/wy;->OooO0O0:Lz2/py;

    iget-object v7, v0, Lz2/wy;->OooO0OO:Lz2/sy;

    iget-object v8, v0, Lz2/wy;->OooO0Oo:Lz2/my;

    iget v9, v0, Lz2/wy;->OooO0o0:I

    iget-object v10, v0, Lz2/wy;->OooO0o:Lz2/qx;

    iget-object v11, v0, Lz2/wy;->OooO0oO:Lz2/tw;

    iget-object v12, v0, Lz2/wy;->OooO0oo:Lz2/gx;

    iget v14, v0, Lz2/wy;->OooOO0:I

    iget v15, v0, Lz2/wy;->OooOO0O:I

    move-object v4, v1

    invoke-direct/range {v4 .. v15}, Lz2/wy;-><init>(Ljava/util/List;Lz2/py;Lz2/sy;Lz2/my;ILz2/qx;Lz2/tw;Lz2/gx;III)V

    return-object v1
.end method

.method public OooO0o()Lz2/yw;
    .locals 1

    iget-object v0, p0, Lz2/wy;->OooO0Oo:Lz2/my;

    return-object v0
.end method

.method public OooO0o0(Lz2/qx;)Lz2/sx;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/wy;->OooO0O0:Lz2/py;

    iget-object v1, p0, Lz2/wy;->OooO0OO:Lz2/sy;

    iget-object v2, p0, Lz2/wy;->OooO0Oo:Lz2/my;

    invoke-virtual {p0, p1, v0, v1, v2}, Lz2/wy;->OooOO0O(Lz2/qx;Lz2/py;Lz2/sy;Lz2/my;)Lz2/sx;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oO(ILjava/util/concurrent/TimeUnit;)Lz2/lx$OooO00o;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-long v1, v1

    const-string v3, "timeout"

    move-object/from16 v4, p2

    invoke-static {v3, v1, v2, v4}, Lz2/zx;->OooO0o0(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v14

    new-instance v1, Lz2/wy;

    iget-object v5, v0, Lz2/wy;->OooO00o:Ljava/util/List;

    iget-object v6, v0, Lz2/wy;->OooO0O0:Lz2/py;

    iget-object v7, v0, Lz2/wy;->OooO0OO:Lz2/sy;

    iget-object v8, v0, Lz2/wy;->OooO0Oo:Lz2/my;

    iget v9, v0, Lz2/wy;->OooO0o0:I

    iget-object v10, v0, Lz2/wy;->OooO0o:Lz2/qx;

    iget-object v11, v0, Lz2/wy;->OooO0oO:Lz2/tw;

    iget-object v12, v0, Lz2/wy;->OooO0oo:Lz2/gx;

    iget v13, v0, Lz2/wy;->OooO:I

    iget v15, v0, Lz2/wy;->OooOO0O:I

    move-object v4, v1

    invoke-direct/range {v4 .. v15}, Lz2/wy;-><init>(Ljava/util/List;Lz2/py;Lz2/sy;Lz2/my;ILz2/qx;Lz2/tw;Lz2/gx;III)V

    return-object v1
.end method

.method public OooO0oo()I
    .locals 1

    iget v0, p0, Lz2/wy;->OooO:I

    return v0
.end method

.method public OooOO0()Lz2/sy;
    .locals 1

    iget-object v0, p0, Lz2/wy;->OooO0OO:Lz2/sy;

    return-object v0
.end method

.method public OooOO0O(Lz2/qx;Lz2/py;Lz2/sy;Lz2/my;)Lz2/sx;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lz2/wy;->OooO0o0:I

    iget-object v2, v0, Lz2/wy;->OooO00o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget v1, v0, Lz2/wy;->OooOO0o:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lz2/wy;->OooOO0o:I

    iget-object v1, v0, Lz2/wy;->OooO0OO:Lz2/sy;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_1

    iget-object v1, v0, Lz2/wy;->OooO0Oo:Lz2/my;

    invoke-virtual/range {p1 .. p1}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v4

    invoke-virtual {v1, v4}, Lz2/my;->OooOo0(Lz2/kx;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lz2/wy;->OooO00o:Ljava/util/List;

    iget v5, v0, Lz2/wy;->OooO0o0:I

    sub-int/2addr v5, v2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must retain the same host and port"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v1, v0, Lz2/wy;->OooO0OO:Lz2/sy;

    const-string v4, " must call proceed() exactly once"

    if-eqz v1, :cond_3

    iget v1, v0, Lz2/wy;->OooOO0o:I

    if-gt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lz2/wy;->OooO00o:Ljava/util/List;

    iget v6, v0, Lz2/wy;->OooO0o0:I

    sub-int/2addr v6, v2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    new-instance v1, Lz2/wy;

    iget-object v6, v0, Lz2/wy;->OooO00o:Ljava/util/List;

    iget v5, v0, Lz2/wy;->OooO0o0:I

    add-int/lit8 v10, v5, 0x1

    iget-object v12, v0, Lz2/wy;->OooO0oO:Lz2/tw;

    iget-object v13, v0, Lz2/wy;->OooO0oo:Lz2/gx;

    iget v14, v0, Lz2/wy;->OooO:I

    iget v15, v0, Lz2/wy;->OooOO0:I

    iget v11, v0, Lz2/wy;->OooOO0O:I

    move-object v5, v1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v16, v11

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v16}, Lz2/wy;-><init>(Ljava/util/List;Lz2/py;Lz2/sy;Lz2/my;ILz2/qx;Lz2/tw;Lz2/gx;III)V

    iget-object v5, v0, Lz2/wy;->OooO00o:Ljava/util/List;

    iget v6, v0, Lz2/wy;->OooO0o0:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz2/lx;

    invoke-interface {v5, v1}, Lz2/lx;->intercept(Lz2/lx$OooO00o;)Lz2/sx;

    move-result-object v6

    if-eqz p3, :cond_5

    iget v7, v0, Lz2/wy;->OooO0o0:I

    add-int/2addr v7, v2

    iget-object v8, v0, Lz2/wy;->OooO00o:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget v1, v1, Lz2/wy;->OooOO0o:I

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    const-string v1, "interceptor "

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v2

    if-eqz v2, :cond_6

    return-object v6

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a response with no body"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public OooOO0o()Lz2/py;
    .locals 1

    iget-object v0, p0, Lz2/wy;->OooO0O0:Lz2/py;

    return-object v0
.end method

.method public call()Lz2/tw;
    .locals 1

    iget-object v0, p0, Lz2/wy;->OooO0oO:Lz2/tw;

    return-object v0
.end method

.method public request()Lz2/qx;
    .locals 1

    iget-object v0, p0, Lz2/wy;->OooO0o:Lz2/qx;

    return-object v0
.end method
