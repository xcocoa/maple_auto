.class public final Lz2/lv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final OooO0o0:Ljava/lang/String;


# instance fields
.field private final OooO00o:Lz2/iv;

.field private final OooO0O0:Z

.field private OooO0OO:Landroid/os/Handler;

.field private OooO0Oo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lz2/lv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/lv;->OooO0o0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lz2/iv;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/lv;->OooO00o:Lz2/iv;

    iput-boolean p2, p0, Lz2/lv;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lz2/lv;->OooO0OO:Landroid/os/Handler;

    iput p2, p0, Lz2/lv;->OooO0Oo:I

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    iget-object v0, p0, Lz2/lv;->OooO00o:Lz2/iv;

    invoke-virtual {v0}, Lz2/iv;->OooO0OO()Landroid/graphics/Point;

    move-result-object v0

    iget-boolean v1, p0, Lz2/lv;->OooO0O0:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    iget-object p2, p0, Lz2/lv;->OooO0OO:Landroid/os/Handler;

    if-eqz p2, :cond_1

    iget v1, p0, Lz2/lv;->OooO0Oo:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v1, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iput-object v2, p0, Lz2/lv;->OooO0OO:Landroid/os/Handler;

    :cond_1
    return-void
.end method
