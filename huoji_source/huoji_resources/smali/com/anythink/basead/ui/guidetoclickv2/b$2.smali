.class public final Lcom/anythink/basead/ui/guidetoclickv2/b$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/guidetoclickv2/b;->b(I)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

.field public final synthetic b:Lcom/anythink/basead/ui/guidetoclickv2/b;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/guidetoclickv2/b;Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    iput-object p2, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$2;->a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/b;

    iget-object v1, v1, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$2;->a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    check-cast v0, Lcom/anythink/basead/ui/guidetoclickv2/FingerG2CV2View;

    const/16 v1, 0x1fa

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/FingerG2CV2View;->setFingerViewMode(I)V

    :cond_0
    return-void
.end method
