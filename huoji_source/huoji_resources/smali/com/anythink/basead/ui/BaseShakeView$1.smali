.class public final Lcom/anythink/basead/ui/BaseShakeView$1;
.super Lcom/anythink/basead/c/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/ui/BaseShakeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/anythink/basead/ui/BaseShakeView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseShakeView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseShakeView$1;->h:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-direct {p0}, Lcom/anythink/basead/c/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView$1;->h:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView$1;->h:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-static {v0}, Lcom/anythink/basead/ui/BaseShakeView;->a(Lcom/anythink/basead/ui/BaseShakeView;)Lcom/anythink/basead/ui/BaseShakeView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView$1;->h:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-static {v0}, Lcom/anythink/basead/ui/BaseShakeView;->a(Lcom/anythink/basead/ui/BaseShakeView;)Lcom/anythink/basead/ui/BaseShakeView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/ui/BaseShakeView$a;->a()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method
