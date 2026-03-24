.class public final Lcom/anythink/expressad/exoplayer/h/ad;
.super Lcom/anythink/expressad/exoplayer/h/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/h/ad$b;,
        Lcom/anythink/expressad/exoplayer/h/ad$c;,
        Lcom/anythink/expressad/exoplayer/h/ad$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x3


# instance fields
.field private final b:Lcom/anythink/expressad/exoplayer/j/k;

.field private final c:Lcom/anythink/expressad/exoplayer/j/h$a;

.field private final d:Lcom/anythink/expressad/exoplayer/m;

.field private final e:J

.field private final f:I

.field private final g:Z

.field private final h:Lcom/anythink/expressad/exoplayer/ae;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/m;J)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/h/ad;-><init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/m;JB)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/m;JB)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/anythink/expressad/exoplayer/h/ad;-><init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/m;JIZLjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/m;JILandroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/ad$a;IZ)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p10

    invoke-direct/range {v2 .. v10}, Lcom/anythink/expressad/exoplayer/h/ad;-><init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/m;JIZLjava/lang/Object;)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Lcom/anythink/expressad/exoplayer/h/ad$b;

    move/from16 v3, p9

    invoke-direct {v2, v1, v3}, Lcom/anythink/expressad/exoplayer/h/ad$b;-><init>(Lcom/anythink/expressad/exoplayer/h/ad$a;I)V

    move-object v1, p0

    invoke-virtual {p0, v0, v2}, Lcom/anythink/expressad/exoplayer/h/c;->a(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/t;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/m;JIZLjava/lang/Object;)V
    .locals 6
    .param p8    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/c;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/ad;->c:Lcom/anythink/expressad/exoplayer/j/h$a;

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/ad;->d:Lcom/anythink/expressad/exoplayer/m;

    iput-wide p4, p0, Lcom/anythink/expressad/exoplayer/h/ad;->e:J

    iput p6, p0, Lcom/anythink/expressad/exoplayer/h/ad;->f:I

    iput-boolean p7, p0, Lcom/anythink/expressad/exoplayer/h/ad;->g:Z

    new-instance p2, Lcom/anythink/expressad/exoplayer/j/k;

    invoke-direct {p2, p1}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/ad;->b:Lcom/anythink/expressad/exoplayer/j/k;

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/ab;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move-wide v1, p4

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/h/ab;-><init>(JZZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/ad;->h:Lcom/anythink/expressad/exoplayer/ae;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/m;JIZLjava/lang/Object;B)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/anythink/expressad/exoplayer/h/ad;-><init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/m;JIZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)Lcom/anythink/expressad/exoplayer/h/r;
    .locals 9

    iget p2, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    new-instance p2, Lcom/anythink/expressad/exoplayer/h/ac;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/ad;->b:Lcom/anythink/expressad/exoplayer/j/k;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/ad;->c:Lcom/anythink/expressad/exoplayer/j/h$a;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/ad;->d:Lcom/anythink/expressad/exoplayer/m;

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/h/ad;->e:J

    iget v6, p0, Lcom/anythink/expressad/exoplayer/h/ad;->f:I

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/h/c;->a(Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/t$a;

    move-result-object v7

    iget-boolean v8, p0, Lcom/anythink/expressad/exoplayer/h/ad;->g:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/anythink/expressad/exoplayer/h/ac;-><init>(Lcom/anythink/expressad/exoplayer/j/k;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/m;JILcom/anythink/expressad/exoplayer/h/t$a;Z)V

    return-object p2
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/r;)V
    .locals 0

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/ac;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/ac;->f()V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h;Z)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/ad;->h:Lcom/anythink/expressad/exoplayer/ae;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/c;->a(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
