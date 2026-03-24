.class public Lcom/cyjh/common/view/PassWordView$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/view/PassWordView;->OooO0oO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lcom/cyjh/common/view/PassWordView;


# direct methods
.method public constructor <init>(Lcom/cyjh/common/view/PassWordView;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordView$OooO00o;->OoooOoO:Lcom/cyjh/common/view/PassWordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView$OooO00o;->OoooOoO:Lcom/cyjh/common/view/PassWordView;

    invoke-static {v0}, Lcom/cyjh/common/view/PassWordView;->OooO00o(Lcom/cyjh/common/view/PassWordView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/cyjh/common/view/PassWordView;->OooO0O0(Lcom/cyjh/common/view/PassWordView;Z)Z

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView$OooO00o;->OoooOoO:Lcom/cyjh/common/view/PassWordView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordView$OooO00o;->OoooOoO:Lcom/cyjh/common/view/PassWordView;

    invoke-static {v0}, Lcom/cyjh/common/view/PassWordView;->OooO0OO(Lcom/cyjh/common/view/PassWordView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
