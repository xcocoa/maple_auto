.class public Lz2/b20$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/b20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# instance fields
.field private OooO00o:Ljava/util/concurrent/Executor;

.field private OooO0O0:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private OooO0OO:Lz2/l10;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/b20$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Lz2/b20$OooO0O0;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Lz2/b20;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz2/b20$OooO0O0;->OooO0OO(Ljava/lang/Object;)Lz2/b20;

    move-result-object v0

    return-object v0
.end method

.method public OooO0O0(Landroid/app/Activity;)Lz2/b20;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/b20$OooO0O0;->OooO0OO(Ljava/lang/Object;)Lz2/b20;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO(Ljava/lang/Object;)Lz2/b20;
    .locals 7

    iget-object v0, p0, Lz2/b20$OooO0O0;->OooO0OO:Lz2/l10;

    if-nez v0, :cond_0

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    iput-object v0, p0, Lz2/b20$OooO0O0;->OooO0OO:Lz2/l10;

    :cond_0
    iget-object v0, p0, Lz2/b20$OooO0O0;->OooO00o:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lz2/b20$OooO0O0;->OooO00o:Ljava/util/concurrent/Executor;

    :cond_1
    iget-object v0, p0, Lz2/b20$OooO0O0;->OooO0O0:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-class v0, Lz2/g20;

    iput-object v0, p0, Lz2/b20$OooO0O0;->OooO0O0:Ljava/lang/Class;

    :cond_2
    new-instance v0, Lz2/b20;

    iget-object v2, p0, Lz2/b20$OooO0O0;->OooO00o:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lz2/b20$OooO0O0;->OooO0OO:Lz2/l10;

    iget-object v4, p0, Lz2/b20$OooO0O0;->OooO0O0:Ljava/lang/Class;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lz2/b20;-><init>(Ljava/util/concurrent/Executor;Lz2/l10;Ljava/lang/Class;Ljava/lang/Object;Lz2/b20$OooO00o;)V

    return-object v0
.end method

.method public OooO0Oo(Lz2/l10;)Lz2/b20$OooO0O0;
    .locals 0

    iput-object p1, p0, Lz2/b20$OooO0O0;->OooO0OO:Lz2/l10;

    return-object p0
.end method

.method public OooO0o(Ljava/util/concurrent/Executor;)Lz2/b20$OooO0O0;
    .locals 0

    iput-object p1, p0, Lz2/b20$OooO0O0;->OooO00o:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public OooO0o0(Ljava/lang/Class;)Lz2/b20$OooO0O0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/b20$OooO0O0;"
        }
    .end annotation

    iput-object p1, p0, Lz2/b20$OooO0O0;->OooO0O0:Ljava/lang/Class;

    return-object p0
.end method
