.class public final Lcom/anythink/expressad/advanced/c/b$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/advanced/c/b;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/d/c;

.field public final synthetic b:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

.field public final synthetic c:Lcom/anythink/expressad/advanced/c/b;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/advanced/c/b;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/b$5;->c:Lcom/anythink/expressad/advanced/c/b;

    iput-object p2, p0, Lcom/anythink/expressad/advanced/c/b$5;->a:Lcom/anythink/expressad/foundation/d/c;

    iput-object p3, p0, Lcom/anythink/expressad/advanced/c/b$5;->b:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$5;->c:Lcom/anythink/expressad/advanced/c/b;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/b$5;->a:Lcom/anythink/expressad/foundation/d/c;

    iget-object v2, p0, Lcom/anythink/expressad/advanced/c/b$5;->b:Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/advanced/c/b;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;Z)V

    return-void
.end method
