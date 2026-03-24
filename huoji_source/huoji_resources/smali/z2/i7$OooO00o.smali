.class public Lz2/i7$OooO00o;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/i7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/i7;


# direct methods
.method public constructor <init>(Lz2/i7;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lz2/i7$OooO00o;->OooO00o:Lz2/i7;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lz2/oi;->OooO0o()Lz2/oi;

    move-result-object v0

    iget-object v1, p0, Lz2/i7$OooO00o;->OooO00o:Lz2/i7;

    invoke-virtual {v1}, Lz2/i7;->OooOO0()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lz2/oi;->OooO0o0(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method
