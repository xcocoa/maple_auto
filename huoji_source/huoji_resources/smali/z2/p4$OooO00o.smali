.class public Lz2/p4$OooO00o;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/p4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/p4;


# direct methods
.method public constructor <init>(Lz2/p4;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lz2/p4$OooO00o;->OooO00o:Lz2/p4;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lz2/p4$OooO00o;->OooO00o:Lz2/p4;

    invoke-static {v0}, Lz2/p4;->OooO00o(Lz2/p4;)Lz2/p4$OooO0OO;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lz2/p4$OooO00o;->OooO00o:Lz2/p4;

    invoke-static {v0}, Lz2/p4;->OooO00o(Lz2/p4;)Lz2/p4$OooO0OO;

    move-result-object v0

    invoke-interface {v0}, Lz2/p4$OooO0OO;->onSuccess()V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/p4$OooO00o;->OooO00o:Lz2/p4;

    invoke-static {v0}, Lz2/p4;->OooO00o(Lz2/p4;)Lz2/p4$OooO0OO;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lz2/p4$OooO0OO;->onFailed(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
