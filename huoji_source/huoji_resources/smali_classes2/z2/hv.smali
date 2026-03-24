.class public final Lz2/hv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# static fields
.field private static final OooO0OO:Ljava/lang/String;

.field private static final OooO0Oo:J = 0x5dcL


# instance fields
.field private OooO00o:Landroid/os/Handler;

.field private OooO0O0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lz2/hv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/hv;->OooO0OO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lz2/hv;->OooO00o:Landroid/os/Handler;

    iput p2, p0, Lz2/hv;->OooO0O0:I

    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    iget-object p2, p0, Lz2/hv;->OooO00o:Landroid/os/Handler;

    if-eqz p2, :cond_0

    iget v0, p0, Lz2/hv;->OooO0O0:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lz2/hv;->OooO00o:Landroid/os/Handler;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/hv;->OooO00o:Landroid/os/Handler;

    :cond_0
    return-void
.end method
