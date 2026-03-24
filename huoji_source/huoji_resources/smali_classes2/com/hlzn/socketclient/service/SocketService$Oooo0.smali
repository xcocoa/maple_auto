.class public Lcom/hlzn/socketclient/service/SocketService$Oooo0;
.super Landroid/os/Binder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hlzn/socketclient/service/SocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Oooo0"
.end annotation


# instance fields
.field private OooO00o:Lcom/hlzn/socketclient/service/SocketService;

.field public OooO0O0:Lz2/fu;

.field public final synthetic OooO0OO:Lcom/hlzn/socketclient/service/SocketService;


# direct methods
.method public constructor <init>(Lcom/hlzn/socketclient/service/SocketService;Lcom/hlzn/socketclient/service/SocketService;)V
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService$Oooo0;->OooO0OO:Lcom/hlzn/socketclient/service/SocketService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p2, p0, Lcom/hlzn/socketclient/service/SocketService$Oooo0;->OooO00o:Lcom/hlzn/socketclient/service/SocketService;

    return-void
.end method


# virtual methods
.method public sendMethod(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService$Oooo0;->OooO00o:Lcom/hlzn/socketclient/service/SocketService;

    invoke-virtual {v0, p1}, Lcom/hlzn/socketclient/service/SocketService;->Oooo0oO(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService$Oooo0;->OooO0O0:Lz2/fu;

    invoke-interface {v0, p1}, Lz2/fu;->OooO00o(Ljava/lang/Object;)V

    return-void
.end method

.method public setOnServiceCallBack(Lz2/fu;)V
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService$Oooo0;->OooO0O0:Lz2/fu;

    return-void
.end method
