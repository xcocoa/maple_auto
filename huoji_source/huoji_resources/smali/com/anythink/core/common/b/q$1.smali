.class public final Lcom/anythink/core/common/b/q$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/q;->a(Landroid/content/Context;Lcom/anythink/core/api/ATGDPRAuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/api/ATGDPRAuthCallback;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/anythink/core/common/b/q;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/b/q;Lcom/anythink/core/api/ATGDPRAuthCallback;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b/q$1;->c:Lcom/anythink/core/common/b/q;

    iput-object p2, p0, Lcom/anythink/core/common/b/q$1;->a:Lcom/anythink/core/api/ATGDPRAuthCallback;

    iput-object p3, p0, Lcom/anythink/core/common/b/q$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/b/q$1;->a:Lcom/anythink/core/api/ATGDPRAuthCallback;

    sput-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/core/common/b/q$1;->b:Landroid/content/Context;

    const-class v2, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/core/common/b/q$1;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
