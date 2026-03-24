.class public Lcom/cyjh/common/base/activity/BaseActivity$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/t3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cyjh/common/base/activity/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/common/base/activity/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/base/activity/BaseActivity$OooO00o;->OooO00o:Lcom/cyjh/common/base/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseActivity$OooO00o;->OooO00o:Lcom/cyjh/common/base/activity/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->OooO0OO(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cyjh/common/base/activity/BaseActivity$OooO00o;->OooO00o:Lcom/cyjh/common/base/activity/BaseActivity;

    sget v0, Lcom/cyjh/common/R$string;->network_off:I

    invoke-static {p1, v0}, Lz2/c5;->OooO0O0(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
