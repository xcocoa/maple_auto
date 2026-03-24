.class public final Lcom/anythink/splashad/a/h$1;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/a/h;->a(Lcom/anythink/splashad/api/ATSplashSkipInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lcom/anythink/core/common/o/a/f$b;

.field public final synthetic c:Lcom/anythink/splashad/api/ATSplashSkipAdListener;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:Lcom/anythink/splashad/a/h;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/a/h;Landroid/view/ViewGroup;Lcom/anythink/core/common/o/a/f$b;Lcom/anythink/splashad/api/ATSplashSkipAdListener;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/a/h$1;->f:Lcom/anythink/splashad/a/h;

    iput-object p2, p0, Lcom/anythink/splashad/a/h$1;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/anythink/splashad/a/h$1;->b:Lcom/anythink/core/common/o/a/f$b;

    iput-object p4, p0, Lcom/anythink/splashad/a/h$1;->c:Lcom/anythink/splashad/api/ATSplashSkipAdListener;

    iput-wide p5, p0, Lcom/anythink/splashad/a/h$1;->d:J

    iput-wide p7, p0, Lcom/anythink/splashad/a/h$1;->e:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/splashad/a/h$1;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/splashad/a/h$1;->b:Lcom/anythink/core/common/o/a/f$b;

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/x;->a(Landroid/view/View;Lcom/anythink/core/common/o/a/f$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/a/h$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/splashad/a/h$1$1;-><init>(Lcom/anythink/splashad/a/h$1;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
