.class public final Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup$1;->b:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    iput p2, p0, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup$1;->b:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;->a(Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;)Lcom/anythink/expressad/advanced/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup$1;->b:Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;->a(Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;)Lcom/anythink/expressad/advanced/d/c;

    move-result-object v0

    iget v1, p0, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup$1;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/d/c;->d(I)V

    :cond_0
    return-void
.end method
