.class public final Lcom/anythink/core/common/b/e$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/e;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/anythink/core/common/b/e;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/b/e;J)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b/e$2;->b:Lcom/anythink/core/common/b/e;

    iput-wide p2, p0, Lcom/anythink/core/common/b/e$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/b/e$2;->b:Lcom/anythink/core/common/b/e;

    iget-wide v1, p0, Lcom/anythink/core/common/b/e$2;->a:J

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/b/e;->a(Lcom/anythink/core/common/b/e;J)V

    return-void
.end method
