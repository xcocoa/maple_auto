.class public Lz2/j40$OooO;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/j40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lz2/j40$OooO0o;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lz2/j40$OooO0o;->OooO0O0:Ljava/lang/Object;

    check-cast p1, Lz2/t30;

    iget-object v1, v0, Lz2/j40$OooO0o;->OooO0o:Lorg/jdeferred/Promise$State;

    iget-object v2, v0, Lz2/j40$OooO0o;->OooO0OO:Ljava/lang/Object;

    iget-object v0, v0, Lz2/j40$OooO0o;->OooO0Oo:Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v0}, Lz2/t30;->OooO0O0(Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lz2/j40$OooO0o;->OooO0O0:Ljava/lang/Object;

    check-cast p1, Lz2/b40;

    iget-object v0, v0, Lz2/j40$OooO0o;->OooO0Oo:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lz2/b40;->OooO0O0(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lz2/j40$OooO0o;->OooO0O0:Ljava/lang/Object;

    check-cast p1, Lz2/e40;

    iget-object v0, v0, Lz2/j40$OooO0o;->OooO0o0:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lz2/e40;->OooO0O0(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p1, v0, Lz2/j40$OooO0o;->OooO0O0:Ljava/lang/Object;

    check-cast p1, Lz2/y30;

    iget-object v0, v0, Lz2/j40$OooO0o;->OooO0OO:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lz2/y30;->OooO0O0(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
