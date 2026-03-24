.class public final Lcom/anythink/basead/ui/b/f$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/b/f;->a(Lcom/anythink/basead/ui/BaseShakeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/b/f;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/b/f$2;->a:Lcom/anythink/basead/ui/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/anythink/basead/ui/b/f$2;->a:Lcom/anythink/basead/ui/b/f;

    iget-object p1, p1, Lcom/anythink/basead/ui/b/b;->h:Lcom/anythink/basead/ui/b/b$a;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/anythink/basead/ui/b/b$a;->a(II)V

    :cond_0
    return-void
.end method
