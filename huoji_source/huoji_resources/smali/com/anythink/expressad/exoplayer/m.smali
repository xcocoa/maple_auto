.class public final Lcom/anythink/expressad/exoplayer/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/anythink/expressad/exoplayer/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:I = -0x1

.field public static final b:J = 0x7fffffffffffffffL


# instance fields
.field public final A:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final B:I

.field private C:I

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Lcom/anythink/expressad/exoplayer/g/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:I

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final k:Lcom/anythink/expressad/exoplayer/d/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final l:J

.field public final m:I

.field public final n:I

.field public final o:F

.field public final p:I

.field public final q:F

.field public final r:I

.field public final s:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final t:Lcom/anythink/expressad/exoplayer/l/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/exoplayer/m$1;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/m$1;-><init>()V

    sput-object v0, Lcom/anythink/expressad/exoplayer/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->m:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->n:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->o:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->p:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->q:F

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/af;->a(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->s:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->r:I

    const-class v0, Lcom/anythink/expressad/exoplayer/l/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/l/b;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->t:Lcom/anythink/expressad/exoplayer/l/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->u:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->v:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->w:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->x:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->y:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->z:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->B:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/m;->l:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-class v0, Lcom/anythink/expressad/exoplayer/d/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/d/e;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    const-class v0, Lcom/anythink/expressad/exoplayer/g/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/g/a;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/m;->f:Lcom/anythink/expressad/exoplayer/g/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/anythink/expressad/exoplayer/l/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p26    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p27    # Lcom/anythink/expressad/exoplayer/g/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIFIF[BI",
            "Lcom/anythink/expressad/exoplayer/l/b;",
            "IIIIII",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/anythink/expressad/exoplayer/d/e;",
            "Lcom/anythink/expressad/exoplayer/g/a;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->c:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->g:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->e:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Lcom/anythink/expressad/exoplayer/m;->d:I

    move v1, p6

    iput v1, v0, Lcom/anythink/expressad/exoplayer/m;->i:I

    move v1, p7

    iput v1, v0, Lcom/anythink/expressad/exoplayer/m;->m:I

    move v1, p8

    iput v1, v0, Lcom/anythink/expressad/exoplayer/m;->n:I

    move v1, p9

    iput v1, v0, Lcom/anythink/expressad/exoplayer/m;->o:F

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, p10

    if-ne v3, v2, :cond_0

    const/4 v3, 0x0

    :cond_0
    iput v3, v0, Lcom/anythink/expressad/exoplayer/m;->p:I

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p11, v3

    if-nez v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move v3, p11

    :goto_0
    iput v3, v0, Lcom/anythink/expressad/exoplayer/m;->q:F

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/anythink/expressad/exoplayer/m;->s:[B

    move/from16 v3, p13

    iput v3, v0, Lcom/anythink/expressad/exoplayer/m;->r:I

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/anythink/expressad/exoplayer/m;->t:Lcom/anythink/expressad/exoplayer/l/b;

    move/from16 v3, p15

    iput v3, v0, Lcom/anythink/expressad/exoplayer/m;->u:I

    move/from16 v3, p16

    iput v3, v0, Lcom/anythink/expressad/exoplayer/m;->v:I

    move/from16 v3, p17

    iput v3, v0, Lcom/anythink/expressad/exoplayer/m;->w:I

    move/from16 v3, p18

    if-ne v3, v2, :cond_2

    const/4 v3, 0x0

    :cond_2
    iput v3, v0, Lcom/anythink/expressad/exoplayer/m;->x:I

    move/from16 v3, p19

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iput v1, v0, Lcom/anythink/expressad/exoplayer/m;->y:I

    move/from16 v1, p20

    iput v1, v0, Lcom/anythink/expressad/exoplayer/m;->z:I

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    move/from16 v1, p22

    iput v1, v0, Lcom/anythink/expressad/exoplayer/m;->B:I

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lcom/anythink/expressad/exoplayer/m;->l:J

    if-nez p25, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object/from16 v1, p25

    :goto_2
    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->f:Lcom/anythink/expressad/exoplayer/g/a;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/m;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    new-instance v28, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v28
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/anythink/expressad/exoplayer/m;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v10}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/anythink/expressad/exoplayer/d/e;JLjava/util/List;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-static/range {v0 .. v10}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/anythink/expressad/exoplayer/d/e;JLjava/util/List;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/anythink/expressad/exoplayer/l/b;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/anythink/expressad/exoplayer/l/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF[BI",
            "Lcom/anythink/expressad/exoplayer/l/b;",
            "Lcom/anythink/expressad/exoplayer/d/e;",
            ")",
            "Lcom/anythink/expressad/exoplayer/m;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v25, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v26, p14

    new-instance v28, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v28
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;
    .locals 15
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/anythink/expressad/exoplayer/d/e;",
            ")",
            "Lcom/anythink/expressad/exoplayer/m;"
        }
    .end annotation

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v14, p9

    invoke-static/range {v0 .. v14}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/anythink/expressad/exoplayer/l/b;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/anythink/expressad/exoplayer/m;
    .locals 31
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v21, p7

    move-object/from16 v22, p8

    new-instance v29, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v1, v29

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/m;->g:Ljava/lang/String;

    iget v7, v0, Lcom/anythink/expressad/exoplayer/m;->i:I

    iget v10, v0, Lcom/anythink/expressad/exoplayer/m;->o:F

    iget v11, v0, Lcom/anythink/expressad/exoplayer/m;->p:I

    iget v12, v0, Lcom/anythink/expressad/exoplayer/m;->q:F

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/m;->s:[B

    iget v14, v0, Lcom/anythink/expressad/exoplayer/m;->r:I

    iget-object v15, v0, Lcom/anythink/expressad/exoplayer/m;->t:Lcom/anythink/expressad/exoplayer/l/b;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->u:I

    move/from16 v16, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->v:I

    move/from16 v17, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->w:I

    move/from16 v18, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->x:I

    move/from16 v19, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->y:I

    move/from16 v20, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->B:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/m;->l:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->f:Lcom/anythink/expressad/exoplayer/g/a;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v29
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/m;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/anythink/expressad/exoplayer/d/e;",
            "Ljava/lang/String;",
            ")",
            "Lcom/anythink/expressad/exoplayer/m;"
        }
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Ljava/lang/String;Lcom/anythink/expressad/exoplayer/g/a;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Ljava/lang/String;Lcom/anythink/expressad/exoplayer/g/a;)Lcom/anythink/expressad/exoplayer/m;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/anythink/expressad/exoplayer/g/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/anythink/expressad/exoplayer/d/e;",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/exoplayer/g/a;",
            ")",
            "Lcom/anythink/expressad/exoplayer/m;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move-object/from16 v25, p7

    move-object/from16 v26, p8

    move-object/from16 v21, p9

    move-object/from16 v27, p10

    new-instance v28, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    invoke-direct/range {v0 .. v27}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/m;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/anythink/expressad/exoplayer/d/e;",
            "Ljava/lang/String;",
            ")",
            "Lcom/anythink/expressad/exoplayer/m;"
        }
    .end annotation

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v10}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/anythink/expressad/exoplayer/d/e;JLjava/util/List;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/anythink/expressad/exoplayer/d/e;JLjava/util/List;)Lcom/anythink/expressad/exoplayer/m;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/anythink/expressad/exoplayer/d/e;",
            "J",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/anythink/expressad/exoplayer/m;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v20, p4

    move-object/from16 v21, p5

    move/from16 v22, p6

    move-object/from16 v26, p7

    move-wide/from16 v23, p8

    move-object/from16 v25, p10

    new-instance v28, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v28
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/anythink/expressad/exoplayer/d/e;J)Lcom/anythink/expressad/exoplayer/m;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v10}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/anythink/expressad/exoplayer/d/e;JLjava/util/List;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/exoplayer/d/e;",
            ")",
            "Lcom/anythink/expressad/exoplayer/m;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v20, p4

    move-object/from16 v25, p5

    move-object/from16 v21, p6

    move-object/from16 v26, p7

    new-instance v28, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v26, p3

    new-instance v28, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v28
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/anythink/expressad/exoplayer/m;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIF",
            "Ljava/util/List<",
            "[B>;I)",
            "Lcom/anythink/expressad/exoplayer/m;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v25, p8

    move/from16 v20, p9

    new-instance v28, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v28
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/anythink/expressad/exoplayer/m;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "[B>;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/anythink/expressad/exoplayer/m;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move-object/from16 v25, p7

    move/from16 v20, p8

    move-object/from16 v21, p9

    new-instance v28, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v28
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/anythink/expressad/exoplayer/m;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    new-instance v28, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v28
.end method

.method private b(I)Lcom/anythink/expressad/exoplayer/m;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v11, p1

    new-instance v29, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/m;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/m;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/m;->e:Ljava/lang/String;

    iget v6, v0, Lcom/anythink/expressad/exoplayer/m;->d:I

    iget v7, v0, Lcom/anythink/expressad/exoplayer/m;->i:I

    iget v8, v0, Lcom/anythink/expressad/exoplayer/m;->m:I

    iget v9, v0, Lcom/anythink/expressad/exoplayer/m;->n:I

    iget v10, v0, Lcom/anythink/expressad/exoplayer/m;->o:F

    iget v12, v0, Lcom/anythink/expressad/exoplayer/m;->q:F

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/m;->s:[B

    iget v14, v0, Lcom/anythink/expressad/exoplayer/m;->r:I

    iget-object v15, v0, Lcom/anythink/expressad/exoplayer/m;->t:Lcom/anythink/expressad/exoplayer/l/b;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->u:I

    move/from16 v16, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->v:I

    move/from16 v17, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->w:I

    move/from16 v18, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->x:I

    move/from16 v19, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->y:I

    move/from16 v20, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->z:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->B:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/m;->l:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->f:Lcom/anythink/expressad/exoplayer/g/a;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v29
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;
    .locals 15
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/anythink/expressad/exoplayer/d/e;",
            ")",
            "Lcom/anythink/expressad/exoplayer/m;"
        }
    .end annotation

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v14, p9

    invoke-static/range {v0 .. v14}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/anythink/expressad/exoplayer/l/b;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/anythink/expressad/exoplayer/m;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    new-instance v28, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v28
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/anythink/expressad/exoplayer/m;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    new-instance v28, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v28
.end method

.method public static c(Lcom/anythink/expressad/exoplayer/m;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/m;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/m;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lcom/anythink/expressad/exoplayer/m;->m:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/anythink/expressad/exoplayer/m;->n:I

    if-eq v1, v2, :cond_2

    const-string v1, ", res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/m;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/m;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lcom/anythink/expressad/exoplayer/m;->o:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_3

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/m;->o:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Lcom/anythink/expressad/exoplayer/m;->u:I

    if-eq v1, v2, :cond_4

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/m;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Lcom/anythink/expressad/exoplayer/m;->v:I

    if-eq v1, v2, :cond_5

    const-string v1, ", sample_rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/m;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget v0, p0, Lcom/anythink/expressad/exoplayer/m;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->n:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v0, v0, v2

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final a(I)Lcom/anythink/expressad/exoplayer/m;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v7, p1

    new-instance v29, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/m;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/m;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/m;->e:Ljava/lang/String;

    iget v6, v0, Lcom/anythink/expressad/exoplayer/m;->d:I

    iget v8, v0, Lcom/anythink/expressad/exoplayer/m;->m:I

    iget v9, v0, Lcom/anythink/expressad/exoplayer/m;->n:I

    iget v10, v0, Lcom/anythink/expressad/exoplayer/m;->o:F

    iget v11, v0, Lcom/anythink/expressad/exoplayer/m;->p:I

    iget v12, v0, Lcom/anythink/expressad/exoplayer/m;->q:F

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/m;->s:[B

    iget v14, v0, Lcom/anythink/expressad/exoplayer/m;->r:I

    iget-object v15, v0, Lcom/anythink/expressad/exoplayer/m;->t:Lcom/anythink/expressad/exoplayer/l/b;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->u:I

    move/from16 v16, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->v:I

    move/from16 v17, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->w:I

    move/from16 v18, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->x:I

    move/from16 v19, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->y:I

    move/from16 v20, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->z:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->B:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/m;->l:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->f:Lcom/anythink/expressad/exoplayer/g/a;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v29
.end method

.method public final a(II)Lcom/anythink/expressad/exoplayer/m;
    .locals 30

    move-object/from16 v0, p0

    move/from16 v19, p1

    move/from16 v20, p2

    new-instance v29, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/m;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/m;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/m;->e:Ljava/lang/String;

    iget v6, v0, Lcom/anythink/expressad/exoplayer/m;->d:I

    iget v7, v0, Lcom/anythink/expressad/exoplayer/m;->i:I

    iget v8, v0, Lcom/anythink/expressad/exoplayer/m;->m:I

    iget v9, v0, Lcom/anythink/expressad/exoplayer/m;->n:I

    iget v10, v0, Lcom/anythink/expressad/exoplayer/m;->o:F

    iget v11, v0, Lcom/anythink/expressad/exoplayer/m;->p:I

    iget v12, v0, Lcom/anythink/expressad/exoplayer/m;->q:F

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/m;->s:[B

    iget v14, v0, Lcom/anythink/expressad/exoplayer/m;->r:I

    iget-object v15, v0, Lcom/anythink/expressad/exoplayer/m;->t:Lcom/anythink/expressad/exoplayer/l/b;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->u:I

    move/from16 v16, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->v:I

    move/from16 v17, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->w:I

    move/from16 v18, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->z:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->B:I

    move/from16 v23, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/m;->l:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->f:Lcom/anythink/expressad/exoplayer/g/a;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v28}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v29
.end method

.method public final a(J)Lcom/anythink/expressad/exoplayer/m;
    .locals 30

    move-object/from16 v0, p0

    move-wide/from16 v24, p1

    new-instance v29, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/m;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/m;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/m;->e:Ljava/lang/String;

    iget v6, v0, Lcom/anythink/expressad/exoplayer/m;->d:I

    iget v7, v0, Lcom/anythink/expressad/exoplayer/m;->i:I

    iget v8, v0, Lcom/anythink/expressad/exoplayer/m;->m:I

    iget v9, v0, Lcom/anythink/expressad/exoplayer/m;->n:I

    iget v10, v0, Lcom/anythink/expressad/exoplayer/m;->o:F

    iget v11, v0, Lcom/anythink/expressad/exoplayer/m;->p:I

    iget v12, v0, Lcom/anythink/expressad/exoplayer/m;->q:F

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/m;->s:[B

    iget v14, v0, Lcom/anythink/expressad/exoplayer/m;->r:I

    iget-object v15, v0, Lcom/anythink/expressad/exoplayer/m;->t:Lcom/anythink/expressad/exoplayer/l/b;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->u:I

    move/from16 v16, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->v:I

    move/from16 v17, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->w:I

    move/from16 v18, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->x:I

    move/from16 v19, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->y:I

    move/from16 v20, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->z:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->B:I

    move/from16 v23, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->f:Lcom/anythink/expressad/exoplayer/g/a;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v28}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v29
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/m;
    .locals 31
    .param p1    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v27, p1

    new-instance v29, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/m;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/m;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/m;->e:Ljava/lang/String;

    iget v6, v0, Lcom/anythink/expressad/exoplayer/m;->d:I

    iget v7, v0, Lcom/anythink/expressad/exoplayer/m;->i:I

    iget v8, v0, Lcom/anythink/expressad/exoplayer/m;->m:I

    iget v9, v0, Lcom/anythink/expressad/exoplayer/m;->n:I

    iget v10, v0, Lcom/anythink/expressad/exoplayer/m;->o:F

    iget v11, v0, Lcom/anythink/expressad/exoplayer/m;->p:I

    iget v12, v0, Lcom/anythink/expressad/exoplayer/m;->q:F

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/m;->s:[B

    iget v14, v0, Lcom/anythink/expressad/exoplayer/m;->r:I

    iget-object v15, v0, Lcom/anythink/expressad/exoplayer/m;->t:Lcom/anythink/expressad/exoplayer/l/b;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->u:I

    move/from16 v16, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->v:I

    move/from16 v17, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->w:I

    move/from16 v18, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->x:I

    move/from16 v19, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->y:I

    move/from16 v20, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->z:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->B:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/m;->l:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->f:Lcom/anythink/expressad/exoplayer/g/a;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v29
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/g/a;)Lcom/anythink/expressad/exoplayer/m;
    .locals 31
    .param p1    # Lcom/anythink/expressad/exoplayer/g/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v28, p1

    new-instance v29, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/m;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/m;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/m;->e:Ljava/lang/String;

    iget v6, v0, Lcom/anythink/expressad/exoplayer/m;->d:I

    iget v7, v0, Lcom/anythink/expressad/exoplayer/m;->i:I

    iget v8, v0, Lcom/anythink/expressad/exoplayer/m;->m:I

    iget v9, v0, Lcom/anythink/expressad/exoplayer/m;->n:I

    iget v10, v0, Lcom/anythink/expressad/exoplayer/m;->o:F

    iget v11, v0, Lcom/anythink/expressad/exoplayer/m;->p:I

    iget v12, v0, Lcom/anythink/expressad/exoplayer/m;->q:F

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/m;->s:[B

    iget v14, v0, Lcom/anythink/expressad/exoplayer/m;->r:I

    iget-object v15, v0, Lcom/anythink/expressad/exoplayer/m;->t:Lcom/anythink/expressad/exoplayer/l/b;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->u:I

    move/from16 v16, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->v:I

    move/from16 v17, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->w:I

    move/from16 v18, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->x:I

    move/from16 v19, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->y:I

    move/from16 v20, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->z:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->B:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/m;->l:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    move-object/from16 v27, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v29
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/m;)Lcom/anythink/expressad/exoplayer/m;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/m;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/m;->e:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/m;->e:Ljava/lang/String;

    :cond_1
    move-object v5, v3

    iget v3, v0, Lcom/anythink/expressad/exoplayer/m;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/anythink/expressad/exoplayer/m;->d:I

    :cond_2
    move v6, v3

    iget v3, v0, Lcom/anythink/expressad/exoplayer/m;->o:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v3, v4

    if-nez v4, :cond_3

    iget v3, v1, Lcom/anythink/expressad/exoplayer/m;->o:F

    :cond_3
    move v10, v3

    iget v3, v0, Lcom/anythink/expressad/exoplayer/m;->z:I

    iget v4, v1, Lcom/anythink/expressad/exoplayer/m;->z:I

    or-int v21, v3, v4

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    :cond_4
    move-object/from16 v22, v3

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    invoke-static {v1, v3}, Lcom/anythink/expressad/exoplayer/d/e;->a(Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/d/e;)Lcom/anythink/expressad/exoplayer/d/e;

    move-result-object v27

    new-instance v29, Lcom/anythink/expressad/exoplayer/m;

    move-object/from16 v1, v29

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/m;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    iget v7, v0, Lcom/anythink/expressad/exoplayer/m;->i:I

    iget v8, v0, Lcom/anythink/expressad/exoplayer/m;->m:I

    iget v9, v0, Lcom/anythink/expressad/exoplayer/m;->n:I

    iget v11, v0, Lcom/anythink/expressad/exoplayer/m;->p:I

    iget v12, v0, Lcom/anythink/expressad/exoplayer/m;->q:F

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/m;->s:[B

    iget v14, v0, Lcom/anythink/expressad/exoplayer/m;->r:I

    iget-object v15, v0, Lcom/anythink/expressad/exoplayer/m;->t:Lcom/anythink/expressad/exoplayer/l/b;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->u:I

    move/from16 v16, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->v:I

    move/from16 v17, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->w:I

    move/from16 v18, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->x:I

    move/from16 v19, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->y:I

    move/from16 v20, v1

    iget v1, v0, Lcom/anythink/expressad/exoplayer/m;->B:I

    move/from16 v23, v1

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    iget-wide v3, v0, Lcom/anythink/expressad/exoplayer/m;->l:J

    move-wide/from16 v24, v3

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/m;->f:Lcom/anythink/expressad/exoplayer/g/a;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-direct/range {v1 .. v28}, Lcom/anythink/expressad/exoplayer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/anythink/expressad/exoplayer/l/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/anythink/expressad/exoplayer/d/e;Lcom/anythink/expressad/exoplayer/g/a;)V

    return-object v29
.end method

.method public final b(Lcom/anythink/expressad/exoplayer/m;)Z
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lcom/anythink/expressad/exoplayer/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lcom/anythink/expressad/exoplayer/m;

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->d:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/m;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->i:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/m;->i:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->m:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/m;->m:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->n:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/m;->n:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->o:F

    iget v3, p1, Lcom/anythink/expressad/exoplayer/m;->o:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->p:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/m;->p:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->q:F

    iget v3, p1, Lcom/anythink/expressad/exoplayer/m;->q:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->r:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/m;->r:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->u:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/m;->u:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->v:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/m;->v:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->w:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/m;->w:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->x:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/m;->x:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->y:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/m;->y:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/m;->l:J

    iget-wide v4, p1, Lcom/anythink/expressad/exoplayer/m;->l:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->z:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/m;->z:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/anythink/expressad/exoplayer/m;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    iget-object v3, p1, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->B:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/m;->B:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/anythink/expressad/exoplayer/m;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/anythink/expressad/exoplayer/m;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    iget-object v3, p1, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    invoke-static {v2, v3}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->f:Lcom/anythink/expressad/exoplayer/g/a;

    iget-object v3, p1, Lcom/anythink/expressad/exoplayer/m;->f:Lcom/anythink/expressad/exoplayer/g/a;

    invoke-static {v2, v3}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->t:Lcom/anythink/expressad/exoplayer/l/b;

    iget-object v3, p1, Lcom/anythink/expressad/exoplayer/m;->t:Lcom/anythink/expressad/exoplayer/l/b;

    invoke-static {v2, v3}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->s:[B

    iget-object v3, p1, Lcom/anythink/expressad/exoplayer/m;->s:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/m;->b(Lcom/anythink/expressad/exoplayer/m;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/anythink/expressad/exoplayer/m;->C:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->g:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->e:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->m:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->n:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->u:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->v:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->B:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/d/e;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->f:Lcom/anythink/expressad/exoplayer/g/a;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/g/a;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/m;->C:I

    :cond_7
    iget v0, p0, Lcom/anythink/expressad/exoplayer/m;->C:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Format("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->o:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/anythink/expressad/exoplayer/m;->u:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/m;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/anythink/expressad/exoplayer/m;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/anythink/expressad/exoplayer/m;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/anythink/expressad/exoplayer/m;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/anythink/expressad/exoplayer/m;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/anythink/expressad/exoplayer/m;->o:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/anythink/expressad/exoplayer/m;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/anythink/expressad/exoplayer/m;->q:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->s:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/anythink/expressad/exoplayer/k/af;->a(Landroid/os/Parcel;Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->s:[B

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_1
    iget v0, p0, Lcom/anythink/expressad/exoplayer/m;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->t:Lcom/anythink/expressad/exoplayer/l/b;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/anythink/expressad/exoplayer/m;->u:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/anythink/expressad/exoplayer/m;->v:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/anythink/expressad/exoplayer/m;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/anythink/expressad/exoplayer/m;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/anythink/expressad/exoplayer/m;->y:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/anythink/expressad/exoplayer/m;->z:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/anythink/expressad/exoplayer/m;->B:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/m;->l:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/m;->f:Lcom/anythink/expressad/exoplayer/g/a;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
