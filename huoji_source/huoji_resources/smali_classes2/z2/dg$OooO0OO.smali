.class public final Lz2/dg$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/dg;->o000oOoO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/dg;


# direct methods
.method public constructor <init>(Lz2/dg;)V
    .locals 0

    iput-object p1, p0, Lz2/dg$OooO0OO;->OoooOoO:Lz2/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lz2/dg$OooO0OO;->OoooOoO:Lz2/dg;

    iget-object v0, v0, Lz2/dg;->OooOOo:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x3ea

    const-string v2, "root\u8fdb\u7a0b\u5f02\u5e38\u7ec8\u6b62"

    invoke-interface {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onStopScript(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lz2/dg$OooO0OO;->OoooOoO:Lz2/dg;

    iget-object v0, v0, Lz2/dg;->OooO0oo:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->toast_engine_crash_then_restart:I

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->makeText(Landroid/content/Context;II)Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->show()V

    return-void
.end method
