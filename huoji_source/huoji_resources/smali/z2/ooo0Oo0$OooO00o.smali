.class public Lz2/ooo0Oo0$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ooo0Oo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation


# instance fields
.field public final OooO00o:Lcom/bumptech/glide/load/engine/DecodeJob$OooO;

.field public final OooO0O0:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field private OooO0OO:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob$OooO;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/ooo0Oo0$OooO00o$OooO00o;

    invoke-direct {v0, p0}, Lz2/ooo0Oo0$OooO00o$OooO00o;-><init>(Lz2/ooo0Oo0$OooO00o;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lz2/v2;->OooO0o0(ILz2/v2$OooO0o;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lz2/ooo0Oo0$OooO00o;->OooO0O0:Landroidx/core/util/Pools$Pool;

    iput-object p1, p0, Lz2/ooo0Oo0$OooO00o;->OooO00o:Lcom/bumptech/glide/load/engine/DecodeJob$OooO;

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/o0O00o0;Ljava/lang/Object;Lz2/oO00000o;Lz2/o0O0O0Oo;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lz2/o0oo0000;Ljava/util/Map;ZZZLz2/o0O0OOO0;Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;)Lcom/bumptech/glide/load/engine/DecodeJob;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/o0O00o0;",
            "Ljava/lang/Object;",
            "Lz2/oO00000o;",
            "Lz2/o0O0O0Oo;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lz2/o0oo0000;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O0o000<",
            "*>;>;ZZZ",
            "Lz2/o0O0OOO0;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0<",
            "TR;>;)",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    iget-object v1, v0, Lz2/ooo0Oo0$OooO00o;->OooO0O0:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/DecodeJob;

    move-object/from16 p1, v1

    iget v1, v0, Lz2/ooo0Oo0$OooO00o;->OooO0OO:I

    move/from16 v18, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lz2/ooo0Oo0$OooO00o;->OooO0OO:I

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v18}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOOO(Lz2/o0O00o0;Ljava/lang/Object;Lz2/oO00000o;Lz2/o0O0O0Oo;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lz2/o0oo0000;Ljava/util/Map;ZZZLz2/o0O0OOO0;Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;I)Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v1

    return-object v1
.end method
