.class public final Lcom/anythink/expressad/exoplayer/b/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/b/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/b/l$e;,
        Lcom/anythink/expressad/exoplayer/b/l$d;,
        Lcom/anythink/expressad/exoplayer/b/l$f;,
        Lcom/anythink/expressad/exoplayer/b/l$b;,
        Lcom/anythink/expressad/exoplayer/b/l$a;,
        Lcom/anythink/expressad/exoplayer/b/l$c;
    }
.end annotation


# static fields
.field public static b:Z = false

.field public static c:Z = false

.field private static final d:J = 0x3d090L

.field private static final e:J = 0xb71b0L

.field private static final f:J = 0x3d090L

.field private static final g:I = 0x4

.field private static final h:I = -0x2

.field private static final i:I = 0x0

.field private static final j:I = 0x1

.field private static final k:I = 0x1

.field private static final l:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final m:Ljava/lang/String; = "AudioTrack"

.field private static final n:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0x2


# instance fields
.field private A:Lcom/anythink/expressad/exoplayer/b/h$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private B:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private C:Landroid/media/AudioTrack;

.field private D:Z

.field private E:Z

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:Lcom/anythink/expressad/exoplayer/b/b;

.field private K:Z

.field private L:Z

.field private M:I

.field private N:Lcom/anythink/expressad/exoplayer/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private O:Lcom/anythink/expressad/exoplayer/v;

.field private P:J

.field private Q:J

.field private R:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private S:I

.field private T:I

.field private U:J

.field private V:J

.field private W:I

.field private X:J

.field private Y:J

.field private Z:I

.field private aa:I

.field private ab:J

.field private ac:F

.field private ad:[Lcom/anythink/expressad/exoplayer/b/f;

.field private ae:[Ljava/nio/ByteBuffer;

.field private af:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ag:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ah:[B

.field private ai:I

.field private aj:I

.field private ak:Z

.field private al:Z

.field private am:I

.field private an:Z

.field private ao:J

.field private final q:Lcom/anythink/expressad/exoplayer/b/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final r:Lcom/anythink/expressad/exoplayer/b/l$a;

.field private final s:Z

.field private final t:Lcom/anythink/expressad/exoplayer/b/k;

.field private final u:Lcom/anythink/expressad/exoplayer/b/u;

.field private final v:[Lcom/anythink/expressad/exoplayer/b/f;

.field private final w:[Lcom/anythink/expressad/exoplayer/b/f;

.field private final x:Landroid/os/ConditionVariable;

.field private final y:Lcom/anythink/expressad/exoplayer/b/j;

.field private final z:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/anythink/expressad/exoplayer/b/l$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/b/c;Lcom/anythink/expressad/exoplayer/b/l$a;)V
    .locals 6
    .param p1    # Lcom/anythink/expressad/exoplayer/b/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->q:Lcom/anythink/expressad/exoplayer/b/c;

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/b/l$a;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->r:Lcom/anythink/expressad/exoplayer/b/l$a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->s:Z

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->x:Landroid/os/ConditionVariable;

    new-instance v0, Lcom/anythink/expressad/exoplayer/b/j;

    new-instance v2, Lcom/anythink/expressad/exoplayer/b/l$e;

    invoke-direct {v2, p0, p1}, Lcom/anythink/expressad/exoplayer/b/l$e;-><init>(Lcom/anythink/expressad/exoplayer/b/l;B)V

    invoke-direct {v0, v2}, Lcom/anythink/expressad/exoplayer/b/j;-><init>(Lcom/anythink/expressad/exoplayer/b/j$a;)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->y:Lcom/anythink/expressad/exoplayer/b/j;

    new-instance v0, Lcom/anythink/expressad/exoplayer/b/k;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/b/k;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->t:Lcom/anythink/expressad/exoplayer/b/k;

    new-instance v2, Lcom/anythink/expressad/exoplayer/b/u;

    invoke-direct {v2}, Lcom/anythink/expressad/exoplayer/b/u;-><init>()V

    iput-object v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->u:Lcom/anythink/expressad/exoplayer/b/u;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/anythink/expressad/exoplayer/b/f;

    new-instance v5, Lcom/anythink/expressad/exoplayer/b/p;

    invoke-direct {v5}, Lcom/anythink/expressad/exoplayer/b/p;-><init>()V

    aput-object v5, v4, p1

    aput-object v0, v4, v1

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-interface {p2}, Lcom/anythink/expressad/exoplayer/b/l$a;->a()[Lcom/anythink/expressad/exoplayer/b/f;

    move-result-object p2

    invoke-static {v3, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lcom/anythink/expressad/exoplayer/b/f;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/anythink/expressad/exoplayer/b/f;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/b/l;->v:[Lcom/anythink/expressad/exoplayer/b/f;

    new-array p2, v1, [Lcom/anythink/expressad/exoplayer/b/f;

    new-instance v0, Lcom/anythink/expressad/exoplayer/b/n;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/b/n;-><init>()V

    aput-object v0, p2, p1

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/b/l;->w:[Lcom/anythink/expressad/exoplayer/b/f;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/anythink/expressad/exoplayer/b/l;->ac:F

    iput p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->aa:I

    sget-object p2, Lcom/anythink/expressad/exoplayer/b/b;->a:Lcom/anythink/expressad/exoplayer/b/b;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/b/l;->J:Lcom/anythink/expressad/exoplayer/b/b;

    iput p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    sget-object p2, Lcom/anythink/expressad/exoplayer/v;->a:Lcom/anythink/expressad/exoplayer/v;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    const/4 p2, -0x1

    iput p2, p0, Lcom/anythink/expressad/exoplayer/b/l;->aj:I

    new-array p2, p1, [Lcom/anythink/expressad/exoplayer/b/f;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/b/l;->ad:[Lcom/anythink/expressad/exoplayer/b/f;

    new-array p1, p1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->ae:[Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->z:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Lcom/anythink/expressad/exoplayer/b/c;[Lcom/anythink/expressad/exoplayer/b/f;)V
    .locals 1
    .param p1    # Lcom/anythink/expressad/exoplayer/b/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/expressad/exoplayer/b/l;-><init>(Lcom/anythink/expressad/exoplayer/b/c;[Lcom/anythink/expressad/exoplayer/b/f;B)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/b/c;[Lcom/anythink/expressad/exoplayer/b/f;B)V
    .locals 0
    .param p1    # Lcom/anythink/expressad/exoplayer/b/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance p3, Lcom/anythink/expressad/exoplayer/b/l$b;

    invoke-direct {p3, p2}, Lcom/anythink/expressad/exoplayer/b/l$b;-><init>([Lcom/anythink/expressad/exoplayer/b/f;)V

    invoke-direct {p0, p1, p3}, Lcom/anythink/expressad/exoplayer/b/l;-><init>(Lcom/anythink/expressad/exoplayer/b/c;Lcom/anythink/expressad/exoplayer/b/l$a;)V

    return-void
.end method

.method private static a(ILjava/nio/ByteBuffer;)I
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_5

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/anythink/expressad/exoplayer/b/a;->a()I

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/b/a;->a(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_2
    const/16 v0, 0xe

    if-ne p0, v0, :cond_4

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/b/a;->b(Ljava/nio/ByteBuffer;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-static {p1, p0}, Lcom/anythink/expressad/exoplayer/b/a;->a(Ljava/nio/ByteBuffer;I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    return p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unexpected audio encoding: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/b/m;->a(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method private static a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method private a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->R:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->R:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->R:Ljava/nio/ByteBuffer;

    const v1, 0x55550001

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->S:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->R:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->R:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    const-wide/16 v3, 0x3e8

    mul-long p4, p4, v3

    invoke-virtual {v0, v2, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object p4, p0, Lcom/anythink/expressad/exoplayer/b/l;->R:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput p3, p0, Lcom/anythink/expressad/exoplayer/b/l;->S:I

    :cond_1
    iget-object p4, p0, Lcom/anythink/expressad/exoplayer/b/l;->R:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    const/4 p5, 0x1

    if-lez p4, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->R:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, p4, p5}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-gez v0, :cond_2

    iput v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->S:I

    return v0

    :cond_2
    if-ge v0, p4, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1, p2, p3, p5}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    if-gez p1, :cond_4

    iput v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->S:I

    return p1

    :cond_4
    iget p2, p0, Lcom/anythink/expressad/exoplayer/b/l;->S:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/anythink/expressad/exoplayer/b/l;->S:I

    return p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/b/l;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/b/l;->x:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private a(J)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->ad:[Lcom/anythink/expressad/exoplayer/b/f;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->ae:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->af:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/anythink/expressad/exoplayer/b/f;->a:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    invoke-direct {p0, v2, p1, p2}, Lcom/anythink/expressad/exoplayer/b/l;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/b/l;->ad:[Lcom/anythink/expressad/exoplayer/b/f;

    aget-object v3, v3, v1

    invoke-interface {v3, v2}, Lcom/anythink/expressad/exoplayer/b/f;->a(Ljava/nio/ByteBuffer;)V

    invoke-interface {v3}, Lcom/anythink/expressad/exoplayer/b/f;->f()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->ae:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static a(Landroid/media/AudioTrack;F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method private b(J)J
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->z:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->z:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/b/l$d;

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/b/l$d;->b(Lcom/anythink/expressad/exoplayer/b/l$d;)J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->z:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/b/l$d;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/l$d;->a(Lcom/anythink/expressad/exoplayer/b/l$d;)Lcom/anythink/expressad/exoplayer/v;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/l$d;->b(Lcom/anythink/expressad/exoplayer/b/l$d;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->Q:J

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/l$d;->c(Lcom/anythink/expressad/exoplayer/b/l$d;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->ab:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->P:J

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/v;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->P:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->Q:J

    sub-long/2addr p1, v0

    return-wide p1

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->z:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->P:J

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->r:Lcom/anythink/expressad/exoplayer/b/l$a;

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/b/l;->Q:J

    sub-long/2addr p1, v3

    invoke-interface {v2, p1, p2}, Lcom/anythink/expressad/exoplayer/b/l$a;->a(J)J

    move-result-wide p1

    :goto_1
    add-long/2addr v0, p1

    return-wide v0

    :cond_3
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->P:J

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->Q:J

    sub-long/2addr p1, v2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/v;->b:F

    invoke-static {p1, p2, v2}, Lcom/anythink/expressad/exoplayer/k/af;->a(JF)J

    move-result-wide p1

    goto :goto_1
.end method

.method public static synthetic b(Lcom/anythink/expressad/exoplayer/b/l;)J
    .locals 2

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Landroid/media/AudioTrack;F)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private b(Ljava/nio/ByteBuffer;J)V
    .locals 12

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->ag:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->ag:Ljava/nio/ByteBuffer;

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    if-ge v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->ah:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->ah:[B

    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/b/l;->ah:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v3, p0, Lcom/anythink/expressad/exoplayer/b/l;->ai:I

    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    sget v4, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    if-ge v4, v1, :cond_6

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/b/l;->y:Lcom/anythink/expressad/exoplayer/b/j;

    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->X:J

    invoke-virtual {p2, v1, v2}, Lcom/anythink/expressad/exoplayer/b/j;->b(J)I

    move-result p2

    if-lez p2, :cond_9

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p3, p0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->ah:[B

    iget v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->ai:I

    invoke-virtual {p3, v1, v2, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    if-lez v3, :cond_9

    iget p2, p0, Lcom/anythink/expressad/exoplayer/b/l;->ai:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/anythink/expressad/exoplayer/b/l;->ai:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    :cond_6
    iget-boolean v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->an:Z

    if-eqz v1, :cond_8

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v4

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v7, p0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    move-object v6, p0

    move-object v8, p1

    move v9, v0

    move-wide v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/anythink/expressad/exoplayer/b/l;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v3

    goto :goto_3

    :cond_8
    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    invoke-virtual {p2, p1, v0, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v3

    :cond_9
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->ao:J

    if-ltz v3, :cond_d

    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->D:Z

    if-eqz p1, :cond_a

    iget-wide p2, p0, Lcom/anythink/expressad/exoplayer/b/l;->X:J

    int-to-long v1, v3

    add-long/2addr p2, v1

    iput-wide p2, p0, Lcom/anythink/expressad/exoplayer/b/l;->X:J

    :cond_a
    if-ne v3, v0, :cond_c

    if-nez p1, :cond_b

    iget-wide p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->Y:J

    iget p3, p0, Lcom/anythink/expressad/exoplayer/b/l;->Z:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->Y:J

    :cond_b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->ag:Ljava/nio/ByteBuffer;

    :cond_c
    return-void

    :cond_d
    new-instance p1, Lcom/anythink/expressad/exoplayer/b/h$d;

    invoke-direct {p1, v3}, Lcom/anythink/expressad/exoplayer/b/h$d;-><init>(I)V

    throw p1
.end method

.method private c(J)J
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->r:Lcom/anythink/expressad/exoplayer/b/l$a;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/b/l$a;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/b/l;->e(J)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public static synthetic c(Lcom/anythink/expressad/exoplayer/b/l;)J
    .locals 2

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method private d(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->F:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private static d(I)Landroid/media/AudioTrack;
    .locals 9

    new-instance v8, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0xfa0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v8

    move v7, p0

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v8
.end method

.method public static synthetic d(Lcom/anythink/expressad/exoplayer/b/l;)Lcom/anythink/expressad/exoplayer/b/h$c;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/b/l;->A:Lcom/anythink/expressad/exoplayer/b/h$c;

    return-object p0
.end method

.method private e(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->G:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public static synthetic e(Lcom/anythink/expressad/exoplayer/b/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->ao:J

    return-wide v0
.end method

.method private f(J)J
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->G:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private k()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->v()[Lcom/anythink/expressad/exoplayer/b/f;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/b/f;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/b/f;->h()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcom/anythink/expressad/exoplayer/b/f;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anythink/expressad/exoplayer/b/f;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->ad:[Lcom/anythink/expressad/exoplayer/b/f;

    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->ae:[Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->l()V

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->ad:[Lcom/anythink/expressad/exoplayer/b/f;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/b/f;->h()V

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->ae:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/b/f;->f()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private m()V
    .locals 10

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->x:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->t()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    sget-boolean v1, Lcom/anythink/expressad/exoplayer/b/l;->b:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->B:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->p()V

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->B:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    new-instance v9, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/16 v3, 0xfa0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v9

    move v8, v0

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v9, p0, Lcom/anythink/expressad/exoplayer/b/l;->B:Landroid/media/AudioTrack;

    :cond_1
    iget v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->A:Lcom/anythink/expressad/exoplayer/b/h$c;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/b/h$c;->a(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->L:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->r:Lcom/anythink/expressad/exoplayer/b/l$a;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/b/l$a;->a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/anythink/expressad/exoplayer/v;->a:Lcom/anythink/expressad/exoplayer/v;

    :goto_0
    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->k()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->y:Lcom/anythink/expressad/exoplayer/b/j;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    iget v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->I:I

    iget v3, p0, Lcom/anythink/expressad/exoplayer/b/l;->W:I

    iget v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->M:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/exoplayer/b/j;->a(Landroid/media/AudioTrack;III)V

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->o()V

    return-void
.end method

.method private n()Z
    .locals 9

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->aj:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->K:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->ad:[Lcom/anythink/expressad/exoplayer/b/f;

    array-length v0, v0

    :goto_0
    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->aj:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->aj:I

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/b/l;->ad:[Lcom/anythink/expressad/exoplayer/b/f;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/b/f;->e()V

    :cond_2
    invoke-direct {p0, v7, v8}, Lcom/anythink/expressad/exoplayer/b/l;->a(J)V

    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/b/f;->g()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->aj:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->ag:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    invoke-direct {p0, v0, v7, v8}, Lcom/anythink/expressad/exoplayer/b/l;->b(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->ag:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    :cond_5
    iput v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->aj:I

    return v2
.end method

.method private o()V
    .locals 2

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->ac:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->ac:F

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_1
    return-void
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->B:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->B:Landroid/media/AudioTrack;

    new-instance v1, Lcom/anythink/expressad/exoplayer/b/l$2;

    invoke-direct {v1, p0, v0}, Lcom/anythink/expressad/exoplayer/b/l$2;-><init>(Lcom/anythink/expressad/exoplayer/b/l;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private q()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private r()J
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->D:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->U:J

    iget v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->T:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->V:J

    return-wide v0
.end method

.method private s()J
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->D:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->X:J

    iget v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->W:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->Y:J

    return-wide v0
.end method

.method private t()Landroid/media/AudioTrack;
    .locals 10

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->an:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->J:Lcom/anythink/expressad/exoplayer/b/b;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/b/b;->a()Landroid/media/AudioAttributes;

    move-result-object v0

    :goto_0
    move-object v3, v0

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->H:I

    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->I:I

    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->G:I

    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v4

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    if-eqz v0, :cond_1

    move v7, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_1
    new-instance v0, Landroid/media/AudioTrack;

    iget v5, p0, Lcom/anythink/expressad/exoplayer/b/l;->M:I

    const/4 v6, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->J:Lcom/anythink/expressad/exoplayer/b/b;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/b/b;->d:I

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/af;->f(I)I

    move-result v3

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    if-nez v0, :cond_3

    new-instance v0, Landroid/media/AudioTrack;

    iget v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->G:I

    iget v5, p0, Lcom/anythink/expressad/exoplayer/b/l;->H:I

    iget v6, p0, Lcom/anythink/expressad/exoplayer/b/l;->I:I

    iget v7, p0, Lcom/anythink/expressad/exoplayer/b/l;->M:I

    const/4 v8, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/media/AudioTrack;

    iget v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->G:I

    iget v5, p0, Lcom/anythink/expressad/exoplayer/b/l;->H:I

    iget v6, p0, Lcom/anythink/expressad/exoplayer/b/l;->I:I

    iget v7, p0, Lcom/anythink/expressad/exoplayer/b/l;->M:I

    const/4 v8, 0x1

    iget v9, p0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    :goto_2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-ne v2, v1, :cond_4

    return-object v0

    :cond_4
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lcom/anythink/expressad/exoplayer/b/h$b;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->G:I

    iget v3, p0, Lcom/anythink/expressad/exoplayer/b/l;->H:I

    iget v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->M:I

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/anythink/expressad/exoplayer/b/h$b;-><init>(IIII)V

    throw v0
.end method

.method private u()Landroid/media/AudioTrack;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->an:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->J:Lcom/anythink/expressad/exoplayer/b/b;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/b/b;->a()Landroid/media/AudioAttributes;

    move-result-object v0

    :goto_0
    move-object v2, v0

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->H:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->I:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->G:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    if-eqz v0, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_1
    new-instance v0, Landroid/media/AudioTrack;

    iget v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->M:I

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0
.end method

.method private v()[Lcom/anythink/expressad/exoplayer/b/f;
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->w:[Lcom/anythink/expressad/exoplayer/b/f;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->v:[Lcom/anythink/expressad/exoplayer/b/f;

    return-object v0
.end method


# virtual methods
.method public final a(Z)J
    .locals 8

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->aa:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->y:Lcom/anythink/expressad/exoplayer/b/j;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/b/j;->a(Z)J

    move-result-wide v0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->s()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/anythink/expressad/exoplayer/b/l;->e(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->ab:J

    const/4 p1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->z:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->z:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/exoplayer/b/l$d;

    invoke-static {v4}, Lcom/anythink/expressad/exoplayer/b/l$d;->b(Lcom/anythink/expressad/exoplayer/b/l$d;)J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->z:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/b/l$d;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/b/l$d;->a(Lcom/anythink/expressad/exoplayer/b/l$d;)Lcom/anythink/expressad/exoplayer/v;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/b/l$d;->b(Lcom/anythink/expressad/exoplayer/b/l$d;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->Q:J

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/b/l$d;->c(Lcom/anythink/expressad/exoplayer/b/l$d;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/b/l;->ab:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->P:J

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    iget p1, p1, Lcom/anythink/expressad/exoplayer/v;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v4

    if-nez p1, :cond_3

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->P:J

    add-long/2addr v0, v4

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->Q:J

    sub-long/2addr v0, v4

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->z:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->P:J

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->r:Lcom/anythink/expressad/exoplayer/b/l$a;

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/b/l;->Q:J

    sub-long/2addr v0, v6

    invoke-interface {p1, v0, v1}, Lcom/anythink/expressad/exoplayer/b/l$a;->a(J)J

    move-result-wide v0

    goto :goto_1

    :cond_4
    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/b/l;->Q:J

    sub-long/2addr v0, v6

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    iget p1, p1, Lcom/anythink/expressad/exoplayer/v;->b:F

    invoke-static {v0, v1, p1}, Lcom/anythink/expressad/exoplayer/k/af;->a(JF)J

    move-result-wide v0

    :goto_1
    add-long/2addr v0, v4

    :goto_2
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->r:Lcom/anythink/expressad/exoplayer/b/l$a;

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/b/l$a;->b()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/anythink/expressad/exoplayer/b/l;->e(J)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-long/2addr v2, v0

    return-wide v2

    :cond_5
    :goto_3
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;
    .locals 1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->L:Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/anythink/expressad/exoplayer/v;->a:Lcom/anythink/expressad/exoplayer/v;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->N:Lcom/anythink/expressad/exoplayer/v;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->z:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->z:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/b/l$d;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/l$d;->a(Lcom/anythink/expressad/exoplayer/b/l$d;)Lcom/anythink/expressad/exoplayer/v;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->N:Lcom/anythink/expressad/exoplayer/v;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->r:Lcom/anythink/expressad/exoplayer/b/l$a;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/exoplayer/b/l$a;->a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    return-object p1
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->al:Z

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->y:Lcom/anythink/expressad/exoplayer/b/j;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/b/j;->a()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->ac:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->ac:F

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->o()V

    :cond_0
    return-void
.end method

.method public final a(III[III)V
    .locals 17
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move/from16 v0, p3

    iput v0, v1, Lcom/anythink/expressad/exoplayer/b/l;->F:I

    invoke-static/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/k/af;->b(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/anythink/expressad/exoplayer/b/l;->D:Z

    iget-boolean v2, v1, Lcom/anythink/expressad/exoplayer/b/l;->s:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/b/l;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/k/af;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/anythink/expressad/exoplayer/b/l;->E:Z

    iget-boolean v2, v1, Lcom/anythink/expressad/exoplayer/b/l;->D:Z

    if-eqz v2, :cond_1

    invoke-static/range {p1 .. p2}, Lcom/anythink/expressad/exoplayer/k/af;->b(II)I

    move-result v2

    iput v2, v1, Lcom/anythink/expressad/exoplayer/b/l;->T:I

    :cond_1
    iget-boolean v2, v1, Lcom/anythink/expressad/exoplayer/b/l;->D:Z

    const/4 v5, 0x4

    if-eqz v2, :cond_2

    move/from16 v2, p1

    if-eq v2, v5, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move/from16 v2, p1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_4

    iget-boolean v7, v1, Lcom/anythink/expressad/exoplayer/b/l;->E:Z

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    iput-boolean v7, v1, Lcom/anythink/expressad/exoplayer/b/l;->L:Z

    if-eqz v6, :cond_6

    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/b/l;->u:Lcom/anythink/expressad/exoplayer/b/u;

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual {v7, v8, v9}, Lcom/anythink/expressad/exoplayer/b/u;->a(II)V

    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/b/l;->t:Lcom/anythink/expressad/exoplayer/b/k;

    move-object/from16 v8, p4

    invoke-virtual {v7, v8}, Lcom/anythink/expressad/exoplayer/b/k;->a([I)V

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->v()[Lcom/anythink/expressad/exoplayer/b/f;

    move-result-object v7

    array-length v8, v7

    move v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v0, p2

    :goto_3
    if-ge v10, v8, :cond_7

    aget-object v12, v7, v10

    :try_start_0
    invoke-interface {v12, v9, v0, v2}, Lcom/anythink/expressad/exoplayer/b/f;->a(III)Z

    move-result v13
    :try_end_0
    .catch Lcom/anythink/expressad/exoplayer/b/f$a; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v11, v13

    invoke-interface {v12}, Lcom/anythink/expressad/exoplayer/b/f;->a()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Lcom/anythink/expressad/exoplayer/b/f;->b()I

    move-result v0

    invoke-interface {v12}, Lcom/anythink/expressad/exoplayer/b/f;->d()I

    move-result v2

    invoke-interface {v12}, Lcom/anythink/expressad/exoplayer/b/f;->c()I

    move-result v9

    move/from16 v16, v9

    move v9, v2

    move/from16 v2, v16

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Lcom/anythink/expressad/exoplayer/b/h$a;

    invoke-direct {v0, v2}, Lcom/anythink/expressad/exoplayer/b/h$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    move v9, v0

    const/4 v11, 0x0

    move/from16 v0, p2

    :cond_7
    const/16 v7, 0xfc

    const/16 v8, 0xc

    packed-switch v0, :pswitch_data_0

    new-instance v2, Lcom/anythink/expressad/exoplayer/b/h$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Unsupported channel count: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/anythink/expressad/exoplayer/b/h$a;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    sget v5, Lcom/anythink/expressad/exoplayer/b;->C:I

    goto :goto_4

    :pswitch_1
    const/16 v5, 0x4fc

    goto :goto_4

    :pswitch_2
    const/16 v5, 0xfc

    goto :goto_4

    :pswitch_3
    const/16 v5, 0xdc

    goto :goto_4

    :pswitch_4
    const/16 v5, 0xcc

    goto :goto_4

    :pswitch_5
    const/16 v5, 0x1c

    goto :goto_4

    :pswitch_6
    const/16 v5, 0xc

    :goto_4
    :pswitch_7
    sget v10, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v12, 0x17

    const/4 v13, 0x7

    const/4 v14, 0x5

    if-gt v10, v12, :cond_9

    sget-object v12, Lcom/anythink/expressad/exoplayer/k/af;->b:Ljava/lang/String;

    const-string v15, "foster"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    sget-object v12, Lcom/anythink/expressad/exoplayer/k/af;->c:Ljava/lang/String;

    const-string v15, "NVIDIA"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x3

    if-eq v0, v12, :cond_a

    if-eq v0, v14, :cond_a

    if-eq v0, v13, :cond_8

    goto :goto_5

    :cond_8
    sget v7, Lcom/anythink/expressad/exoplayer/b;->C:I

    goto :goto_6

    :cond_9
    :goto_5
    move v7, v5

    :cond_a
    :goto_6
    const/16 v5, 0x19

    if-gt v10, v5, :cond_b

    sget-object v5, Lcom/anythink/expressad/exoplayer/k/af;->b:Ljava/lang/String;

    const-string v10, "fugu"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-boolean v5, v1, Lcom/anythink/expressad/exoplayer/b/l;->D:Z

    if-nez v5, :cond_b

    if-ne v0, v3, :cond_b

    goto :goto_7

    :cond_b
    move v8, v7

    :goto_7
    if-nez v11, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->q()Z

    move-result v5

    if-eqz v5, :cond_c

    iget v5, v1, Lcom/anythink/expressad/exoplayer/b/l;->I:I

    if-ne v5, v2, :cond_c

    iget v5, v1, Lcom/anythink/expressad/exoplayer/b/l;->G:I

    if-ne v5, v9, :cond_c

    iget v5, v1, Lcom/anythink/expressad/exoplayer/b/l;->H:I

    if-ne v5, v8, :cond_c

    return-void

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->i()V

    iput-boolean v6, v1, Lcom/anythink/expressad/exoplayer/b/l;->K:Z

    iput v9, v1, Lcom/anythink/expressad/exoplayer/b/l;->G:I

    iput v8, v1, Lcom/anythink/expressad/exoplayer/b/l;->H:I

    iput v2, v1, Lcom/anythink/expressad/exoplayer/b/l;->I:I

    iget-boolean v5, v1, Lcom/anythink/expressad/exoplayer/b/l;->D:Z

    if-eqz v5, :cond_d

    invoke-static {v2, v0}, Lcom/anythink/expressad/exoplayer/k/af;->b(II)I

    move-result v0

    goto :goto_8

    :cond_d
    const/4 v0, -0x1

    :goto_8
    iput v0, v1, Lcom/anythink/expressad/exoplayer/b/l;->W:I

    iget-boolean v0, v1, Lcom/anythink/expressad/exoplayer/b/l;->D:Z

    if-eqz v0, :cond_f

    iget v0, v1, Lcom/anythink/expressad/exoplayer/b/l;->I:I

    invoke-static {v9, v8, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_e

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    :goto_9
    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    mul-int/lit8 v2, v0, 0x4

    const-wide/32 v3, 0x3d090

    invoke-direct {v1, v3, v4}, Lcom/anythink/expressad/exoplayer/b/l;->f(J)J

    move-result-wide v3

    long-to-int v4, v3

    iget v3, v1, Lcom/anythink/expressad/exoplayer/b/l;->W:I

    mul-int v4, v4, v3

    int-to-long v5, v0

    const-wide/32 v7, 0xb71b0

    invoke-direct {v1, v7, v8}, Lcom/anythink/expressad/exoplayer/b/l;->f(J)J

    move-result-wide v7

    iget v0, v1, Lcom/anythink/expressad/exoplayer/b/l;->W:I

    int-to-long v9, v0

    mul-long v7, v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    long-to-int v0, v5

    invoke-static {v2, v4, v0}, Lcom/anythink/expressad/exoplayer/k/af;->a(III)I

    move-result v0

    :goto_a
    iput v0, v1, Lcom/anythink/expressad/exoplayer/b/l;->M:I

    return-void

    :cond_f
    iget v0, v1, Lcom/anythink/expressad/exoplayer/b/l;->I:I

    if-eq v0, v14, :cond_12

    const/4 v2, 0x6

    if-ne v0, v2, :cond_10

    goto :goto_b

    :cond_10
    if-ne v0, v13, :cond_11

    const v0, 0xc000

    goto :goto_a

    :cond_11
    const v0, 0x48000

    goto :goto_a

    :cond_12
    :goto_b
    const/16 v0, 0x5000

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/b/b;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->J:Lcom/anythink/expressad/exoplayer/b/b;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/b/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->J:Lcom/anythink/expressad/exoplayer/b/b;

    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->an:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/b/l;->i()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/b/h$c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->A:Lcom/anythink/expressad/exoplayer/b/h$c;

    return-void
.end method

.method public final a(I)Z
    .locals 3

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/af;->b(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget p1, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->q:Lcom/anythink/expressad/exoplayer/b/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/b/c;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public final a(Ljava/nio/ByteBuffer;J)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->af:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->q()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->x:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->t()Landroid/media/AudioTrack;

    move-result-object v4

    iput-object v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    sget-boolean v7, Lcom/anythink/expressad/exoplayer/b/l;->b:Z

    if-eqz v7, :cond_3

    sget v7, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_3

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/b/l;->B:Landroid/media/AudioTrack;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v7

    if-eq v4, v7, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->p()V

    :cond_2
    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/b/l;->B:Landroid/media/AudioTrack;

    if-nez v7, :cond_3

    new-instance v15, Landroid/media/AudioTrack;

    const/4 v8, 0x3

    const/16 v9, 0xfa0

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v7, v15

    move v14, v4

    invoke-direct/range {v7 .. v14}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v15, v0, Lcom/anythink/expressad/exoplayer/b/l;->B:Landroid/media/AudioTrack;

    :cond_3
    iget v7, v0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    if-eq v7, v4, :cond_4

    iput v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/b/l;->A:Lcom/anythink/expressad/exoplayer/b/h$c;

    if-eqz v7, :cond_4

    invoke-interface {v7, v4}, Lcom/anythink/expressad/exoplayer/b/h$c;->a(I)V

    :cond_4
    iget-boolean v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->L:Z

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->r:Lcom/anythink/expressad/exoplayer/b/l$a;

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    invoke-interface {v4, v7}, Lcom/anythink/expressad/exoplayer/b/l$a;->a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;

    move-result-object v4

    goto :goto_2

    :cond_5
    sget-object v4, Lcom/anythink/expressad/exoplayer/v;->a:Lcom/anythink/expressad/exoplayer/v;

    :goto_2
    iput-object v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->k()V

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->y:Lcom/anythink/expressad/exoplayer/b/j;

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    iget v8, v0, Lcom/anythink/expressad/exoplayer/b/l;->I:I

    iget v9, v0, Lcom/anythink/expressad/exoplayer/b/l;->W:I

    iget v10, v0, Lcom/anythink/expressad/exoplayer/b/l;->M:I

    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/anythink/expressad/exoplayer/b/j;->a(Landroid/media/AudioTrack;III)V

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->o()V

    iget-boolean v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->al:Z

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->a()V

    :cond_6
    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->y:Lcom/anythink/expressad/exoplayer/b/j;

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->s()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/anythink/expressad/exoplayer/b/j;->a(J)Z

    move-result v4

    if-nez v4, :cond_7

    return v5

    :cond_7
    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->af:Ljava/nio/ByteBuffer;

    const-string v7, "AudioTrack"

    const/4 v8, 0x0

    if-nez v4, :cond_16

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_8

    return v6

    :cond_8
    iget-boolean v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->D:Z

    if-nez v4, :cond_f

    iget v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->Z:I

    if-nez v4, :cond_f

    iget v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->I:I

    const/4 v9, 0x7

    if-eq v4, v9, :cond_e

    const/16 v9, 0x8

    if-ne v4, v9, :cond_9

    goto :goto_3

    :cond_9
    const/4 v9, 0x5

    if-ne v4, v9, :cond_a

    invoke-static {}, Lcom/anythink/expressad/exoplayer/b/a;->a()I

    move-result v4

    goto :goto_4

    :cond_a
    const/4 v9, 0x6

    if-ne v4, v9, :cond_b

    invoke-static/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/b/a;->a(Ljava/nio/ByteBuffer;)I

    move-result v4

    goto :goto_4

    :cond_b
    const/16 v9, 0xe

    if-ne v4, v9, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/b/a;->b(Ljava/nio/ByteBuffer;)I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_c

    const/4 v4, 0x0

    goto :goto_4

    :cond_c
    invoke-static {v1, v4}, Lcom/anythink/expressad/exoplayer/b/a;->a(Ljava/nio/ByteBuffer;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    goto :goto_4

    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unexpected audio encoding: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/b/m;->a(Ljava/nio/ByteBuffer;)I

    move-result v4

    :goto_4
    iput v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->Z:I

    if-nez v4, :cond_f

    return v6

    :cond_f
    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->N:Lcom/anythink/expressad/exoplayer/v;

    const-wide/16 v9, 0x0

    if-eqz v4, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->n()Z

    move-result v4

    if-nez v4, :cond_10

    return v5

    :cond_10
    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->N:Lcom/anythink/expressad/exoplayer/v;

    iput-object v8, v0, Lcom/anythink/expressad/exoplayer/b/l;->N:Lcom/anythink/expressad/exoplayer/v;

    iget-object v11, v0, Lcom/anythink/expressad/exoplayer/b/l;->r:Lcom/anythink/expressad/exoplayer/b/l$a;

    invoke-interface {v11, v4}, Lcom/anythink/expressad/exoplayer/b/l$a;->a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;

    move-result-object v13

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->z:Ljava/util/ArrayDeque;

    new-instance v11, Lcom/anythink/expressad/exoplayer/b/l$d;

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->s()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lcom/anythink/expressad/exoplayer/b/l;->e(J)J

    move-result-wide v16

    const/16 v18, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v18}, Lcom/anythink/expressad/exoplayer/b/l$d;-><init>(Lcom/anythink/expressad/exoplayer/v;JJB)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->k()V

    :cond_11
    iget v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->aa:I

    if-nez v4, :cond_12

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->ab:J

    const/4 v4, 0x1

    iput v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->aa:I

    goto :goto_5

    :cond_12
    iget-wide v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->ab:J

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->r()J

    move-result-wide v9

    const-wide/32 v11, 0xf4240

    mul-long v9, v9, v11

    iget v6, v0, Lcom/anythink/expressad/exoplayer/b/l;->F:I

    int-to-long v11, v6

    div-long/2addr v9, v11

    add-long/2addr v4, v9

    iget v6, v0, Lcom/anythink/expressad/exoplayer/b/l;->aa:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v6, v10, :cond_13

    sub-long v10, v4, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x30d40

    cmp-long v6, v10, v12

    if-lez v6, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Discontinuity detected [expected "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", got "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, v0, Lcom/anythink/expressad/exoplayer/b/l;->aa:I

    :cond_13
    iget v6, v0, Lcom/anythink/expressad/exoplayer/b/l;->aa:I

    if-ne v6, v9, :cond_14

    iget-wide v9, v0, Lcom/anythink/expressad/exoplayer/b/l;->ab:J

    sub-long v4, v2, v4

    add-long/2addr v9, v4

    iput-wide v9, v0, Lcom/anythink/expressad/exoplayer/b/l;->ab:J

    const/4 v4, 0x1

    iput v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->aa:I

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->A:Lcom/anythink/expressad/exoplayer/b/h$c;

    if-eqz v4, :cond_14

    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/b/h$c;->a()V

    :cond_14
    :goto_5
    iget-boolean v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->D:Z

    if-eqz v4, :cond_15

    iget-wide v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->U:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-long v9, v6

    add-long/2addr v4, v9

    iput-wide v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->U:J

    goto :goto_6

    :cond_15
    iget-wide v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->V:J

    iget v6, v0, Lcom/anythink/expressad/exoplayer/b/l;->Z:I

    int-to-long v9, v6

    add-long/2addr v4, v9

    iput-wide v4, v0, Lcom/anythink/expressad/exoplayer/b/l;->V:J

    :goto_6
    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/b/l;->af:Ljava/nio/ByteBuffer;

    :cond_16
    iget-boolean v1, v0, Lcom/anythink/expressad/exoplayer/b/l;->K:Z

    if-eqz v1, :cond_17

    invoke-direct {v0, v2, v3}, Lcom/anythink/expressad/exoplayer/b/l;->a(J)V

    goto :goto_7

    :cond_17
    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/b/l;->af:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/b/l;->b(Ljava/nio/ByteBuffer;J)V

    :goto_7
    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/b/l;->af:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_18

    iput-object v8, v0, Lcom/anythink/expressad/exoplayer/b/l;->af:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    return v1

    :cond_18
    const/4 v1, 0x1

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/b/l;->y:Lcom/anythink/expressad/exoplayer/b/j;

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->s()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/anythink/expressad/exoplayer/b/j;->c(J)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "Resetting stalled audio track"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/b/l;->i()V

    return v1

    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->aa:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->aa:I

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/b/l;->i()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->ak:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->q()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->y:Lcom/anythink/expressad/exoplayer/b/j;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/b/j;->d(J)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->S:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->ak:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 3

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->an:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    if-eq v0, p1, :cond_2

    :cond_1
    iput-boolean v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->an:Z

    iput p1, p0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/b/l;->i()V

    :cond_2
    return-void
.end method

.method public final d()Z
    .locals 1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->ak:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/b/l;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 3

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->y:Lcom/anythink/expressad/exoplayer/b/j;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/b/j;->e(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/anythink/expressad/exoplayer/v;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    return-object v0
.end method

.method public final g()V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->an:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->an:Z

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/b/l;->i()V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->al:Z

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->y:Lcom/anythink/expressad/exoplayer/b/j;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/b/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 5

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->U:J

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->V:J

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->X:J

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->Y:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->Z:I

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/b/l;->N:Lcom/anythink/expressad/exoplayer/v;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    iput-object v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->N:Lcom/anythink/expressad/exoplayer/v;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/b/l;->z:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/b/l;->z:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/b/l$d;

    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/b/l$d;->a(Lcom/anythink/expressad/exoplayer/b/l$d;)Lcom/anythink/expressad/exoplayer/v;

    move-result-object v3

    iput-object v3, p0, Lcom/anythink/expressad/exoplayer/b/l;->O:Lcom/anythink/expressad/exoplayer/v;

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/b/l;->z:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->P:J

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->Q:J

    iput-object v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->af:Ljava/nio/ByteBuffer;

    iput-object v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->ag:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->l()V

    iput-boolean v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->ak:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->aj:I

    iput-object v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->R:Ljava/nio/ByteBuffer;

    iput v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->S:I

    iput v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->aa:I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->y:Lcom/anythink/expressad/exoplayer/b/j;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/b/j;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    iput-object v4, p0, Lcom/anythink/expressad/exoplayer/b/l;->C:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->y:Lcom/anythink/expressad/exoplayer/b/j;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/b/j;->d()V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/l;->x:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    new-instance v1, Lcom/anythink/expressad/exoplayer/b/l$1;

    invoke-direct {v1, p0, v0}, Lcom/anythink/expressad/exoplayer/b/l$1;-><init>(Lcom/anythink/expressad/exoplayer/b/l;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void
.end method

.method public final j()V
    .locals 5

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/b/l;->i()V

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/l;->p()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->v:[Lcom/anythink/expressad/exoplayer/b/f;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/b/f;->i()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l;->w:[Lcom/anythink/expressad/exoplayer/b/f;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/b/f;->i()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->am:I

    iput-boolean v2, p0, Lcom/anythink/expressad/exoplayer/b/l;->al:Z

    return-void
.end method
