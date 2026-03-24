.class public final Lcom/anythink/expressad/reward/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/reward/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/reward/a/d$b;,
        Lcom/anythink/expressad/reward/a/d$c;,
        Lcom/anythink/expressad/reward/a/d$e;,
        Lcom/anythink/expressad/reward/a/d$i;,
        Lcom/anythink/expressad/reward/a/d$f;,
        Lcom/anythink/expressad/reward/a/d$d;,
        Lcom/anythink/expressad/reward/a/d$j;,
        Lcom/anythink/expressad/reward/a/d$a;,
        Lcom/anythink/expressad/reward/a/d$h;,
        Lcom/anythink/expressad/reward/a/d$g;
    }
.end annotation


# static fields
.field private static final L:I = 0x8

.field private static final M:I = 0x9

.field private static final N:I = 0x10

.field private static final O:I = 0x11

.field private static final P:I = 0x1388

.field private static final Q:I = 0x7530

.field public static final a:Ljava/lang/String; = "APP ALREADY INSTALLED"

.field public static final b:Ljava/lang/String; = "Offer list is empty"

.field public static final d:Ljava/lang/String; = "1"

.field public static final e:Ljava/lang/String; = "1"

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:I = 0x5

.field public static final k:I = 0x6

.field public static final l:I = 0x7

.field private static final u:Ljava/lang/String; = "RewardMVVideoAdapter"


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Lcom/anythink/expressad/video/bt/module/b/h;

.field private volatile G:Lcom/anythink/expressad/reward/a/b;

.field private H:Ljava/lang/Runnable;

.field private I:Lcom/anythink/expressad/videocommon/e/d;

.field private J:Z

.field private K:Z

.field private R:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private S:I

.field private T:Z

.field private U:Z

.field private V:Ljava/lang/String;

.field private W:I

.field private X:I

.field private Y:I

.field private Z:Lcom/anythink/expressad/foundation/d/d;

.field private aa:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Z

.field private ac:J

.field private ad:Landroid/os/Handler;

.field private ae:J

.field private af:Ljava/lang/String;

.field private ag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Z

.field public volatile p:Z

.field public volatile q:Z

.field public volatile r:Z

.field public volatile s:Z

.field public volatile t:Z

.field private v:Landroid/content/Context;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->J:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->K:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/anythink/expressad/reward/a/d;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x2

    iput v1, p0, Lcom/anythink/expressad/reward/a/d;->S:I

    const-string v1, ""

    iput-object v1, p0, Lcom/anythink/expressad/reward/a/d;->V:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->ab:Z

    iput-object v1, p0, Lcom/anythink/expressad/reward/a/d;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/expressad/reward/a/d;->n:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/anythink/expressad/reward/a/d;->ac:J

    new-instance v4, Lcom/anythink/expressad/reward/a/d$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/anythink/expressad/reward/a/d$1;-><init>(Lcom/anythink/expressad/reward/a/d;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->o:Z

    iput-wide v2, p0, Lcom/anythink/expressad/reward/a/d;->ae:J

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->p:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->q:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->r:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->s:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->t:Z

    iput-object v1, p0, Lcom/anythink/expressad/reward/a/d;->af:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d;->x:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->D:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/foundation/d/c;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/videocommon/e/d;",
            ")V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p3

    move-object/from16 v6, p4

    :try_start_0
    new-instance v13, Lcom/anythink/expressad/videocommon/a$a;

    invoke-direct {v13}, Lcom/anythink/expressad/videocommon/a$a;-><init>()V

    new-instance v14, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v14}, Lcom/anythink/expressad/videocommon/a$a;->a(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)V

    const/4 v1, 0x0

    if-eqz v6, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-direct {v2, v1, v0, v6}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-direct {v2, v1, v0}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    :goto_0
    move-object v15, v2

    iget v1, v12, Lcom/anythink/expressad/reward/a/d;->S:I

    invoke-virtual {v15, v1}, Lcom/anythink/expressad/video/signal/a/c;->a(I)V

    move-object/from16 v11, p6

    invoke-virtual {v15, v11}, Lcom/anythink/expressad/video/signal/a/c;->a(Ljava/lang/String;)V

    move-object/from16 v9, p7

    invoke-virtual {v15, v9}, Lcom/anythink/expressad/video/signal/a/c;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    iget-boolean v1, v12, Lcom/anythink/expressad/reward/a/d;->ab:Z

    invoke-virtual {v15, v1}, Lcom/anythink/expressad/video/signal/a/j;->b(Z)V

    new-instance v10, Lcom/anythink/expressad/reward/a/d$h;

    iget v8, v12, Lcom/anythink/expressad/reward/a/d;->S:I

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v16, v8

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 p4, v10

    move/from16 v10, v16

    move-object/from16 v11, p0

    invoke-direct/range {v1 .. v11}, Lcom/anythink/expressad/reward/a/d$h;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;ILcom/anythink/expressad/reward/a/d;)V

    new-instance v10, Lcom/anythink/expressad/reward/a/d$j;

    iget-object v9, v12, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object v5, v13

    move-object/from16 v6, p3

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/anythink/expressad/reward/a/d$j;-><init>(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/a$a;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/reward/a/d$h;Landroid/os/Handler;)V

    invoke-virtual {v14, v10}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    invoke-virtual {v14, v15}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-virtual {v14, v0}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    move-object/from16 v3, p4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 4

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/anythink/expressad/videocommon/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x10

    iput v3, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 p1, 0x1

    aput-object v1, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p2, v0, p1

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p3

    move-object/from16 v6, p4

    :try_start_0
    new-instance v13, Lcom/anythink/expressad/videocommon/a$a;

    invoke-direct {v13}, Lcom/anythink/expressad/videocommon/a$a;-><init>()V

    new-instance v14, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v14}, Lcom/anythink/expressad/videocommon/a$a;->a(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)V

    const/4 v1, 0x0

    if-eqz v6, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-direct {v2, v1, v12, v6}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-direct {v2, v1, v12}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    :goto_0
    move-object v15, v2

    iget v1, v0, Lcom/anythink/expressad/reward/a/d;->S:I

    invoke-virtual {v15, v1}, Lcom/anythink/expressad/video/signal/a/c;->a(I)V

    move-object/from16 v11, p6

    invoke-virtual {v15, v11}, Lcom/anythink/expressad/video/signal/a/c;->a(Ljava/lang/String;)V

    move-object/from16 v9, p7

    invoke-virtual {v15, v9}, Lcom/anythink/expressad/video/signal/a/c;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    iget-boolean v1, v0, Lcom/anythink/expressad/reward/a/d;->ab:Z

    invoke-virtual {v15, v1}, Lcom/anythink/expressad/video/signal/a/j;->b(Z)V

    new-instance v10, Lcom/anythink/expressad/reward/a/d$h;

    iget v8, v0, Lcom/anythink/expressad/reward/a/d;->S:I

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v16, v8

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 p4, v10

    move/from16 v10, v16

    move-object/from16 v11, p0

    invoke-direct/range {v1 .. v11}, Lcom/anythink/expressad/reward/a/d$h;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;ILcom/anythink/expressad/reward/a/d;)V

    new-instance v10, Lcom/anythink/expressad/reward/a/d$j;

    iget-object v9, v0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object v5, v13

    move-object/from16 v6, p3

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/anythink/expressad/reward/a/d$j;-><init>(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/a$a;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/reward/a/d$h;Landroid/os/Handler;)V

    invoke-virtual {v14, v10}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    invoke-virtual {v14, v15}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    move-object/from16 v1, p5

    invoke-virtual {v14, v1}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    move-object/from16 v3, p4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    :try_start_0
    new-instance v11, Lcom/anythink/expressad/videocommon/a$a;

    invoke-direct {v11}, Lcom/anythink/expressad/videocommon/a$a;-><init>()V

    new-instance v12, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v12}, Lcom/anythink/expressad/videocommon/a$a;->a(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)V

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/anythink/expressad/videocommon/a$a;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    iget-object v4, v0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    iget-object v4, v4, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v10, v4}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-direct {v2, v3, v10}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    :goto_0
    move-object v13, v2

    iget v2, v0, Lcom/anythink/expressad/reward/a/d;->S:I

    invoke-virtual {v13, v2}, Lcom/anythink/expressad/video/signal/a/c;->a(I)V

    move-object/from16 v14, p4

    invoke-virtual {v13, v14}, Lcom/anythink/expressad/video/signal/a/c;->a(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Lcom/anythink/expressad/video/signal/a/j;->c(Ljava/lang/String;)V

    move-object/from16 v7, p5

    invoke-virtual {v13, v7}, Lcom/anythink/expressad/video/signal/a/c;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    iget-boolean v1, v0, Lcom/anythink/expressad/reward/a/d;->ab:Z

    invoke-virtual {v13, v1}, Lcom/anythink/expressad/video/signal/a/j;->b(Z)V

    new-instance v15, Lcom/anythink/expressad/reward/a/d$g;

    iget v8, v0, Lcom/anythink/expressad/reward/a/d;->S:I

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/anythink/expressad/reward/a/d$g;-><init>(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;ILcom/anythink/expressad/reward/a/d;)V

    new-instance v9, Lcom/anythink/expressad/reward/a/d$a;

    iget-object v8, v0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v4, v11

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    move-object v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/anythink/expressad/reward/a/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/a$a;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/reward/a/d$g;Landroid/os/Handler;)V

    invoke-virtual {v12, v9}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    invoke-virtual {v12, v13}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    move-object/from16 v1, p3

    invoke-virtual {v12, v1}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x5

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    :goto_0
    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->f()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/expressad/foundation/d/c$c$a;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/anythink/expressad/foundation/d/c$c$a;->b:Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz p2, :cond_6

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    invoke-interface {p2, p1}, Lcom/anythink/expressad/reward/a/b;->a(Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz p2, :cond_8

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    invoke-interface {p2, p1}, Lcom/anythink/expressad/reward/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :try_start_1
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz p2, :cond_a

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_b
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/a/d;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->H:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->V:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v0, p2

    :try_start_0
    new-instance v11, Lcom/anythink/expressad/videocommon/a$a;

    invoke-direct {v11}, Lcom/anythink/expressad/videocommon/a$a;-><init>()V

    new-instance v12, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v12}, Lcom/anythink/expressad/videocommon/a$a;->a(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)V

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->a()Lcom/anythink/expressad/video/bt/a/c;

    invoke-static {}, Lcom/anythink/expressad/video/bt/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/anythink/expressad/videocommon/a$a;->a(Ljava/lang/String;)V

    iget-object v2, v10, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    iget-object v4, v10, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    iget-object v4, v4, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v0, v4}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/anythink/expressad/video/signal/a/j;

    invoke-direct {v2, v3, v0}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    :goto_0
    move-object v13, v2

    iget v2, v10, Lcom/anythink/expressad/reward/a/d;->S:I

    invoke-virtual {v13, v2}, Lcom/anythink/expressad/video/signal/a/c;->a(I)V

    move-object/from16 v14, p4

    invoke-virtual {v13, v14}, Lcom/anythink/expressad/video/signal/a/c;->a(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Lcom/anythink/expressad/video/signal/a/j;->c(Ljava/lang/String;)V

    move-object/from16 v7, p5

    invoke-virtual {v13, v7}, Lcom/anythink/expressad/video/signal/a/c;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    iget-boolean v1, v10, Lcom/anythink/expressad/reward/a/d;->ab:Z

    invoke-virtual {v13, v1}, Lcom/anythink/expressad/video/signal/a/j;->b(Z)V

    new-instance v15, Lcom/anythink/expressad/reward/a/d$g;

    iget v8, v10, Lcom/anythink/expressad/reward/a/d;->S:I

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/anythink/expressad/reward/a/d$g;-><init>(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;ILcom/anythink/expressad/reward/a/d;)V

    new-instance v9, Lcom/anythink/expressad/reward/a/d$a;

    iget-object v8, v10, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v4, v11

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    move-object v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/anythink/expressad/reward/a/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/a$a;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/reward/a/d$g;Landroid/os/Handler;)V

    invoke-virtual {v12, v9}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    invoke-virtual {v12, v13}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x5

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    :goto_0
    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->f()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/expressad/foundation/d/c$c$a;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/anythink/expressad/foundation/d/c$c$a;->b:Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz p2, :cond_6

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    invoke-interface {p2, p1}, Lcom/anythink/expressad/reward/a/b;->a(Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz p2, :cond_8

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    invoke-interface {p2, p1}, Lcom/anythink/expressad/reward/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :try_start_1
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz p2, :cond_a

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_b
    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mark cache data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/videocommon/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v1

    invoke-static {v1, v0}, Lcom/anythink/expressad/videocommon/a;->b(ILcom/anythink/expressad/foundation/d/c;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Ljava/util/List;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;",
            "Lcom/anythink/expressad/videocommon/e/d;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V

    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method private static a(Lcom/anythink/expressad/foundation/d/c;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/a/a;->a()Lcom/anythink/expressad/videocommon/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/videocommon/a/a;->a()Lcom/anythink/expressad/videocommon/a/a;

    invoke-static {p0}, Lcom/anythink/expressad/videocommon/a/a;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/reward/a/d;Ljava/util/List;ZI)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/util/List;ZI)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;ZI)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;",
            "Ljava/lang/String;",
            "ZI)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    move-object v3, p1

    move v6, p2

    move v7, p3

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/anythink/expressad/videocommon/b/e;->b(Ljava/lang/String;ZIZILjava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "_"

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    return p3

    :cond_0
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return p3

    :cond_1
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return p3

    :cond_2
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/anythink/expressad/videocommon/b/l;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return p3

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result p2

    if-eqz p2, :cond_4

    return p3

    :cond_4
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return p3

    :cond_5
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/anythink/expressad/videocommon/b/l;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    return p3

    :cond_7
    return v0
.end method

.method public static synthetic b(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->E:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 4

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "zip"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/anythink/expressad/videocommon/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x11

    iput v3, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 p1, 0x1

    aput-object v1, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p2, v0, p1

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private b(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "V3 data just requested back,requestId "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/foundation/d/d;)V

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/d;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ag:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d;->p:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d;->q:Z

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, p0, Lcom/anythink/expressad/reward/a/d;->r:Z

    if-eqz v1, :cond_4

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d;->r:Z

    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d;->t:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d;->s:Z

    const-string p1, "exception after load success"

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/anythink/expressad/reward/a/d;->r()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "exception"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mark cache data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/videocommon/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v1

    invoke-static {v1, v0}, Lcom/anythink/expressad/videocommon/a;->b(ILcom/anythink/expressad/foundation/d/c;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v9, ".zip"

    if-nez v1, :cond_3

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v10, Lcom/anythink/expressad/reward/a/d$i;

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/16 v5, 0x139

    iget-object v6, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/anythink/expressad/reward/a/d$i;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;ILcom/anythink/expressad/videocommon/e/d;Z)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_3
    :goto_1
    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmpt=1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v9, Lcom/anythink/expressad/reward/a/d$i;

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/16 v5, 0x35b

    iget-object v6, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    const/4 v7, 0x0

    move-object v1, v9

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/anythink/expressad/reward/a/d$i;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;ILcom/anythink/expressad/videocommon/e/d;Z)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    goto/16 :goto_0

    :cond_4
    new-instance v1, Lcom/anythink/expressad/reward/a/d$d;

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/anythink/expressad/reward/a/d$d;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private b(Lcom/anythink/expressad/foundation/d/c;)Z
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private b(Ljava/util/List;ZI)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;ZI)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/anythink/expressad/reward/a/d;->U:Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move v6, p2

    move v7, p3

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/anythink/expressad/videocommon/b/e;->b(Ljava/lang/String;ZIZILjava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "_"

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    return p3

    :cond_0
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return p3

    :cond_1
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return p3

    :cond_2
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/videocommon/b/l;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    return p3

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result p2

    if-eqz p2, :cond_4

    return p3

    :cond_4
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return p3

    :cond_5
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/videocommon/b/l;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    return p3

    :cond_7
    return v0
.end method

.method public static synthetic c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    return-object p0
.end method

.method private c(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ".zip"

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/anythink/expressad/reward/a/d$i;

    iget-object v6, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/16 v7, 0x139

    iget-object v8, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v3 .. v9}, Lcom/anythink/expressad/reward/a/d$i;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;ILcom/anythink/expressad/videocommon/e/d;Z)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v3

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cmpt=1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/anythink/expressad/reward/a/d$i;

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/16 v6, 0x35b

    iget-object v7, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/anythink/expressad/reward/a/d$i;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;ILcom/anythink/expressad/videocommon/e/d;Z)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object p1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    return-void

    :cond_4
    new-instance v1, Lcom/anythink/expressad/reward/a/d$d;

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/anythink/expressad/reward/a/d$d;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object p1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_5
    return-void
.end method

.method private c(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iput-object v0, v1, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Campaign request success: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/foundation/d/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v2

    new-instance v3, Lcom/anythink/expressad/reward/a/d$5;

    invoke-direct {v3, v1, v0}, Lcom/anythink/expressad/reward/a/d$5;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/d;)V

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onload load success,size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/foundation/d/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-object v0, Lcom/anythink/expressad/reward/b/a;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget v3, v1, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v3, v0

    iput v3, v1, Lcom/anythink/expressad/reward/a/d;->y:I

    :cond_2
    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz v0, :cond_3

    iget v3, v1, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->D()I

    move-result v0

    if-le v3, v0, :cond_4

    :cond_3
    iput v2, v1, Lcom/anythink/expressad/reward/a/d;->y:I

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onload \u7b97\u51fa \u4e0b\u6b21\u7684offset\u662f:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    iget v3, v1, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-static {v0, v3}, Lcom/anythink/expressad/reward/b/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "#######onload,save the ad data locally,size:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->ap()I

    move-result v3

    iput-boolean v2, v1, Lcom/anythink/expressad/reward/a/d;->p:Z

    iput-boolean v2, v1, Lcom/anythink/expressad/reward/a/d;->q:Z

    iget-object v4, v1, Lcom/anythink/expressad/reward/a/d;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-boolean v6, v1, Lcom/anythink/expressad/reward/a/d;->r:Z

    if-eqz v6, :cond_7

    iput-boolean v2, v1, Lcom/anythink/expressad/reward/a/d;->r:Z

    :cond_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v2, v1, Lcom/anythink/expressad/reward/a/d;->t:Z

    iput-boolean v2, v1, Lcom/anythink/expressad/reward/a/d;->s:Z

    invoke-static {}, Lcom/anythink/expressad/reward/a/c$m;->a()Lcom/anythink/expressad/reward/a/c;

    move-result-object v6

    iget-object v7, v1, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    iget-boolean v10, v1, Lcom/anythink/expressad/reward/a/d;->U:Z

    iget-boolean v2, v1, Lcom/anythink/expressad/reward/a/d;->T:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x11f

    const/16 v11, 0x11f

    goto :goto_1

    :cond_8
    const/16 v2, 0x5e

    const/16 v11, 0x5e

    :goto_1
    iget-object v12, v1, Lcom/anythink/expressad/reward/a/d;->x:Ljava/lang/String;

    iget-object v13, v1, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/anythink/expressad/reward/a/d$2;

    invoke-direct {v2, v1, v0, v5, v3}, Lcom/anythink/expressad/reward/a/d$2;-><init>(Lcom/anythink/expressad/reward/a/d;ZLcom/anythink/expressad/foundation/d/c;I)V

    new-instance v4, Lcom/anythink/expressad/reward/a/d$3;

    invoke-direct {v4, v1, v0, v5, v3}, Lcom/anythink/expressad/reward/a/d$3;-><init>(Lcom/anythink/expressad/reward/a/d;ZLcom/anythink/expressad/foundation/d/c;I)V

    move v8, v0

    move v9, v3

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    invoke-virtual/range {v6 .. v17}, Lcom/anythink/expressad/reward/a/c;->a(Landroid/content/Context;ZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/anythink/expressad/reward/a/c$c;Lcom/anythink/expressad/reward/a/c$i;)V

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/anythink/expressad/reward/a/c$m;->a()Lcom/anythink/expressad/reward/a/c;

    move-result-object v2

    iget-object v4, v1, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    iget-object v6, v1, Lcom/anythink/expressad/reward/a/d;->x:Ljava/lang/String;

    iget-object v7, v1, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/anythink/expressad/reward/a/d$4;

    invoke-direct {v9, v1, v5, v0, v3}, Lcom/anythink/expressad/reward/a/d$4;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;ZI)V

    move-object v3, v2

    invoke-virtual/range {v3 .. v9}, Lcom/anythink/expressad/reward/a/c;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/reward/a/c$i;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_a
    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->af:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Offer list is empty"

    iput-object v0, v1, Lcom/anythink/expressad/reward/a/d;->af:Ljava/lang/String;

    :cond_b
    iget-object v0, v1, Lcom/anythink/expressad/reward/a/d;->af:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p0, Lcom/anythink/expressad/reward/b/a;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "md5filename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/videocommon/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    new-instance v8, Lcom/anythink/expressad/reward/a/d$i;

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/16 v5, 0x1f1

    iget-object v6, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    move-object v1, v8

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/anythink/expressad/reward/a/d$i;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;ILcom/anythink/expressad/videocommon/e/d;Z)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/j;->a()Lcom/anythink/expressad/videocommon/b/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/videocommon/b/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    new-instance v3, Lcom/anythink/expressad/reward/a/d$f;

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-direct {v3, p0, v2, v4, v1}, Lcom/anythink/expressad/reward/a/d$f;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->ag:Ljava/util/List;

    return-object p0
.end method

.method private d(Lcom/anythink/expressad/foundation/d/d;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/d/d;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->A()I

    :cond_0
    if-eqz p1, :cond_12

    iget-object v1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    iget-object v1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/anythink/expressad/reward/a/d;->ag:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object p1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/foundation/d/c;

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    invoke-interface {p1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_11

    const v3, 0x7fffffff

    if-ge p1, v3, :cond_11

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->G()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v5

    const/16 v6, 0x11f

    if-eq v5, v6, :cond_2

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v5

    const/16 v6, 0x5e

    if-eq v5, v6, :cond_2

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->w()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :try_start_1
    sget-object v5, Lcom/anythink/expressad/foundation/g/c/a;->i:Lcom/anythink/expressad/foundation/g/c/a;

    invoke-static {v5}, Lcom/anythink/expressad/foundation/g/c/d;->b(Lcom/anythink/expressad/foundation/g/c/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->G()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/expressad/foundation/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    :cond_3
    const-string v7, ".html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<script>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/expressad/d/b/a;->a()Lcom/anythink/expressad/d/b/a;

    invoke-static {}, Lcom/anythink/expressad/d/b/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</script>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->G()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/foundation/d/c;->j(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_4

    :catch_0
    move-exception v4

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v5

    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Lcom/anythink/expressad/foundation/d/c;->j(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    :goto_3
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->G()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    const-string v3, "mraid resource write fail"

    invoke-direct {p0, v3}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    goto/16 :goto_a

    :goto_4
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    throw p1

    :cond_7
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->O()I

    move-result v4

    const/16 v5, 0x63

    if-eq v4, v5, :cond_10

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->e(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/expressad/foundation/h/w;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->G()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/expressad/foundation/h/w;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_f

    invoke-static {v3}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_7

    :cond_a
    const/4 v4, 0x2

    :goto_7
    invoke-virtual {v3, v4}, Lcom/anythink/expressad/foundation/d/c;->i(I)V

    :cond_b
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->ae()I

    move-result v4

    if-eq v4, v5, :cond_d

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v3}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    :goto_8
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    const-string v3, "APP ALREADY INSTALLED"

    :goto_9
    iput-object v3, p0, Lcom/anythink/expressad/reward/a/d;->af:Ljava/lang/String;

    goto :goto_a

    :cond_f
    const-string v3, "No video campaign"

    goto :goto_9

    :cond_10
    :goto_a
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onload,return campaign with the following video resources:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_b

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_b
    return-object v0
.end method

.method private d(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/videocommon/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    new-instance v1, Lcom/anythink/expressad/reward/a/d$i;

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/16 v6, 0x1f6

    iget-object v7, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/anythink/expressad/reward/a/d$i;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;ILcom/anythink/expressad/videocommon/e/d;Z)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/videocommon/b/i;->b(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_0
    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/anythink/expressad/reward/a/d$c;

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2}, Lcom/anythink/expressad/reward/a/d$c;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    :cond_1
    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/expressad/reward/a/d$c;

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2}, Lcom/anythink/expressad/reward/a/d$c;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic e(Lcom/anythink/expressad/reward/a/d;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private e(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/d/d;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/reward/a/d$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/reward/a/d$5;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/d;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c$c;->f()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c$c;->f()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c$c$a;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/anythink/expressad/foundation/d/c$c$a;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/anythink/expressad/reward/a/d$e;

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-direct {v4, p0, v0, v5}, Lcom/anythink/expressad/reward/a/d$e;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private static e(Lcom/anythink/expressad/foundation/d/c;)Z
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic f(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    return-object p0
.end method

.method private f(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onload \u5f00\u59cb\u4e0b\u8f7d\u89c6\u9891\u7d20\u6750 size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/videocommon/b/l;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/reward/a/d$b;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {v0, p0, v1}, Lcom/anythink/expressad/reward/a/d$b;-><init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/16 v3, 0x5e

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/util/List;ILcom/anythink/expressad/videocommon/d/c;)Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/videocommon/b/e;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic g(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->ah:Ljava/util/List;

    return-object p0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private g(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/anythink/expressad/reward/a/d;->y:I

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->D()I

    move-result p1

    if-le v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/expressad/reward/a/d;->y:I

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onload \u7b97\u51fa \u4e0b\u6b21\u7684offset\u662f:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    iget v0, p0, Lcom/anythink/expressad/reward/a/d;->y:I

    invoke-static {p1, v0}, Lcom/anythink/expressad/reward/b/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private h()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/reward/a/d;->S:I

    return v0
.end method

.method private h(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ah:Ljava/util/List;

    return-void
.end method

.method public static synthetic h(Lcom/anythink/expressad/reward/a/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/reward/a/d;->U:Z

    return p0
.end method

.method public static synthetic i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    return-object p0
.end method

.method private static i()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public static synthetic j(Lcom/anythink/expressad/reward/a/d;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private static j()V
    .locals 0

    return-void
.end method

.method public static synthetic k(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/foundation/d/d;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    return-object p0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->ad:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private static l()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public static synthetic l(Lcom/anythink/expressad/reward/a/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/reward/a/d;->ab:Z

    return p0
.end method

.method private static m()V
    .locals 0

    return-void
.end method

.method public static synthetic m(Lcom/anythink/expressad/reward/a/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/reward/a/d;->T:Z

    return p0
.end method

.method public static synthetic n(Lcom/anythink/expressad/reward/a/d;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/reward/a/d;->S:I

    return p0
.end method

.method private static n()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public static synthetic o(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/videocommon/e/d;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    return-object p0
.end method

.method private static o()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public static synthetic p(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->x:Ljava/lang/String;

    return-object p0
.end method

.method private static p()V
    .locals 0

    return-void
.end method

.method private q()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->a(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/anythink/expressad/videocommon/e/d;->D()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return v0
.end method

.method public static synthetic q(Lcom/anythink/expressad/reward/a/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    return-object p0
.end method

.method private r()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/expressad/reward/b/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private static s()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/anythink/expressad/reward/b/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/anythink/expressad/reward/b/a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private static t()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private static u()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/anythink/expressad/foundation/g/a/f;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/anythink/expressad/foundation/g/a/f;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private static v()V
    .locals 0

    return-void
.end method

.method private static synthetic w()V
    .locals 0

    return-void
.end method

.method private static synthetic x()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/reward/a/d;->S:I

    return-void
.end method

.method public final a(III)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/reward/a/d;->W:I

    iput p2, p0, Lcom/anythink/expressad/reward/a/d;->X:I

    iput p3, p0, Lcom/anythink/expressad/reward/a/d;->Y:I

    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/anythink/expressad/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/anythink/core/common/f/m;)V
    .locals 2

    :try_start_0
    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-static {p2}, Lcom/anythink/expressad/foundation/h/w;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "anythink_BaseAdActivity"

    const-string v0, "Activity is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    :goto_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    sget-object v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/anythink/expressad/a;->y:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->x:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->c:Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->d:Ljava/lang/String;

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->e:Ljava/lang/String;

    iget-boolean p5, p0, Lcom/anythink/expressad/reward/a/d;->T:Z

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->f:Ljava/lang/String;

    iget-boolean p5, p0, Lcom/anythink/expressad/reward/a/d;->U:Z

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->l:Ljava/lang/String;

    invoke-virtual {p2, p3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->m:Ljava/lang/String;

    invoke-virtual {p2, p3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object p3

    iget-object p5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {p3, p5}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "cur showing Offer requestId"

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p6, 0x0

    invoke-interface {p3, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p7}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    if-lez p5, :cond_4

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p7, "can show data: "

    invoke-direct {p5, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p7

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p3, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/expressad/foundation/d/c;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/anythink/expressad/reward/a/d;->n:Ljava/lang/String;

    :cond_3
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    const/4 p3, 0x1

    const/4 p6, 0x1

    goto :goto_1

    :cond_4
    iget-object p3, p0, Lcom/anythink/expressad/reward/a/d;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz p3, :cond_5

    const-string p1, "load failed"

    invoke-interface {p3, p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->g:Ljava/lang/String;

    invoke-virtual {p2, p3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean p3, p0, Lcom/anythink/expressad/reward/a/d;->T:Z

    if-eqz p3, :cond_6

    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->i:Ljava/lang/String;

    iget p5, p0, Lcom/anythink/expressad/reward/a/d;->W:I

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->j:Ljava/lang/String;

    iget p5, p0, Lcom/anythink/expressad/reward/a/d;->X:I

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->k:Ljava/lang/String;

    iget p5, p0, Lcom/anythink/expressad/reward/a/d;->Y:I

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    sget-object p3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    invoke-static {}, Lcom/anythink/expressad/reward/a/e$a;->a()Lcom/anythink/expressad/reward/a/e;

    move-result-object p3

    iget-object p4, p0, Lcom/anythink/expressad/reward/a/d;->x:Ljava/lang/String;

    iget-object p5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    iget-object p6, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {p3, p4, p5, p6}, Lcom/anythink/expressad/reward/a/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz p1, :cond_9

    const-string p2, "context or unitid is null"

    invoke-interface {p1, p2}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d;->F:Lcom/anythink/expressad/video/bt/module/b/h;

    if-eqz p2, :cond_a

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "show failed, exception is "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/reward/a/d;->z:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/anythink/expressad/reward/a/d;->B:I

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->C:Z

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->ag:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->p:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->q:Z

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/anythink/expressad/reward/a/d;->r:Z

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->r:Z

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->t:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->s:Z

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->v:Landroid/content/Context;

    if-nez v1, :cond_3

    const-string p1, "Context is null"

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "UnitId is null"

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    if-nez v1, :cond_5

    const-string p1, "RewardUnitSetting is null"

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    return-void

    :cond_5
    :try_start_1
    sget-object v1, Lcom/anythink/expressad/foundation/g/a/f;->h:Ljava/util/Map;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_6

    sget-object v1, Lcom/anythink/expressad/foundation/g/a/f;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/anythink/expressad/a;->a:Z

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_0
    :try_start_2
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "V3 data just requested back,requestId "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    :cond_7
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/foundation/d/d;)V

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->Z:Lcom/anythink/expressad/foundation/d/d;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/d;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->m:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_9
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ag:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_a
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->p:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->q:Z

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-boolean v1, p0, Lcom/anythink/expressad/reward/a/d;->r:Z

    if-eqz v1, :cond_b

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->r:Z

    :cond_b
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->t:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d;->s:Z

    const-string p1, "exception after load success"

    invoke-direct {p0, p1}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/anythink/expressad/reward/a/d;->r()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :catchall_1
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public final a(Lcom/anythink/expressad/reward/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->G:Lcom/anythink/expressad/reward/a/b;

    return-void
.end method

.method public final a(Lcom/anythink/expressad/videocommon/e/d;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->V()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    sget v0, Lcom/anythink/expressad/foundation/g/a;->cq:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->I:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->V()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    sput p1, Lcom/anythink/expressad/foundation/g/a;->cq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d;->T:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/util/List;ZI)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;ZI)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/util/List;ZI)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d;->U:Z

    return-void
.end method

.method public final c(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->n:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d;->n:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->n:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->m:Ljava/lang/String;

    return-object p1
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ap()I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/anythink/expressad/reward/a/d;->b(Ljava/util/List;ZI)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final d(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {}, Lcom/anythink/expressad/videocommon/a/a;->a()Lcom/anythink/expressad/videocommon/a/a;

    :cond_0
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Z)V
    .locals 6

    const-string v0, "_"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ah:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ah:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/foundation/d/c;->l(I)V

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/anythink/expressad/videocommon/b/l;->c(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/foundation/d/c;->l(I)V

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/anythink/expressad/videocommon/b/l;->c(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final f()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final f(Z)Z
    .locals 6

    const-string v0, "_"

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ah:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->ah:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/foundation/d/c;->l(I)V

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/anythink/expressad/videocommon/b/l;->c(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d;->aa:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/foundation/d/c;->l(I)V

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d;->w:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/anythink/expressad/videocommon/b/l;->c(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
