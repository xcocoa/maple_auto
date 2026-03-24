.class public final Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/reward/player/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;->b:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "1"

    iput-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;->b:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;->a:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "2"

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;->b:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "5-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;->b:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    iget-wide v5, v4, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->q:J

    iget-wide v7, v4, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->r:J

    cmp-long v4, v5, v7

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;->a:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "3"

    iput-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;->b:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "6-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$3;->b:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    iget-wide v4, v3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->q:J

    iget-wide v6, v3, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->r:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "2"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method
