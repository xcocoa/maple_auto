.class public final Lz2/ie$OooO00o;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ie;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/ie;


# direct methods
.method public constructor <init>(Lz2/ie;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lz2/ie$OooO00o;->OooO00o:Lz2/ie;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Lz2/ag;->OooO0oo()Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/ag;->OooO0oo()Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;->onRootProgress(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
