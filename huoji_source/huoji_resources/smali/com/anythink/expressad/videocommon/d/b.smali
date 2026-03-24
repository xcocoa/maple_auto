.class public abstract Lcom/anythink/expressad/videocommon/d/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/videocommon/d/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/videocommon/d/b;->b:Z

    iput-object p2, p0, Lcom/anythink/expressad/videocommon/d/b;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "close_scene"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/n/a;->a()Lcom/anythink/core/common/n/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/videocommon/d/b$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/videocommon/d/b$1;-><init>(Lcom/anythink/expressad/videocommon/d/b;Ljava/util/Map;)V

    invoke-virtual {v0, p2, v1}, Lcom/anythink/core/common/n/a;->a(Ljava/lang/String;Lcom/anythink/core/common/n/a$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/videocommon/d/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/videocommon/d/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/expressad/videocommon/d/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/videocommon/d/b;->b:Z

    return p0
.end method


# virtual methods
.method public a(ZLjava/lang/String;F)V
    .locals 0

    iget-boolean p1, p0, Lcom/anythink/expressad/videocommon/d/b;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/videocommon/d/b;->b:Z

    return-void
.end method
