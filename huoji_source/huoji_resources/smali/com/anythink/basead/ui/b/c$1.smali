.class public final Lcom/anythink/basead/ui/b/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/b/c;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/view/View;ILcom/anythink/basead/ui/b/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/b/c;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/b/c$1;->a:Lcom/anythink/basead/ui/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/anythink/basead/ui/b/c$1;->a:Lcom/anythink/basead/ui/b/c;

    iget-object p1, p1, Lcom/anythink/basead/ui/b/b;->h:Lcom/anythink/basead/ui/b/b$a;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-interface {p1, v0, v1}, Lcom/anythink/basead/ui/b/b$a;->a(II)V

    :cond_0
    return-void
.end method
