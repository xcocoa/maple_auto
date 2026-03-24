.class public final Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView$1;
.super Lcom/anythink/basead/ui/animplayerview/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView$1;->a:Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;

    invoke-direct {p0}, Lcom/anythink/basead/ui/animplayerview/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView$1;->a:Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->a(Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView$1;->a:Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->a(Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView$1;->a:Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->a(Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
