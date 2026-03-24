.class public final Lz2/og$OooO00o;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/og;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/og;


# direct methods
.method public constructor <init>(Lz2/og;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lz2/og$OooO00o;->OooO00o:Lz2/og;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lz2/ag;->OooO0oo()Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {}, Lz2/ag;->OooO0o0()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lz2/ag;->OooO0Oo()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$string;->toast_failed_got_root:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lz2/ag;->OooO0o0()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lz2/lg;->OooO00o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-static {}, Lz2/ag;->OooO0oo()Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;->onRootProgress(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
