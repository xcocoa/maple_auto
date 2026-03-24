.class public Lz2/r7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/r7$OooO0O0;
    }
.end annotation


# static fields
.field private static final OooO0o:Lz2/r7;

.field private static final OooO0o0:Ljava/lang/String; = "z2.r7"


# instance fields
.field private OooO00o:Landroid/os/Messenger;

.field private OooO0O0:Landroid/content/ServiceConnection;

.field private OooO0OO:Lz2/r7$OooO0O0;

.field private OooO0Oo:Landroid/os/Messenger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/r7;

    invoke-direct {v0}, Lz2/r7;-><init>()V

    sput-object v0, Lz2/r7;->OooO0o:Lz2/r7;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/r7$OooO0O0;

    invoke-direct {v0}, Lz2/r7$OooO0O0;-><init>()V

    iput-object v0, p0, Lz2/r7;->OooO0OO:Lz2/r7$OooO0O0;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lz2/r7;->OooO0OO:Lz2/r7$OooO0O0;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lz2/r7;->OooO0Oo:Landroid/os/Messenger;

    new-instance v0, Lz2/r7$OooO00o;

    invoke-direct {v0, p0}, Lz2/r7$OooO00o;-><init>(Lz2/r7;)V

    iput-object v0, p0, Lz2/r7;->OooO0O0:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic OooO00o(Lz2/r7;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lz2/r7;->OooO00o:Landroid/os/Messenger;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/r7;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lz2/r7;->OooO00o:Landroid/os/Messenger;

    return-object p1
.end method

.method public static synthetic OooO0OO(Lz2/r7;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lz2/r7;->OooO0Oo:Landroid/os/Messenger;

    return-object p0
.end method

.method public static synthetic OooO0Oo()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/r7;->OooO0o0:Ljava/lang/String;

    return-object v0
.end method

.method public static OooO0o()Lz2/r7;
    .locals 1

    sget-object v0, Lz2/r7;->OooO0o:Lz2/r7;

    return-object v0
.end method


# virtual methods
.method public OooO0o0(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lz2/r7;->OooO0O0:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method public OooO0oO(I)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bindTypeKey"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lz2/r7;->OooO0Oo:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object p1, p0, Lz2/r7;->OooO00o:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public OooO0oo(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lz2/r7;->OooO0O0:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/r7;->OooO0OO:Lz2/r7$OooO0O0;

    iput-object p1, p0, Lz2/r7;->OooO0Oo:Landroid/os/Messenger;

    iput-object p1, p0, Lz2/r7;->OooO00o:Landroid/os/Messenger;

    return-void
.end method
