.class public final Lcom/anythink/basead/ui/BaseScreenATView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseScreenATView;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/BaseScreenATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseScreenATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$2;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$2;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, p1, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->isMute()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$2;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    :goto_0
    iput-boolean v0, p1, Lcom/anythink/basead/ui/BaseScreenATView;->I:Z

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/MuteImageView;->setMute(Z)V

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$2;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->setMute(Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$2;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
