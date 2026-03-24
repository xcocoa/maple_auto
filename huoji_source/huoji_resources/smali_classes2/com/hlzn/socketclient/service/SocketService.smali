.class public Lcom/hlzn/socketclient/service/SocketService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hlzn/socketclient/service/SocketService$Oooo0;
    }
.end annotation


# static fields
.field public static o0OO00O:Ljava/lang/Object; = null

.field private static final o0Oo0oo:Ljava/lang/String;

.field public static final oo0o0Oo:I = 0x1


# instance fields
.field private OoooOoO:Ljava/lang/Long;

.field private OoooOoo:Ljava/lang/String;

.field private Ooooo00:Ljava/lang/String;

.field private Ooooo0o:Ljava/lang/String;

.field private OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

.field private OooooOO:Ljava/lang/Thread;

.field private OooooOo:Ljava/net/Socket;

.field private Oooooo:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private Oooooo0:Ljava/net/InetSocketAddress;

.field private OoooooO:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private Ooooooo:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private o00O0O:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private o00Oo0:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public o00Ooo:Ljava/lang/Thread;

.field public o00o0O:Ljava/lang/Thread;

.field public o00oO0O:Z

.field public o00oO0o:Z

.field public o00ooo:Ljava/lang/Thread;

.field private o0OOO0o:Ljava/io/File;

.field private o0OoOo0:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public o0ooOO0:Lcom/hlzn/socketclient/service/SocketService$Oooo0;

.field public o0ooOOo:Z

.field private o0ooOoO:Lz2/yt;

.field public oo000o:Z

.field private ooOO:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hlzn/socketclient/service/SocketService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hlzn/socketclient/service/SocketService;->o0Oo0oo:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hlzn/socketclient/service/SocketService;->o0OO00O:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hlzn/socketclient/service/SocketService;->oo000o:Z

    iput-boolean v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00oO0o:Z

    iput-boolean v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00oO0O:Z

    new-instance v1, Lcom/hlzn/socketclient/service/SocketService$Oooo0;

    invoke-direct {v1, p0, p0}, Lcom/hlzn/socketclient/service/SocketService$Oooo0;-><init>(Lcom/hlzn/socketclient/service/SocketService;Lcom/hlzn/socketclient/service/SocketService;)V

    iput-object v1, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOO0:Lcom/hlzn/socketclient/service/SocketService$Oooo0;

    iput-boolean v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOOo:Z

    return-void
.end method

.method public static synthetic OooO(Lcom/hlzn/socketclient/service/SocketService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hlzn/socketclient/service/SocketService;->OoooOoo:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooO00o(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooOo:Ljava/net/Socket;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lcom/hlzn/socketclient/service/SocketService;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooOo:Ljava/net/Socket;

    return-object p1
.end method

.method public static synthetic OooO0OO(Lcom/hlzn/socketclient/service/SocketService;)Ljava/net/InetSocketAddress;
    .locals 0

    iget-object p0, p0, Lcom/hlzn/socketclient/service/SocketService;->Oooooo0:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public static synthetic OooO0Oo(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00Oo0:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic OooO0o(Lcom/hlzn/socketclient/service/SocketService;)V
    .locals 0

    invoke-direct {p0}, Lcom/hlzn/socketclient/service/SocketService;->Oooo00o()V

    return-void
.end method

.method public static synthetic OooO0o0(Lcom/hlzn/socketclient/service/SocketService;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 0

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService;->Oooooo0:Ljava/net/InetSocketAddress;

    return-object p1
.end method

.method public static synthetic OooO0oO(Lcom/hlzn/socketclient/service/SocketService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hlzn/socketclient/service/SocketService;->Ooooo0o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooO0oo(Lcom/hlzn/socketclient/service/SocketService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hlzn/socketclient/service/SocketService;->Ooooo00:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooOO0(Lcom/hlzn/socketclient/service/SocketService;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/hlzn/socketclient/service/SocketService;->OoooOoO:Ljava/lang/Long;

    return-object p0
.end method

.method public static synthetic OooOO0O()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hlzn/socketclient/service/SocketService;->o0Oo0oo:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic OooOO0o(Lcom/hlzn/socketclient/service/SocketService;)Lz2/yt;
    .locals 0

    iget-object p0, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOoO:Lz2/yt;

    return-object p0
.end method

.method public static synthetic OooOOO(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/hlzn/socketclient/service/SocketService;->OoooooO:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic OooOOO0(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/hlzn/socketclient/service/SocketService;->Oooooo:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic OooOOOO(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/hlzn/socketclient/service/SocketService;->Ooooooo:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic OooOOOo(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/hlzn/socketclient/service/SocketService;->o0OoOo0:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic OooOOo(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00O0O:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic OooOOo0(Lcom/hlzn/socketclient/service/SocketService;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/hlzn/socketclient/service/SocketService;->ooOO:Ljava/util/Queue;

    return-object p0
.end method

.method private OooOOoo(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00Oo0:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hlzn/socketclient/service/SocketService$OooO0o;

    invoke-direct {v0, p0, p1, p2}, Lcom/hlzn/socketclient/service/SocketService$OooO0o;-><init>(Lcom/hlzn/socketclient/service/SocketService;ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private OooOo(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->Ooooooo:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hlzn/socketclient/service/SocketService$Oooo000;

    invoke-direct {v0, p0, p1, p2}, Lcom/hlzn/socketclient/service/SocketService$Oooo000;-><init>(Lcom/hlzn/socketclient/service/SocketService;ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private OooOo0(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o0OoOo0:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hlzn/socketclient/service/SocketService$OooO00o;

    invoke-direct {v0, p0, p1, p2}, Lcom/hlzn/socketclient/service/SocketService$OooO00o;-><init>(Lcom/hlzn/socketclient/service/SocketService;ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private OooOo00(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->ooOO:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hlzn/socketclient/service/SocketService$OooO0O0;

    invoke-direct {v0, p0, p1, p2}, Lcom/hlzn/socketclient/service/SocketService$OooO0O0;-><init>(Lcom/hlzn/socketclient/service/SocketService;ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private OooOo0O(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->Oooooo:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hlzn/socketclient/service/SocketService$OooOo00;

    invoke-direct {v0, p0, p1, p2}, Lcom/hlzn/socketclient/service/SocketService$OooOo00;-><init>(Lcom/hlzn/socketclient/service/SocketService;ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private OooOo0o(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OoooooO:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hlzn/socketclient/service/SocketService$OooOo;

    invoke-direct {v0, p0, p1, p2}, Lcom/hlzn/socketclient/service/SocketService$OooOo;-><init>(Lcom/hlzn/socketclient/service/SocketService;ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private OooOoO0(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00O0O:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hlzn/socketclient/service/SocketService$OooO0OO;

    invoke-direct {v0, p0, p1, p2}, Lcom/hlzn/socketclient/service/SocketService$OooO0OO;-><init>(Lcom/hlzn/socketclient/service/SocketService;ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static OooOoOO(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "GB2312"

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v0

    :catch_0
    :cond_0
    const-string v0, "ISO-8859-1"

    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_1

    return-object v0

    :catch_1
    :cond_1
    const-string v0, "UTF-8"

    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_2

    return-object v0

    :catch_2
    :cond_2
    const-string v0, "GBK"

    :try_start_3
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz p0, :cond_3

    return-object v0

    :catch_3
    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private OooOooO()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->Oooooo:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OoooooO:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->Ooooooo:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o0OoOo0:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->ooOO:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00O0O:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00Oo0:Ljava/util/Queue;

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOoO:Lz2/yt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/yt;->OooO0OO()V

    :cond_0
    new-instance v0, Lz2/yt;

    invoke-direct {v0, p0}, Lz2/yt;-><init>(Lcom/hlzn/socketclient/service/SocketService;)V

    iput-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOoO:Lz2/yt;

    return-void
.end method

.method private OooOooo(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "service_param"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/hlzn/socketclient/bean/ServiceParam;

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/hlzn/socketclient/bean/ServiceParam;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {p1}, Lcom/hlzn/socketclient/bean/ServiceParam;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService;->OoooOoO:Ljava/lang/Long;

    :cond_0
    iget-object p1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {p1}, Lcom/hlzn/socketclient/bean/ServiceParam;->getScriptId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {p1}, Lcom/hlzn/socketclient/bean/ServiceParam;->getScriptId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService;->OoooOoo:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {p1}, Lcom/hlzn/socketclient/bean/ServiceParam;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {p1}, Lcom/hlzn/socketclient/bean/ServiceParam;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService;->Ooooo00:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {p1}, Lcom/hlzn/socketclient/bean/ServiceParam;->getiMToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {p1}, Lcom/hlzn/socketclient/bean/ServiceParam;->getiMToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/service/SocketService;->Ooooo0o:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private Oooo()V
    .locals 4

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooOo:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lz2/ku;->OooO0OO(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "stopService --> "

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lz2/ku;->OooO0o(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lcom/hlzn/socketclient/service/SocketService;->OooOooO()V

    invoke-static {}, Lz2/au;->OooO0oo()Lz2/au;

    move-result-object v0

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooOo:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Lz2/au;->OooOOO(Ljava/net/Socket;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    iput-object v3, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooOo:Ljava/net/Socket;

    iput-object v3, p0, Lcom/hlzn/socketclient/service/SocketService;->o00Ooo:Ljava/lang/Thread;

    iput-object v3, p0, Lcom/hlzn/socketclient/service/SocketService;->o00o0O:Ljava/lang/Thread;

    iput-object v3, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooOO:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hlzn/socketclient/service/SocketService;->oo000o:Z

    iput-boolean v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00oO0o:Z

    :cond_0
    return-void
.end method

.method private Oooo00o()V
    .locals 2

    sget-object v0, Lcom/hlzn/socketclient/service/SocketService;->o0Oo0oo:Ljava/lang/String;

    const-string v1, "proxyCreateConnection --> 1 "

    invoke-static {v0, v1}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOoO:Lz2/yt;

    if-eqz v1, :cond_0

    const-string v1, "proxyCreateConnection --> 2 "

    invoke-static {v0, v1}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOoO:Lz2/yt;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/yt;->OooO00o(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private Oooo0OO()V
    .locals 2

    sget-object v0, Lcom/hlzn/socketclient/service/SocketService;->o0Oo0oo:Ljava/lang/String;

    const-string v1, "scriptStart"

    invoke-static {v0, v1}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hlzn/socketclient/service/SocketService$OooOOO;

    invoke-direct {v0, p0}, Lcom/hlzn/socketclient/service/SocketService$OooOOO;-><init>(Lcom/hlzn/socketclient/service/SocketService;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private Oooo0o0()V
    .locals 1

    new-instance v0, Lcom/hlzn/socketclient/service/SocketService$OooOOOO;

    invoke-direct {v0, p0}, Lcom/hlzn/socketclient/service/SocketService$OooOOOO;-><init>(Lcom/hlzn/socketclient/service/SocketService;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private Oooo0oo()V
    .locals 2

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooOo:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/au;->OooO0oo()Lz2/au;

    move-result-object v0

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooOo:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Lz2/au;->OooOOO(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public OooOoO()V
    .locals 3

    sget-object v0, Lcom/hlzn/socketclient/service/SocketService;->o0Oo0oo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createConnection --> IP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lz2/bu;->OooOOOo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",Port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lz2/bu;->OooOOo0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hlzn/socketclient/service/SocketService$OooO;

    invoke-direct {v1, p0}, Lcom/hlzn/socketclient/service/SocketService$OooO;-><init>(Lcom/hlzn/socketclient/service/SocketService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooOO:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public OooOoo()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OooOoo0()Lz2/yt;
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOoO:Lz2/yt;

    return-object v0
.end method

.method public Oooo0()V
    .locals 3

    sget-object v0, Lcom/hlzn/socketclient/service/SocketService;->o0Oo0oo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveMsg --> isReceive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hlzn/socketclient/service/SocketService;->o00oO0o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hlzn/socketclient/service/SocketService$OooOO0;

    invoke-direct {v1, p0}, Lcom/hlzn/socketclient/service/SocketService$OooOO0;-><init>(Lcom/hlzn/socketclient/service/SocketService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00o0O:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public Oooo000()Z
    .locals 1

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooOo:Ljava/net/Socket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public Oooo00O()V
    .locals 4

    sget-object v0, Lcom/hlzn/socketclient/service/SocketService;->o0Oo0oo:Ljava/lang/String;

    const-string v1, "login --> "

    invoke-static {v0, v1}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lz2/ku;->OooO0OO(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login --> mIMToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService;->Ooooo0o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lz2/ku;->OooO0o(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    const/4 v0, 0x0

    sput-boolean v0, Lz2/bu;->OooOo0:Z

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->Ooooo0o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hlzn/socketclient/service/SocketService$OooOOO0;

    invoke-direct {v1, p0}, Lcom/hlzn/socketclient/service/SocketService$OooOOO0;-><init>(Lcom/hlzn/socketclient/service/SocketService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00ooo:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public Oooo0O0()V
    .locals 4

    sget-object v0, Lcom/hlzn/socketclient/service/SocketService;->o0Oo0oo:Ljava/lang/String;

    const-string v1, "resetConnect -->"

    invoke-static {v0, v1}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lz2/bu;->OooOo0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lz2/bu;->OooOo0:Z

    invoke-static {p0}, Lz2/ku;->OooO0OO(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetConnect --> IMConfig.IS_RECONNECT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lz2/bu;->OooOo0:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lz2/ku;->OooO0o(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00oO0o:Z

    invoke-direct {p0}, Lcom/hlzn/socketclient/service/SocketService;->Oooo0oo()V

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOoO:Lz2/yt;

    invoke-virtual {v0}, Lz2/yt;->OooO0OO()V

    invoke-static {}, Lz2/zt;->OooOO0()Lz2/zt;

    move-result-object v0

    invoke-virtual {v0}, Lz2/zt;->OooOO0O()Lz2/du;

    move-result-object v0

    new-instance v1, Lz2/cu;

    const/4 v2, -0x1

    const-string v3, "\u91cd\u8fde"

    invoke-direct {v1, v2, v3}, Lz2/cu;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lz2/du;->OooO00o(Lz2/cu;)V

    :cond_0
    return-void
.end method

.method public Oooo0o()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hlzn/socketclient/service/SocketService$OooOO0O;

    invoke-direct {v1, p0}, Lcom/hlzn/socketclient/service/SocketService$OooOO0O;-><init>(Lcom/hlzn/socketclient/service/SocketService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00Ooo:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public Oooo0oO(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOO0:Lcom/hlzn/socketclient/service/SocketService$Oooo0;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lz2/ku;->OooO0OO(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lz2/ku;->OooO0Oo(Ljava/io/File;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lz2/ku;->OooO(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    sget-object v0, Lcom/hlzn/socketclient/service/SocketService;->o0Oo0oo:Ljava/lang/String;

    const-string v1, "onCreate --> "

    invoke-static {v0, v1}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hlzn/socketclient/service/SocketService;->OooOoO()V

    invoke-virtual {p0}, Lcom/hlzn/socketclient/service/SocketService;->Oooo0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hlzn/socketclient/service/SocketService;->oo000o:Z

    iput-boolean v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00oO0o:Z

    iput-boolean v2, p0, Lcom/hlzn/socketclient/service/SocketService;->o00oO0O:Z

    invoke-direct {p0}, Lcom/hlzn/socketclient/service/SocketService;->OooOooO()V

    sput-boolean v0, Lz2/bu;->OooOo0O:Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lcom/hlzn/socketclient/service/SocketService;->o0Oo0oo:Ljava/lang/String;

    const-string v1, "onDestroy --> "

    invoke-static {v0, v1}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOoO:Lz2/yt;

    invoke-virtual {v0}, Lz2/yt;->OooO0OO()V

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooOo:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/au;->OooO0oo()Lz2/au;

    move-result-object v0

    iget-object v2, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooOo:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Lz2/au;->OooOOO(Ljava/net/Socket;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00Ooo:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->o00o0O:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooOO:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/hlzn/socketclient/service/SocketService;->oo000o:Z

    iput-boolean v1, p0, Lcom/hlzn/socketclient/service/SocketService;->o00oO0o:Z

    :cond_0
    sput-boolean v1, Lz2/bu;->OooOo0O:Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    sget-object v0, Lcom/hlzn/socketclient/service/SocketService;->o0Oo0oo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand --> flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",startId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isScriptRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOOo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_d

    const-string v0, "service_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/hlzn/socketclient/service/SocketService;->OooOooo(Landroid/content/Intent;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "cmd_script_stop_success_operate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "shut_down_connection_operate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "login_operate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "stop_service_operate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "cmd_script_settings_success_operate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "script_stop_operate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v2, "cmd_unbind_studio_project_success_operate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "cmd_script_start_success_operate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_8
    const-string v2, "cmd_script_upgrade_success_operate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string v2, "script_start_operate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string v2, "cmd_screen_capture_success_operate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_b
    const-string v2, "send_heart_operate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_c
    const-string v2, "cmd_rename_device_name_success_operate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_0
    const-string v2, "mIsScriptRunning:"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;->getCmdScriptStopCode()I

    move-result v0

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v1}, Lcom/hlzn/socketclient/bean/ServiceParam;->getCmdScriptStopResult()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hlzn/socketclient/service/SocketService;->OooOo0o(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v1}, Lcom/hlzn/socketclient/bean/ServiceParam;->isScriptRunning()Z

    move-result v1

    iput-boolean v1, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOOo:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOOo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooOo:Ljava/net/Socket;

    if-eqz v0, :cond_d

    invoke-static {p0}, Lz2/ku;->OooO0OO(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SHUT_DOWN_CONNECTION_OPERATE \u5173\u95ed\u8fde\u63a5\u64cd\u4f5c ---> "

    invoke-static {v0, v2, v1, v3}, Lz2/ku;->OooO0o(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {}, Lz2/au;->OooO0oo()Lz2/au;

    move-result-object v0

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooOo:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Lz2/au;->OooOOO(Ljava/net/Socket;)V

    invoke-direct {p0}, Lcom/hlzn/socketclient/service/SocketService;->OooOooO()V

    invoke-virtual {p0}, Lcom/hlzn/socketclient/service/SocketService;->OooOoO()V

    goto/16 :goto_1

    :pswitch_2
    iput-boolean v3, p0, Lcom/hlzn/socketclient/service/SocketService;->o00oO0o:Z

    invoke-virtual {p0}, Lcom/hlzn/socketclient/service/SocketService;->Oooo00O()V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/hlzn/socketclient/service/SocketService;->Oooo()V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;->getCmdScriptSettingsCode()I

    move-result v0

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v1}, Lcom/hlzn/socketclient/bean/ServiceParam;->getCmdScriptSettingsResult()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hlzn/socketclient/service/SocketService;->OooOo0(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v1}, Lcom/hlzn/socketclient/bean/ServiceParam;->isScriptRunning()Z

    move-result v1

    iput-boolean v1, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOOo:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOOo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hlzn/socketclient/service/SocketService;->Oooo0o0()V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;->getCmdUnBindStudioProjectCode()I

    move-result v0

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v1}, Lcom/hlzn/socketclient/bean/ServiceParam;->getCmdUnBindStudioProjectResult()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hlzn/socketclient/service/SocketService;->OooOoO0(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;->getCmdScriptStartCode()I

    move-result v0

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v1}, Lcom/hlzn/socketclient/bean/ServiceParam;->getCmdScriptStartResult()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hlzn/socketclient/service/SocketService;->OooOo0O(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;->getCmdScriptUpgradeCode()I

    move-result v0

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v1}, Lcom/hlzn/socketclient/bean/ServiceParam;->getCmdScriptUpgradeResult()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hlzn/socketclient/service/SocketService;->OooOo(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_9
    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v1}, Lcom/hlzn/socketclient/bean/ServiceParam;->isScriptRunning()Z

    move-result v1

    iput-boolean v1, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOOo:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hlzn/socketclient/service/SocketService;->o0ooOOo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz2/ju;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hlzn/socketclient/service/SocketService;->Oooo0OO()V

    goto :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;->getCmdScreenCaptureCode()I

    move-result v0

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v1}, Lcom/hlzn/socketclient/bean/ServiceParam;->getCmdScreenCaptureResult()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hlzn/socketclient/service/SocketService;->OooOo00(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lcom/hlzn/socketclient/service/SocketService;->Oooo0o()V

    goto :goto_1

    :pswitch_c
    iget-object v0, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v0}, Lcom/hlzn/socketclient/bean/ServiceParam;->getCmdRenameDeviceNameCode()I

    move-result v0

    iget-object v1, p0, Lcom/hlzn/socketclient/service/SocketService;->OooooO0:Lcom/hlzn/socketclient/bean/ServiceParam;

    invoke-virtual {v1}, Lcom/hlzn/socketclient/bean/ServiceParam;->getCmdRenameDeviceNameResult()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hlzn/socketclient/service/SocketService;->OooOOoo(ILjava/lang/String;)V

    :cond_d
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79c0627f -> :sswitch_c
        -0x75cc31ec -> :sswitch_b
        -0x4d6788df -> :sswitch_a
        -0x4d3b29cd -> :sswitch_9
        -0x33467eaa -> :sswitch_8
        -0x2c4e4824 -> :sswitch_7
        -0x1efebb83 -> :sswitch_6
        -0x4f7eec5 -> :sswitch_5
        -0x485dce5 -> :sswitch_4
        0x620bbd -> :sswitch_3
        0x61f26ae -> :sswitch_2
        0xedec055 -> :sswitch_1
        0x4720207a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
