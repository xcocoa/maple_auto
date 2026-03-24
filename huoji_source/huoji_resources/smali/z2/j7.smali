.class public Lz2/j7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/j7$OooO0O0;
    }
.end annotation


# static fields
.field private static final OooO0Oo:Lz2/j7;


# instance fields
.field private OooO00o:Lz2/j7$OooO0O0;

.field private OooO0O0:Landroid/os/Messenger;

.field private OooO0OO:Landroid/os/Messenger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/j7;

    invoke-direct {v0}, Lz2/j7;-><init>()V

    sput-object v0, Lz2/j7;->OooO0Oo:Lz2/j7;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/j7$OooO0O0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/j7$OooO0O0;-><init>(Lz2/j7$OooO00o;)V

    iput-object v0, p0, Lz2/j7;->OooO00o:Lz2/j7$OooO0O0;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lz2/j7;->OooO00o:Lz2/j7$OooO0O0;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lz2/j7;->OooO0O0:Landroid/os/Messenger;

    return-void
.end method

.method public static OooO0O0()Lz2/j7;
    .locals 1

    sget-object v0, Lz2/j7;->OooO0Oo:Lz2/j7;

    return-object v0
.end method


# virtual methods
.method public OooO(Lz2/j7$OooO0O0;)V
    .locals 0

    iput-object p1, p0, Lz2/j7;->OooO00o:Lz2/j7$OooO0O0;

    return-void
.end method

.method public OooO00o()Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lz2/j7;->OooO0OO:Landroid/os/Messenger;

    return-object v0
.end method

.method public OooO0OO()Lz2/j7$OooO0O0;
    .locals 1

    iget-object v0, p0, Lz2/j7;->OooO00o:Lz2/j7$OooO0O0;

    return-object v0
.end method

.method public OooO0Oo()Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lz2/j7;->OooO0O0:Landroid/os/Messenger;

    return-object v0
.end method

.method public OooO0o(I)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bindActionKey"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object p1, p0, Lz2/j7;->OooO0OO:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public OooO0o0(I)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bindTypeKey"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object p1, p0, Lz2/j7;->OooO0OO:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public OooO0oO(IILjava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bindTypeKey"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bindMsgKey"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bindActionKey"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object p1, p0, Lz2/j7;->OooO0OO:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public OooO0oo(Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lz2/j7;->OooO0OO:Landroid/os/Messenger;

    return-void
.end method

.method public OooOO0(Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lz2/j7;->OooO0O0:Landroid/os/Messenger;

    return-void
.end method
