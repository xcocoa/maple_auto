.class public final Lcom/anythink/core/common/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/a;->a(Landroid/content/Context;Lcom/anythink/core/common/f/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/anythink/core/common/f/h;

.field public final synthetic c:Lcom/anythink/core/common/f/b;

.field public final synthetic d:Lcom/anythink/core/api/ATBaseAdAdapter;

.field public final synthetic e:Lcom/anythink/core/common/a;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/a;Landroid/content/Context;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/b;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/a$1;->e:Lcom/anythink/core/common/a;

    iput-object p2, p0, Lcom/anythink/core/common/a$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    iput-object p4, p0, Lcom/anythink/core/common/a$1;->c:Lcom/anythink/core/common/f/b;

    iput-object p5, p0, Lcom/anythink/core/common/a$1;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/core/common/a$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->aj()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/h;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    iget-object v0, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/core/common/a$1;->e:Lcom/anythink/core/common/a;

    iget-object v1, p0, Lcom/anythink/core/common/a$1;->c:Lcom/anythink/core/common/f/b;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/a;->a(Lcom/anythink/core/common/f/b;)V

    iget-object v0, p0, Lcom/anythink/core/common/a$1;->e:Lcom/anythink/core/common/a;

    iget-object v1, p0, Lcom/anythink/core/common/a$1;->c:Lcom/anythink/core/common/f/b;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/a;->b(Lcom/anythink/core/common/f/b;)V

    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/f;->b()Lcom/anythink/core/api/MediationBidManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/core/common/a$1;->b:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/a$1;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v2}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/api/MediationBidManager;->notifyWinnerDisplay(Ljava/lang/String;Lcom/anythink/core/common/f/av;)V

    :cond_0
    return-void
.end method
