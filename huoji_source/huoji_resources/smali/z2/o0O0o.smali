.class public Lz2/o0O0o;
.super Lz2/i1;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lz2/o0oOOo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/i1<",
        "Lz2/o0O0o<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;",
        "Lz2/o0oOOo<",
        "Lz2/o0O0o<",
        "TTranscodeType;>;>;"
    }
.end annotation


# static fields
.field public static final o0000oO0:Lz2/p1;


# instance fields
.field private final o0000O:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final o0000O0O:Landroid/content/Context;

.field private final o0000OO:Lz2/o0O00o0;

.field private final o0000OO0:Lz2/o00Oo00;

.field private o0000OOO:Lz2/o0O00000;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O00000<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private o0000OOo:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o0000Oo:Lz2/o0O0o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private o0000Oo0:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/o1<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private o0000OoO:Lz2/o0O0o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private o0000o:Z

.field private o0000o0:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o0000o0O:Z

.field private o0000o0o:Z

.field private final o000OO:Lz2/o0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    sget-object v1, Lz2/o0oo0000;->OooO0OO:Lz2/o0oo0000;

    invoke-virtual {v0, v1}, Lz2/i1;->OooOOoo(Lz2/o0oo0000;)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lz2/i1;->o0OO00O(Lcom/bumptech/glide/Priority;)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lz2/i1;->o00000O0(Z)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    sput-object v0, Lz2/o0O0o;->o0000oO0:Lz2/p1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lz2/o0O0o;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lz2/o0O0o<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p2, Lz2/o0O0o;->o0000OO0:Lz2/o00Oo00;

    iget-object v1, p2, Lz2/o0O0o;->o000OO:Lz2/o0;

    iget-object v2, p2, Lz2/o0O0o;->o0000O0O:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, v2}, Lz2/o0O0o;-><init>(Lz2/o00Oo00;Lz2/o0;Ljava/lang/Class;Landroid/content/Context;)V

    iget-object p1, p2, Lz2/o0O0o;->o0000OOo:Ljava/lang/Object;

    iput-object p1, p0, Lz2/o0O0o;->o0000OOo:Ljava/lang/Object;

    iget-boolean p1, p2, Lz2/o0O0o;->o0000o0o:Z

    iput-boolean p1, p0, Lz2/o0O0o;->o0000o0o:Z

    invoke-virtual {p0, p2}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    return-void
.end method

.method public constructor <init>(Lz2/o00Oo00;Lz2/o0;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lz2/o00Oo00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o00Oo00;",
            "Lz2/o0;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/i1;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/o0O0o;->o0000o0O:Z

    iput-object p1, p0, Lz2/o0O0o;->o0000OO0:Lz2/o00Oo00;

    iput-object p2, p0, Lz2/o0O0o;->o000OO:Lz2/o0;

    iput-object p3, p0, Lz2/o0O0o;->o0000O:Ljava/lang/Class;

    iput-object p4, p0, Lz2/o0O0o;->o0000O0O:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lz2/o0;->OooOo0o(Ljava/lang/Class;)Lz2/o0O00000;

    move-result-object p3

    iput-object p3, p0, Lz2/o0O0o;->o0000OOO:Lz2/o0O00000;

    invoke-virtual {p1}, Lz2/o00Oo00;->OooOO0()Lz2/o0O00o0;

    move-result-object p1

    iput-object p1, p0, Lz2/o0O0o;->o0000OO:Lz2/o0O00o0;

    invoke-virtual {p2}, Lz2/o0;->OooOo0()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/o0O0o;->o0000o0(Ljava/util/List;)V

    invoke-virtual {p2}, Lz2/o0;->OooOo0O()Lz2/p1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    return-void
.end method

.method private o0000O(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/m1;Lz2/o0O00000;Lcom/bumptech/glide/Priority;IILz2/i1;Ljava/util/concurrent/Executor;)Lz2/l1;
    .locals 21
    .param p2    # Lz2/o1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lz2/m1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lz2/o1<",
            "TTranscodeType;>;",
            "Lz2/m1;",
            "Lz2/o0O00000<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lz2/i1<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lz2/l1;"
        }
    .end annotation

    move-object/from16 v10, p0

    iget-object v0, v10, Lz2/o0O0o;->o0000OoO:Lz2/o0O0o;

    if-eqz v0, :cond_0

    new-instance v0, Lz2/j1;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lz2/j1;-><init>(Lz2/m1;)V

    move-object v3, v0

    move-object v15, v3

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    const/4 v0, 0x0

    move-object v15, v0

    move-object v3, v1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lz2/o0O0o;->o0000OO0(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/m1;Lz2/o0O00000;Lcom/bumptech/glide/Priority;IILz2/i1;Ljava/util/concurrent/Executor;)Lz2/l1;

    move-result-object v0

    if-nez v15, :cond_1

    return-object v0

    :cond_1
    iget-object v1, v10, Lz2/o0O0o;->o0000OoO:Lz2/o0O0o;

    invoke-virtual {v1}, Lz2/i1;->Oooo0oO()I

    move-result v1

    iget-object v2, v10, Lz2/o0O0o;->o0000OoO:Lz2/o0O0o;

    invoke-virtual {v2}, Lz2/i1;->Oooo0o()I

    move-result v2

    invoke-static/range {p6 .. p7}, Lz2/t2;->OooOo0O(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v10, Lz2/o0O0o;->o0000OoO:Lz2/o0O0o;

    invoke-virtual {v3}, Lz2/i1;->o0OoOo0()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p8 .. p8}, Lz2/i1;->Oooo0oO()I

    move-result v1

    invoke-virtual/range {p8 .. p8}, Lz2/i1;->Oooo0o()I

    move-result v2

    :cond_2
    move/from16 v17, v1

    move/from16 v18, v2

    iget-object v11, v10, Lz2/o0O0o;->o0000OoO:Lz2/o0O0o;

    iget-object v1, v11, Lz2/o0O0o;->o0000OOO:Lz2/o0O00000;

    invoke-virtual {v11}, Lz2/i1;->OoooO00()Lcom/bumptech/glide/Priority;

    move-result-object v16

    iget-object v2, v10, Lz2/o0O0o;->o0000OoO:Lz2/o0O0o;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v15

    move-object v3, v15

    move-object v15, v1

    move-object/from16 v19, v2

    move-object/from16 v20, p9

    invoke-direct/range {v11 .. v20}, Lz2/o0O0o;->o0000O(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/m1;Lz2/o0O00000;Lcom/bumptech/glide/Priority;IILz2/i1;Ljava/util/concurrent/Executor;)Lz2/l1;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lz2/j1;->OooOOo(Lz2/l1;Lz2/l1;)V

    return-object v3
.end method

.method private o0000OO0(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/m1;Lz2/o0O00000;Lcom/bumptech/glide/Priority;IILz2/i1;Ljava/util/concurrent/Executor;)Lz2/l1;
    .locals 21
    .param p3    # Lz2/m1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lz2/o1<",
            "TTranscodeType;>;",
            "Lz2/m1;",
            "Lz2/o0O00000<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lz2/i1<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lz2/l1;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v4, p3

    move-object/from16 v11, p5

    iget-object v0, v10, Lz2/o0O0o;->o0000Oo:Lz2/o0O0o;

    if-eqz v0, :cond_4

    iget-boolean v1, v10, Lz2/o0O0o;->o0000o:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lz2/o0O0o;->o0000OOO:Lz2/o0O00000;

    iget-boolean v2, v0, Lz2/o0O0o;->o0000o0O:Z

    if-eqz v2, :cond_0

    move-object/from16 v15, p4

    goto :goto_0

    :cond_0
    move-object v15, v1

    :goto_0
    invoke-virtual {v0}, Lz2/i1;->Ooooo0o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v10, Lz2/o0O0o;->o0000Oo:Lz2/o0O0o;

    invoke-virtual {v0}, Lz2/i1;->OoooO00()Lcom/bumptech/glide/Priority;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-direct {v10, v11}, Lz2/o0O0o;->o0000OoO(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v0

    :goto_1
    move-object/from16 v16, v0

    iget-object v0, v10, Lz2/o0O0o;->o0000Oo:Lz2/o0O0o;

    invoke-virtual {v0}, Lz2/i1;->Oooo0oO()I

    move-result v0

    iget-object v1, v10, Lz2/o0O0o;->o0000Oo:Lz2/o0O0o;

    invoke-virtual {v1}, Lz2/i1;->Oooo0o()I

    move-result v1

    invoke-static/range {p6 .. p7}, Lz2/t2;->OooOo0O(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v10, Lz2/o0O0o;->o0000Oo:Lz2/o0O0o;

    invoke-virtual {v2}, Lz2/i1;->o0OoOo0()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p8 .. p8}, Lz2/i1;->Oooo0oO()I

    move-result v0

    invoke-virtual/range {p8 .. p8}, Lz2/i1;->Oooo0o()I

    move-result v1

    :cond_2
    move/from16 v17, v0

    move/from16 v18, v1

    new-instance v14, Lz2/r1;

    invoke-direct {v14, v4}, Lz2/r1;-><init>(Lz2/m1;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v14

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lz2/o0O0o;->o000O0(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/i1;Lz2/m1;Lz2/o0O00000;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lz2/l1;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v10, Lz2/o0O0o;->o0000o:Z

    iget-object v1, v10, Lz2/o0O0o;->o0000Oo:Lz2/o0O0o;

    move-object v11, v1

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v2, v14

    move-object/from16 v19, v1

    move-object/from16 v20, p9

    invoke-direct/range {v11 .. v20}, Lz2/o0O0o;->o0000O(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/m1;Lz2/o0O00000;Lcom/bumptech/glide/Priority;IILz2/i1;Ljava/util/concurrent/Executor;)Lz2/l1;

    move-result-object v1

    const/4 v3, 0x0

    iput-boolean v3, v10, Lz2/o0O0o;->o0000o:Z

    invoke-virtual {v2, v0, v1}, Lz2/r1;->OooOOo0(Lz2/l1;Lz2/l1;)V

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, v10, Lz2/o0O0o;->o0000o0:Ljava/lang/Float;

    if-eqz v0, :cond_5

    new-instance v12, Lz2/r1;

    invoke-direct {v12, v4}, Lz2/r1;-><init>(Lz2/m1;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lz2/o0O0o;->o000O0(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/i1;Lz2/m1;Lz2/o0O00000;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lz2/l1;

    move-result-object v13

    invoke-virtual/range {p8 .. p8}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    iget-object v1, v10, Lz2/o0O0o;->o0000o0:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lz2/i1;->o00000(F)Lz2/i1;

    move-result-object v3

    invoke-direct {v10, v11}, Lz2/o0O0o;->o0000OoO(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v9}, Lz2/o0O0o;->o000O0(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/i1;Lz2/m1;Lz2/o0O00000;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lz2/l1;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lz2/r1;->OooOOo0(Lz2/l1;Lz2/l1;)V

    return-object v12

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lz2/o0O0o;->o000O0(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/i1;Lz2/m1;Lz2/o0O00000;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lz2/l1;

    move-result-object v0

    return-object v0
.end method

.method private o0000OoO(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .locals 2
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/o0O0o$OooO00o;->OooO0O0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/i1;->OoooO00()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    return-object p1

    :cond_2
    sget-object p1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    return-object p1

    :cond_3
    sget-object p1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    return-object p1
.end method

.method private o0000o(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/i1;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;",
            "Lz2/o1<",
            "TTranscodeType;>;",
            "Lz2/i1<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lz2/o0O0o;->o0000o0o:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lz2/o0O0o;->o000OO(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/i1;Ljava/util/concurrent/Executor;)Lz2/l1;

    move-result-object p2

    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lz2/l1;

    move-result-object p4

    invoke-interface {p2, p4}, Lz2/l1;->OooO0OO(Lz2/l1;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3, p4}, Lz2/o0O0o;->o0000oOo(Lz2/i1;Lz2/l1;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p2}, Lz2/l1;->recycle()V

    invoke-static {p4}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz2/l1;

    invoke-interface {p2}, Lz2/l1;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p4}, Lz2/l1;->OooO()V

    :cond_0
    return-object p1

    :cond_1
    iget-object p3, p0, Lz2/o0O0o;->o000OO:Lz2/o0;

    invoke-virtual {p3, p1}, Lz2/o0;->OooOOo(Lcom/bumptech/glide/request/target/Target;)V

    invoke-interface {p1, p2}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lz2/l1;)V

    iget-object p3, p0, Lz2/o0O0o;->o000OO:Lz2/o0;

    invoke-virtual {p3, p1, p2}, Lz2/o0;->Oooo0oo(Lcom/bumptech/glide/request/target/Target;Lz2/l1;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private o0000o0(Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/o1<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o1;

    invoke-virtual {p0, v0}, Lz2/o0O0o;->o0000O0(Lz2/o1;)Lz2/o0O0o;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o0000oOo(Lz2/i1;Lz2/l1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/i1<",
            "*>;",
            "Lz2/l1;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Lz2/i1;->Ooooo00()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lz2/l1;->OooOO0O()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private o000O0(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/i1;Lz2/m1;Lz2/o0O00000;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lz2/l1;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lz2/o1<",
            "TTranscodeType;>;",
            "Lz2/i1<",
            "*>;",
            "Lz2/m1;",
            "Lz2/o0O00000<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lz2/l1;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lz2/o0O0o;->o0000O0O:Landroid/content/Context;

    iget-object v2, v0, Lz2/o0O0o;->o0000OO:Lz2/o0O00o0;

    iget-object v3, v0, Lz2/o0O0o;->o0000OOo:Ljava/lang/Object;

    iget-object v4, v0, Lz2/o0O0o;->o0000O:Ljava/lang/Class;

    iget-object v11, v0, Lz2/o0O0o;->o0000Oo0:Ljava/util/List;

    invoke-virtual {v2}, Lz2/o0O00o0;->OooO0o()Lz2/ooo0Oo0;

    move-result-object v13

    invoke-virtual/range {p5 .. p5}, Lz2/o0O00000;->OooO0OO()Lz2/y1;

    move-result-object v14

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    move-object/from16 v15, p9

    invoke-static/range {v1 .. v15}, Lcom/bumptech/glide/request/SingleRequest;->OooOoO(Landroid/content/Context;Lz2/o0O00o0;Ljava/lang/Object;Ljava/lang/Class;Lz2/i1;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lz2/o1;Ljava/util/List;Lz2/m1;Lz2/ooo0Oo0;Lz2/y1;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/SingleRequest;

    move-result-object v1

    return-object v1
.end method

.method private o000O00O(Ljava/lang/Object;)Lz2/o0O0o;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o0O0o;->o0000OOo:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/o0O0o;->o0000o0o:Z

    return-object p0
.end method

.method private o000OO(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/i1;Ljava/util/concurrent/Executor;)Lz2/l1;
    .locals 10
    .param p2    # Lz2/o1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lz2/o1<",
            "TTranscodeType;>;",
            "Lz2/i1<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lz2/l1;"
        }
    .end annotation

    iget-object v4, p0, Lz2/o0O0o;->o0000OOO:Lz2/o0O00000;

    invoke-virtual {p3}, Lz2/i1;->OoooO00()Lcom/bumptech/glide/Priority;

    move-result-object v5

    invoke-virtual {p3}, Lz2/i1;->Oooo0oO()I

    move-result v6

    invoke-virtual {p3}, Lz2/i1;->Oooo0o()I

    move-result v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lz2/o0O0o;->o0000O(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/m1;Lz2/o0O00000;Lcom/bumptech/glide/Priority;IILz2/i1;Ljava/util/concurrent/Executor;)Lz2/l1;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic OooO(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o000O0O(Ljava/lang/String;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO00o(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o000Oo0(Ljava/net/URL;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0O0(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o000O000(Landroid/net/Uri;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0OO([B)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o000O00([B)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0Oo(Ljava/io/File;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o000OoO(Ljava/io/File;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0o(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o0000ooO(Landroid/graphics/Bitmap;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0o0(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o000(Landroid/graphics/drawable/Drawable;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0oO(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o000Ooo(Ljava/lang/Object;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0oo(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o000O0o(Ljava/lang/Integer;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOO0O(Lz2/i1;)Lz2/i1;
    .locals 0
    .param p1    # Lz2/i1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOOOo()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-virtual {p0}, Lz2/o0O0o;->o0000OO()Lz2/o0O0o;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/o0O0o;->o0000OO()Lz2/o0O0o;

    move-result-object v0

    return-object v0
.end method

.method public o000(Landroid/graphics/drawable/Drawable;)Lz2/o0O0o;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/o0O0o;->o000O00O(Ljava/lang/Object;)Lz2/o0O0o;

    move-result-object p1

    sget-object v0, Lz2/o0oo0000;->OooO0O0:Lz2/o0oo0000;

    invoke-static {v0}, Lz2/p1;->o0000OO(Lz2/o0oo0000;)Lz2/p1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public o0000O0(Lz2/o1;)Lz2/o0O0o;
    .locals 1
    .param p1    # Lz2/o1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o1<",
            "TTranscodeType;>;)",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lz2/o0O0o;->o0000Oo0:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/o0O0o;->o0000Oo0:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lz2/o0O0o;->o0000Oo0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public o0000O0O(Lz2/i1;)Lz2/o0O0o;
    .locals 0
    .param p1    # Lz2/i1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/i1<",
            "*>;)",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lz2/i1;->OooOO0O(Lz2/i1;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/o0O0o;

    return-object p1
.end method

.method public o0000OO()Lz2/o0O0o;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/o0O0o;

    iget-object v1, v0, Lz2/o0O0o;->o0000OOO:Lz2/o0O00000;

    invoke-virtual {v1}, Lz2/o0O00000;->OooO00o()Lz2/o0O00000;

    move-result-object v1

    iput-object v1, v0, Lz2/o0O0o;->o0000OOO:Lz2/o0O00000;

    return-object v0
.end method

.method public o0000OOO(II)Lz2/k1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lz2/k1<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lz2/o0O0o;->o0000Oo()Lz2/o0O0o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lz2/o0O0o;->o000O0o0(II)Lz2/k1;

    move-result-object p1

    return-object p1
.end method

.method public o0000OOo(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lz2/o0O0o;->o0000Oo()Lz2/o0O0o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/o0O0o;->o0000o0o(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public o0000Oo()Lz2/o0O0o;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/o0O0o<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lz2/o0O0o;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lz2/o0O0o;-><init>(Ljava/lang/Class;Lz2/o0O0o;)V

    sget-object v1, Lz2/o0O0o;->o0000oO0:Lz2/p1;

    invoke-virtual {v0, v1}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object v0

    return-object v0
.end method

.method public o0000Oo0(Lz2/o0O0o;)Lz2/o0O0o;
    .locals 0
    .param p1    # Lz2/o0O0o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0o<",
            "TTranscodeType;>;)",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o0O0o;->o0000OoO:Lz2/o0O0o;

    return-object p0
.end method

.method public o0000o0O(II)Lz2/k1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lz2/k1<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lz2/o0O0o;->o000O0o0(II)Lz2/k1;

    move-result-object p1

    return-object p1
.end method

.method public o0000o0o(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .locals 2
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    invoke-static {}, Lz2/l2;->OooO0O0()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lz2/o0O0o;->o0000oO0(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public o0000oO0(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/Target;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;",
            "Lz2/o1<",
            "TTranscodeType;>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p0, p3}, Lz2/o0O0o;->o0000o(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/i1;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public o0000oOO(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    .locals 3
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/ViewTarget<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {}, Lz2/t2;->OooO0O0()V

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lz2/i1;->Ooooooo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->Oooooo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lz2/o0O0o$OooO00o;->OooO00o:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i1;->o00ooo()Lz2/i1;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i1;->o00Ooo()Lz2/i1;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i1;->o00Oo0()Lz2/i1;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    :goto_1
    iget-object v1, p0, Lz2/o0O0o;->o0000OO:Lz2/o0O00o0;

    iget-object v2, p0, Lz2/o0O0o;->o0000O:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lz2/o0O00o0;->OooO00o(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {}, Lz2/l2;->OooO0O0()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {p0, p1, v1, v0, v2}, Lz2/o0O0o;->o0000o(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Lz2/i1;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/target/ViewTarget;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public o0000oo0(Lz2/o1;)Lz2/o0O0o;
    .locals 1
    .param p1    # Lz2/o1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o1<",
            "TTranscodeType;>;)",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o0O0o;->o0000Oo0:Ljava/util/List;

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o0000O0(Lz2/o1;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public o0000ooO(Landroid/graphics/Bitmap;)Lz2/o0O0o;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/o0O0o;->o000O00O(Ljava/lang/Object;)Lz2/o0O0o;

    move-result-object p1

    sget-object v0, Lz2/o0oo0000;->OooO0O0:Lz2/o0oo0000;

    invoke-static {v0}, Lz2/p1;->o0000OO(Lz2/o0oo0000;)Lz2/p1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public varargs o000O([Lz2/o0O0o;)Lz2/o0O0o;
    .locals 3
    .param p1    # [Lz2/o0O0o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lz2/o0O0o<",
            "TTranscodeType;>;)",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Lz2/o0O0o;->o000O0oo(Lz2/o0O0o;)Lz2/o0O0o;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lz2/o0O0o;->o000O0oo(Lz2/o0O0o;)Lz2/o0O0o;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lz2/o0O0o;->o000O0oo(Lz2/o0O0o;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public o000O00([B)Lz2/o0O0o;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/o0O0o;->o000O00O(Ljava/lang/Object;)Lz2/o0O0o;

    move-result-object p1

    invoke-virtual {p1}, Lz2/i1;->OoooOoO()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lz2/o0oo0000;->OooO0O0:Lz2/o0oo0000;

    invoke-static {v0}, Lz2/p1;->o0000OO(Lz2/o0oo0000;)Lz2/p1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Lz2/i1;->Oooooo0()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lz2/p1;->o000Ooo(Z)Lz2/p1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public o000O000(Landroid/net/Uri;)Lz2/o0O0o;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/o0O0o;->o000O00O(Ljava/lang/Object;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public o000O0O(Ljava/lang/String;)Lz2/o0O0o;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/o0O0o;->o000O00O(Ljava/lang/Object;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public o000O0O0()Lz2/k1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/k1<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, v0}, Lz2/o0O0o;->o000O0o0(II)Lz2/k1;

    move-result-object v0

    return-object v0
.end method

.method public o000O0Oo()Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, v0}, Lz2/o0O0o;->o000OO0O(II)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public o000O0o(Ljava/lang/Integer;)Lz2/o0O0o;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/o0O0o;->o000O00O(Ljava/lang/Object;)Lz2/o0O0o;

    move-result-object p1

    iget-object v0, p0, Lz2/o0O0o;->o0000O0O:Landroid/content/Context;

    invoke-static {v0}, Lz2/d2;->OooO0OO(Landroid/content/Context;)Lz2/o0O0O0Oo;

    move-result-object v0

    invoke-static {v0}, Lz2/p1;->o000OoO(Lz2/o0O0O0Oo;)Lz2/p1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public o000O0o0(II)Lz2/k1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lz2/k1<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lz2/n1;

    invoke-direct {v0, p1, p2}, Lz2/n1;-><init>(II)V

    invoke-static {}, Lz2/l2;->OooO00o()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0, v0, v0, p1}, Lz2/o0O0o;->o0000oO0(Lcom/bumptech/glide/request/target/Target;Lz2/o1;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    check-cast p1, Lz2/k1;

    return-object p1
.end method

.method public o000O0oO(F)Lz2/o0O0o;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lz2/o0O0o;->o0000o0:Ljava/lang/Float;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o000O0oo(Lz2/o0O0o;)Lz2/o0O0o;
    .locals 0
    .param p1    # Lz2/o0O0o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0o<",
            "TTranscodeType;>;)",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o0O0o;->o0000Oo:Lz2/o0O0o;

    return-object p0
.end method

.method public o000OO00(Lz2/o0O00000;)Lz2/o0O0o;
    .locals 0
    .param p1    # Lz2/o0O00000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O00000<",
            "*-TTranscodeType;>;)",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o0O00000;

    iput-object p1, p0, Lz2/o0O0o;->o0000OOO:Lz2/o0O00000;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/o0O0o;->o0000o0O:Z

    return-object p0
.end method

.method public o000OO0O(II)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0O0o;->o000OO:Lz2/o0;

    invoke-static {v0, p1, p2}, Lcom/bumptech/glide/request/target/PreloadTarget;->obtain(Lz2/o0;II)Lcom/bumptech/glide/request/target/PreloadTarget;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o0000o0o(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public o000Oo0(Ljava/net/URL;)Lz2/o0O0o;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lz2/o0O0o;->o000O00O(Ljava/lang/Object;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public o000OoO(Ljava/io/File;)Lz2/o0O0o;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/o0O0o;->o000O00O(Ljava/lang/Object;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method

.method public o000Ooo(Ljava/lang/Object;)Lz2/o0O0o;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lz2/o0O0o<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/o0O0o;->o000O00O(Ljava/lang/Object;)Lz2/o0O0o;

    move-result-object p1

    return-object p1
.end method
