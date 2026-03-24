.class public final Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity$1;->a:Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity$1;->a:Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->a()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->a()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
