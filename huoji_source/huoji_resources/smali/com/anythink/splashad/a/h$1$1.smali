.class public final Lcom/anythink/splashad/a/h$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/a/h$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/splashad/a/h$1;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/a/h$1;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/a/h$1$1;->a:Lcom/anythink/splashad/a/h$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/splashad/a/h$1$1;->a:Lcom/anythink/splashad/a/h$1;

    iget-object v1, v0, Lcom/anythink/splashad/a/h$1;->f:Lcom/anythink/splashad/a/h;

    iget-wide v2, v1, Lcom/anythink/splashad/a/h;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/anythink/splashad/a/h;->a(I)V

    iget-object v0, p0, Lcom/anythink/splashad/a/h$1$1;->a:Lcom/anythink/splashad/a/h$1;

    iget-object v0, v0, Lcom/anythink/splashad/a/h$1;->f:Lcom/anythink/splashad/a/h;

    invoke-virtual {v0}, Lcom/anythink/splashad/a/h;->onSplashAdDismiss()V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/anythink/splashad/a/h$1;->c:Lcom/anythink/splashad/api/ATSplashSkipAdListener;

    if-eqz v1, :cond_1

    iget-wide v4, v0, Lcom/anythink/splashad/a/h$1;->d:J

    invoke-interface {v1, v4, v5, v2, v3}, Lcom/anythink/splashad/api/ATSplashSkipAdListener;->onAdTick(JJ)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/splashad/a/h$1$1;->a:Lcom/anythink/splashad/a/h$1;

    iget-object v1, v0, Lcom/anythink/splashad/a/h$1;->f:Lcom/anythink/splashad/a/h;

    iget-wide v2, v1, Lcom/anythink/splashad/a/h;->c:J

    iget-wide v4, v0, Lcom/anythink/splashad/a/h$1;->e:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/anythink/splashad/a/h;->c:J

    return-void
.end method
