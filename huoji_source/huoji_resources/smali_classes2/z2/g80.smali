.class public Lz2/g80;
.super Lz2/u80;
.source ""


# instance fields
.field private OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz2/u80;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/g80;->OooO00o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public OooO0O0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lz2/g80;->OooO00o:Ljava/util/List;

    invoke-static {v0}, Lorg/junit/runners/model/MultipleFailureException;->assertEmpty(Ljava/util/List;)V

    return-void
.end method

.method public OooO0OO(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lz2/g80;->OooO00o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0Oo(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lz2/g80;->OooO0OO(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public OooO0o(Ljava/lang/String;Ljava/lang/Object;Lz2/r20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lz2/r20<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lz2/g80$OooO00o;

    invoke-direct {v0, p0, p1, p2, p3}, Lz2/g80$OooO00o;-><init>(Lz2/g80;Ljava/lang/String;Ljava/lang/Object;Lz2/r20;)V

    invoke-virtual {p0, v0}, Lz2/g80;->OooO0Oo(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public OooO0o0(Ljava/lang/Object;Lz2/r20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lz2/r20<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lz2/g80;->OooO0o(Ljava/lang/String;Ljava/lang/Object;Lz2/r20;)V

    return-void
.end method
