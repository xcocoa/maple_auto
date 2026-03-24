.class public Lcom/cyjh/common/base/activity/BaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/base/activity/BaseActivity$OooO0O0;
    }
.end annotation


# instance fields
.field private OoooOoO:Landroid/app/ProgressDialog;

.field private OoooOoo:Lcom/cyjh/common/receiver/NetworkStatusReceiver;

.field private Ooooo00:Lz2/t3;

.field private Ooooo0o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/common/base/activity/BaseActivity$OooO0O0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->Ooooo0o:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public OooO0O0()V
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->OoooOoO:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public OooO0OO(Z)V
    .locals 0

    return-void
.end method

.method public OooO0Oo(Lcom/cyjh/common/base/activity/BaseActivity$OooO0O0;)V
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->Ooooo0o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0o(Lcom/cyjh/common/base/activity/BaseActivity$OooO0O0;)V
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->Ooooo0o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0o0(Landroid/content/Context;II)V
    .locals 1

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->OoooOoO:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/cyjh/common/base/activity/BaseActivity;->OoooOoO:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object p2, p0, Lcom/cyjh/common/base/activity/BaseActivity;->OoooOoO:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/common/base/activity/BaseActivity;->OoooOoO:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/cyjh/common/base/activity/BaseActivity;->OoooOoO:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->Ooooo0o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/common/base/activity/BaseActivity$OooO0O0;

    invoke-interface {v1, p1}, Lcom/cyjh/common/base/activity/BaseActivity$OooO0O0;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-static {}, Lz2/v3;->OooO()Lz2/v3;

    move-result-object p1

    invoke-virtual {p1, p0}, Lz2/v3;->OooO00o(Landroid/app/Activity;)V

    new-instance p1, Lcom/cyjh/common/base/activity/BaseActivity$OooO00o;

    invoke-direct {p1, p0}, Lcom/cyjh/common/base/activity/BaseActivity$OooO00o;-><init>(Lcom/cyjh/common/base/activity/BaseActivity;)V

    iput-object p1, p0, Lcom/cyjh/common/base/activity/BaseActivity;->Ooooo00:Lz2/t3;

    new-instance p1, Lcom/cyjh/common/receiver/NetworkStatusReceiver;

    invoke-direct {p1}, Lcom/cyjh/common/receiver/NetworkStatusReceiver;-><init>()V

    iput-object p1, p0, Lcom/cyjh/common/base/activity/BaseActivity;->OoooOoo:Lcom/cyjh/common/receiver/NetworkStatusReceiver;

    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->Ooooo00:Lz2/t3;

    invoke-virtual {p1, v0}, Lcom/cyjh/common/receiver/NetworkStatusReceiver;->OooO00o(Lz2/t3;)V

    iget-object p1, p0, Lcom/cyjh/common/base/activity/BaseActivity;->OoooOoo:Lcom/cyjh/common/receiver/NetworkStatusReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity;->OoooOoo:Lcom/cyjh/common/receiver/NetworkStatusReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lz2/v3;->OooO()Lz2/v3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/v3;->OooO0o0(Landroid/app/Activity;)V

    return-void
.end method
