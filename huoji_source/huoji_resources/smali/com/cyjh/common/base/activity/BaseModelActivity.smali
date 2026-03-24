.class public abstract Lcom/cyjh/common/base/activity/BaseModelActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/lifecycle/AndroidViewModel;",
        ">",
        "Lcom/cyjh/common/base/activity/BaseActivity;"
    }
.end annotation


# instance fields
.field public OooooO0:Landroidx/lifecycle/AndroidViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract OooO()V
.end method

.method public abstract OooO0oO()I
.end method

.method public abstract OooO0oo()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract initView()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooO0oO()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->initView()V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooO0oo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/AndroidViewModel;

    iput-object p1, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    invoke-virtual {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooO()V

    return-void
.end method
