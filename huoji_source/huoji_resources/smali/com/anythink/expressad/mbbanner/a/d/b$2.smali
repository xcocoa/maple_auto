.class public final Lcom/anythink/expressad/mbbanner/a/d/b$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/mbbanner/a/d/b;->b(Lcom/anythink/expressad/foundation/d/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/d/d;

.field public final synthetic b:Lcom/anythink/expressad/mbbanner/a/d/b;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/mbbanner/a/d/b;Lcom/anythink/expressad/foundation/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/b$2;->b:Lcom/anythink/expressad/mbbanner/a/d/b;

    iput-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/b$2;->a:Lcom/anythink/expressad/foundation/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/b;->a()Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b$2;->a:Lcom/anythink/expressad/foundation/d/d;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b$2;->b:Lcom/anythink/expressad/mbbanner/a/d/b;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/a/d/b;->c(Lcom/anythink/expressad/mbbanner/a/d/b;)Landroid/content/Context;

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/e/b;->a()V

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/b;->a()Ljava/lang/String;

    return-void
.end method
