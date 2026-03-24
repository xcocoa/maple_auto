.class public final Lcom/anythink/basead/ui/guidetoclickv2/JumpConfirmG2CV2View$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/guidetoclickv2/JumpConfirmG2CV2View;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/guidetoclickv2/JumpConfirmG2CV2View;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/guidetoclickv2/JumpConfirmG2CV2View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/JumpConfirmG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/JumpConfirmG2CV2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/JumpConfirmG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/JumpConfirmG2CV2View;

    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->b:Lcom/anythink/basead/ui/b/b$a;

    if-eqz p1, :cond_0

    const/16 v0, 0xb

    const/16 v1, 0x13

    invoke-interface {p1, v0, v1}, Lcom/anythink/basead/ui/b/b$a;->a(II)V

    :cond_0
    return-void
.end method
