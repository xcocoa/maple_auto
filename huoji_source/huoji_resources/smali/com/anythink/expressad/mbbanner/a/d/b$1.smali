.class public final Lcom/anythink/expressad/mbbanner/a/d/b$1;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/mbbanner/a/d/b;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/expressad/mbbanner/a/d/b;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/mbbanner/a/d/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/b$1;->b:Lcom/anythink/expressad/mbbanner/a/d/b;

    iput-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b$1;->b:Lcom/anythink/expressad/mbbanner/a/d/b;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/a/d/b;->a(Lcom/anythink/expressad/mbbanner/a/d/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b$1;->b:Lcom/anythink/expressad/mbbanner/a/d/b;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/a/d/b;->b(Lcom/anythink/expressad/mbbanner/a/d/b;)Z

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b$1;->b:Lcom/anythink/expressad/mbbanner/a/d/b;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/b$1;->a:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/anythink/expressad/mbbanner/a/d/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method
