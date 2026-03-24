.class public final Lz2/oO0O000o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oO0O000o$OooO00o;,
        Lz2/oO0O000o$OooO0O0;
    }
.end annotation


# static fields
.field public static final Oooooo:Ljava/lang/String; = "PreFillRunner"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final OoooooO:Lz2/oO0O000o$OooO00o;

.field public static final Ooooooo:J = 0x20L

.field public static final o00O0O:J

.field public static final o0OoOo0:J = 0x28L

.field public static final ooOO:I = 0x4


# instance fields
.field private final OoooOoO:Lz2/oO000o00;

.field private final OoooOoo:Lz2/oO0OO00o;

.field private final Ooooo00:Lz2/oO0O00O;

.field private final Ooooo0o:Lz2/oO0O000o$OooO00o;

.field private final OooooO0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lz2/oO0O00o0;",
            ">;"
        }
    .end annotation
.end field

.field private final OooooOO:Landroid/os/Handler;

.field private OooooOo:J

.field private Oooooo0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lz2/oO0O000o$OooO00o;

    invoke-direct {v0}, Lz2/oO0O000o$OooO00o;-><init>()V

    sput-object v0, Lz2/oO0O000o;->OoooooO:Lz2/oO0O000o$OooO00o;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lz2/oO0O000o;->o00O0O:J

    return-void
.end method

.method public constructor <init>(Lz2/oO000o00;Lz2/oO0OO00o;Lz2/oO0O00O;)V
    .locals 6

    sget-object v4, Lz2/oO0O000o;->OoooooO:Lz2/oO0O000o$OooO00o;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lz2/oO0O000o;-><init>(Lz2/oO000o00;Lz2/oO0OO00o;Lz2/oO0O00O;Lz2/oO0O000o$OooO00o;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lz2/oO000o00;Lz2/oO0OO00o;Lz2/oO0O00O;Lz2/oO0O000o$OooO00o;Landroid/os/Handler;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lz2/oO0O000o;->OooooO0:Ljava/util/Set;

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lz2/oO0O000o;->OooooOo:J

    iput-object p1, p0, Lz2/oO0O000o;->OoooOoO:Lz2/oO000o00;

    iput-object p2, p0, Lz2/oO0O000o;->OoooOoo:Lz2/oO0OO00o;

    iput-object p3, p0, Lz2/oO0O000o;->Ooooo00:Lz2/oO0O00O;

    iput-object p4, p0, Lz2/oO0O000o;->Ooooo0o:Lz2/oO0O000o$OooO00o;

    iput-object p5, p0, Lz2/oO0O000o;->OooooOO:Landroid/os/Handler;

    return-void
.end method

.method private OooO0OO()J
    .locals 4

    iget-object v0, p0, Lz2/oO0O000o;->OoooOoo:Lz2/oO0OO00o;

    invoke-interface {v0}, Lz2/oO0OO00o;->OooO0o0()J

    move-result-wide v0

    iget-object v2, p0, Lz2/oO0O000o;->OoooOoo:Lz2/oO0OO00o;

    invoke-interface {v2}, Lz2/oO0OO00o;->OooO0Oo()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private OooO0Oo()J
    .locals 6

    iget-wide v0, p0, Lz2/oO0O000o;->OooooOo:J

    const-wide/16 v2, 0x4

    mul-long v2, v2, v0

    sget-wide v4, Lz2/oO0O000o;->o00O0O:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lz2/oO0O000o;->OooooOo:J

    return-wide v0
.end method

.method private OooO0o0(J)Z
    .locals 3

    iget-object v0, p0, Lz2/oO0O000o;->Ooooo0o:Lz2/oO0O000o$OooO00o;

    invoke-virtual {v0}, Lz2/oO0O000o$OooO00o;->OooO00o()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x20

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public OooO00o()Z
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lz2/oO0O000o;->Ooooo0o:Lz2/oO0O000o$OooO00o;

    invoke-virtual {v0}, Lz2/oO0O000o$OooO00o;->OooO00o()J

    move-result-wide v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lz2/oO0O000o;->Ooooo00:Lz2/oO0O00O;

    invoke-virtual {v2}, Lz2/oO0O00O;->OooO0O0()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0, v1}, Lz2/oO0O000o;->OooO0o0(J)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lz2/oO0O000o;->Ooooo00:Lz2/oO0O00O;

    invoke-virtual {v2}, Lz2/oO0O00O;->OooO0OO()Lz2/oO0O00o0;

    move-result-object v2

    iget-object v3, p0, Lz2/oO0O000o;->OooooO0:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lz2/oO0O000o;->OooooO0:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lz2/oO0O000o;->OoooOoO:Lz2/oO000o00;

    invoke-virtual {v2}, Lz2/oO0O00o0;->OooO0Oo()I

    move-result v4

    invoke-virtual {v2}, Lz2/oO0O00o0;->OooO0O0()I

    move-result v5

    invoke-virtual {v2}, Lz2/oO0O00o0;->OooO00o()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lz2/oO000o00;->OooO0oO(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lz2/oO0O00o0;->OooO0Oo()I

    move-result v3

    invoke-virtual {v2}, Lz2/oO0O00o0;->OooO0O0()I

    move-result v4

    invoke-virtual {v2}, Lz2/oO0O00o0;->OooO00o()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lz2/t2;->OooO0oo(Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-direct {p0}, Lz2/oO0O000o;->OooO0OO()J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long v9, v5, v7

    if-ltz v9, :cond_2

    new-instance v5, Lz2/oO0O000o$OooO0O0;

    invoke-direct {v5}, Lz2/oO0O000o$OooO0O0;-><init>()V

    iget-object v6, p0, Lz2/oO0O000o;->OoooOoo:Lz2/oO0OO00o;

    iget-object v7, p0, Lz2/oO0O000o;->OoooOoO:Lz2/oO000o00;

    invoke-static {v3, v7}, Lz2/oOO;->OooO0Oo(Landroid/graphics/Bitmap;Lz2/oO000o00;)Lz2/oOO;

    move-result-object v3

    invoke-interface {v6, v5, v3}, Lz2/oO0OO00o;->OooO0o(Lz2/o0O0O0Oo;Lz2/oO0Ooooo;)Lz2/oO0Ooooo;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lz2/oO0O000o;->OoooOoO:Lz2/oO000o00;

    invoke-interface {v5, v3}, Lz2/oO000o00;->OooO0Oo(Landroid/graphics/Bitmap;)V

    :goto_2
    const/4 v3, 0x3

    const-string v5, "PreFillRunner"

    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocated ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lz2/oO0O00o0;->OooO0Oo()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lz2/oO0O00o0;->OooO0O0()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lz2/oO0O00o0;->OooO00o()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, Lz2/oO0O000o;->Oooooo0:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lz2/oO0O000o;->Ooooo00:Lz2/oO0O00O;

    invoke-virtual {v0}, Lz2/oO0O00O;->OooO0O0()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public OooO0O0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/oO0O000o;->Oooooo0:Z

    return-void
.end method

.method public run()V
    .locals 3

    invoke-virtual {p0}, Lz2/oO0O000o;->OooO00o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/oO0O000o;->OooooOO:Landroid/os/Handler;

    invoke-direct {p0}, Lz2/oO0O000o;->OooO0Oo()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
