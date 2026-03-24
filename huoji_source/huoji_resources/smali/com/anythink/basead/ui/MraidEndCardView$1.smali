.class public final Lcom/anythink/basead/ui/MraidEndCardView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/MraidEndCardView;->init(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/MraidEndCardView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/MraidEndCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/MraidEndCardView$1;->a:Lcom/anythink/basead/ui/MraidEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/basead/ui/MraidEndCardView$1;->a:Lcom/anythink/basead/ui/MraidEndCardView;

    iget-object v0, p1, Lcom/anythink/basead/ui/MraidEndCardView;->f:Lcom/anythink/basead/ui/MraidEndCardView$a;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseEndCardView;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->E()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/anythink/basead/ui/MraidEndCardView$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
