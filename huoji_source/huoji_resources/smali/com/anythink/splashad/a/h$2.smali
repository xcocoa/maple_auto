.class public final Lcom/anythink/splashad/a/h$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/a/h;->a(Lcom/anythink/splashad/api/ATSplashSkipInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/splashad/api/ATSplashSkipAdListener;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Lcom/anythink/splashad/a/h;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/a/h;Lcom/anythink/splashad/api/ATSplashSkipAdListener;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/a/h$2;->d:Lcom/anythink/splashad/a/h;

    iput-object p2, p0, Lcom/anythink/splashad/a/h$2;->a:Lcom/anythink/splashad/api/ATSplashSkipAdListener;

    iput-wide p3, p0, Lcom/anythink/splashad/a/h$2;->b:J

    iput-wide p5, p0, Lcom/anythink/splashad/a/h$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/splashad/a/h$2;->a:Lcom/anythink/splashad/api/ATSplashSkipAdListener;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/anythink/splashad/a/h$2;->b:J

    iget-object v3, p0, Lcom/anythink/splashad/a/h$2;->d:Lcom/anythink/splashad/a/h;

    iget-wide v3, v3, Lcom/anythink/splashad/a/h;->c:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/anythink/splashad/api/ATSplashSkipAdListener;->onAdTick(JJ)V

    iget-object v0, p0, Lcom/anythink/splashad/a/h$2;->d:Lcom/anythink/splashad/a/h;

    iget-wide v1, v0, Lcom/anythink/splashad/a/h;->c:J

    iget-wide v3, p0, Lcom/anythink/splashad/a/h$2;->c:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/anythink/splashad/a/h;->c:J

    :cond_0
    return-void
.end method
