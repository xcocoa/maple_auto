.class public final Lcom/anythink/expressad/a/h;
.super Lcom/anythink/expressad/a/d;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/g/g/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/a/h$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final i:I = 0x2

.field private static final j:Ljava/lang/String; = "302"


# instance fields
.field private k:Z

.field private l:J

.field private m:Lcom/anythink/expressad/a/e;

.field private n:Lcom/anythink/expressad/a/c$b;

.field private o:Z

.field private p:Z

.field private q:Landroid/content/Context;

.field private r:Lcom/anythink/expressad/foundation/g/g/c;

.field private s:Lcom/anythink/expressad/a/f$a;

.field private t:Landroid/os/Handler;

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/anythink/expressad/a/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/a/h;->k:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/expressad/a/h;->l:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/a/h;->o:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/anythink/expressad/a/h;->t:Landroid/os/Handler;

    iput-object p1, p0, Lcom/anythink/expressad/a/h;->q:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/anythink/expressad/a/h;->u:Z

    new-instance v0, Lcom/anythink/expressad/foundation/g/g/c;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/anythink/expressad/foundation/g/g/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/anythink/expressad/a/h;->r:Lcom/anythink/expressad/foundation/g/g/c;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/a/h;J)J
    .locals 0

    iput-wide p1, p0, Lcom/anythink/expressad/a/h;->l:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/a/h;Lcom/anythink/expressad/a/c$b;)Lcom/anythink/expressad/a/c$b;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/a/h;->n:Lcom/anythink/expressad/a/c$b;

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/a/h;Lcom/anythink/expressad/a/f$a;)Lcom/anythink/expressad/a/f$a;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/a/h;->s:Lcom/anythink/expressad/a/f$a;

    return-object p1
.end method

.method private a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/a/h;->o:Z

    return v0
.end method

.method public static synthetic a(Lcom/anythink/expressad/a/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/a/h;->p:Z

    return p0
.end method

.method public static synthetic b(Lcom/anythink/expressad/a/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/a/h;->o:Z

    return p0
.end method

.method public static synthetic c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/a/h;->s:Lcom/anythink/expressad/a/f$a;

    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/expressad/a/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/a/h;->l:J

    return-wide v0
.end method

.method public static synthetic e(Lcom/anythink/expressad/a/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/a/h;->k:Z

    return p0
.end method

.method public static synthetic f(Lcom/anythink/expressad/a/h;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/a/h;->k:Z

    return v0
.end method

.method public static synthetic g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/a/h;->n:Lcom/anythink/expressad/a/c$b;

    return-object p0
.end method

.method public static synthetic h(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/e;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/a/h;->m:Lcom/anythink/expressad/a/e;

    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/expressad/a/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/a/h;->u:Z

    return p0
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/foundation/g/g/a$a;)V
    .locals 1

    sget-object v0, Lcom/anythink/expressad/foundation/g/g/a$a;->e:Lcom/anythink/expressad/foundation/g/g/a$a;

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/anythink/expressad/a/h;->o:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/a/h;->t:Landroid/os/Handler;

    new-instance v0, Lcom/anythink/expressad/a/h$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/a/h$1;-><init>(Lcom/anythink/expressad/a/h;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/expressad/a/e;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/c/b;Lcom/anythink/expressad/foundation/d/c;ZZI)V
    .locals 15

    move-object v12, p0

    move-object/from16 v0, p2

    iput-object v0, v12, Lcom/anythink/expressad/a/h;->m:Lcom/anythink/expressad/a/e;

    move/from16 v0, p3

    iput-boolean v0, v12, Lcom/anythink/expressad/a/h;->p:Z

    iget-object v13, v12, Lcom/anythink/expressad/a/h;->r:Lcom/anythink/expressad/foundation/g/g/c;

    new-instance v14, Lcom/anythink/expressad/a/h$a;

    iget-object v2, v12, Lcom/anythink/expressad/a/h;->q:Landroid/content/Context;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/anythink/expressad/a/h$a;-><init>(Lcom/anythink/expressad/a/h;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/c/b;Lcom/anythink/expressad/foundation/d/c;ZZI)V

    invoke-virtual {v13, v14, p0}, Lcom/anythink/expressad/foundation/g/g/c;->a(Lcom/anythink/expressad/foundation/g/g/a;Lcom/anythink/expressad/foundation/g/g/a$b;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/a/h;->o:Z

    return-void
.end method
