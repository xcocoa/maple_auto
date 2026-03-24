.class public final Lcom/zbar/zbar/decode/CaptureActivityHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zbar/zbar/decode/CaptureActivityHandler$State;
    }
.end annotation


# instance fields
.field public OooO00o:Lz2/nv;

.field public OooO0O0:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

.field private OooO0OO:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO00o:Lz2/nv;

    iput-object v0, p0, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO0O0:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iput-object p1, p0, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO0O0:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    new-instance v0, Lz2/nv;

    invoke-direct {v0, p1}, Lz2/nv;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V

    iput-object v0, p0, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO00o:Lz2/nv;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object p1, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;->SUCCESS:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO0OO:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    invoke-static {}, Lz2/jv;->OooO0O0()Lz2/jv;

    move-result-object p1

    invoke-virtual {p1}, Lz2/jv;->OooOO0()V

    invoke-direct {p0}, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO0O0()V

    return-void
.end method

.method private OooO0O0()V
    .locals 3

    iget-object v0, p0, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO0OO:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    sget-object v1, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;->SUCCESS:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;->PREVIEW:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO0OO:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    invoke-static {}, Lz2/jv;->OooO0O0()Lz2/jv;

    move-result-object v0

    iget-object v1, p0, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO00o:Lz2/nv;

    invoke-virtual {v1}, Lz2/nv;->OooO00o()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f090267

    invoke-virtual {v0, v1, v2}, Lz2/jv;->OooO(Landroid/os/Handler;I)V

    invoke-static {}, Lz2/jv;->OooO0O0()Lz2/jv;

    move-result-object v0

    const v1, 0x7f09022b

    invoke-virtual {v0, p0, v1}, Lz2/jv;->OooO0oo(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    sget-object v0, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;->DONE:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO0OO:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    invoke-static {}, Lz2/jv;->OooO0O0()Lz2/jv;

    move-result-object v0

    invoke-virtual {v0}, Lz2/jv;->OooOO0O()V

    const v0, 0x7f090269

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const v0, 0x7f090268

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const v0, 0x7f090267

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const v0, 0x7f09022b

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO0O0()V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;->SUCCESS:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO0OO:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    iget-object v0, p0, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO0O0:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOO0o(Ljava/lang/String;)V

    :sswitch_2
    sget-object p1, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;->PREVIEW:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO0OO:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    invoke-static {}, Lz2/jv;->OooO0O0()Lz2/jv;

    move-result-object p1

    iget-object v0, p0, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO00o:Lz2/nv;

    invoke-virtual {v0}, Lz2/nv;->OooO00o()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f090267

    invoke-virtual {p1, v0, v1}, Lz2/jv;->OooO(Landroid/os/Handler;I)V

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO0OO:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    sget-object v0, Lcom/zbar/zbar/decode/CaptureActivityHandler$State;->PREVIEW:Lcom/zbar/zbar/decode/CaptureActivityHandler$State;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lz2/jv;->OooO0O0()Lz2/jv;

    move-result-object p1

    const v0, 0x7f09022b

    invoke-virtual {p1, p0, v0}, Lz2/jv;->OooO0oo(Landroid/os/Handler;I)V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09022b -> :sswitch_3
        0x7f090268 -> :sswitch_2
        0x7f090269 -> :sswitch_1
        0x7f0903b3 -> :sswitch_0
    .end sparse-switch
.end method
