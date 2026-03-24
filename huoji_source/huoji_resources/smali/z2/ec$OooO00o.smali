.class public Lz2/ec$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/ce$OooO0OO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/ec;


# direct methods
.method public constructor <init>(Lz2/ec;)V
    .locals 0

    iput-object p1, p0, Lz2/ec$OooO00o;->OooO00o:Lz2/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(JJI)V
    .locals 0

    return-void
.end method

.method public OooO0O0(Ljava/lang/Exception;)V
    .locals 2

    invoke-static {}, Lz2/ec;->OooO00o()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadFailed --> exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p0, Lz2/ec$OooO00o;->OooO00o:Lz2/ec;

    invoke-static {p1}, Lz2/ec;->OooO0O0(Lz2/ec;)Lz2/ec$OooO0o;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/ec$OooO00o;->OooO00o:Lz2/ec;

    invoke-static {p1}, Lz2/ec;->OooO0O0(Lz2/ec;)Lz2/ec$OooO0o;

    move-result-object p1

    const-string v0, "\u4e0b\u8f7d\u8bed\u97f3\u8bc6\u522b\u5e93\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lz2/ec$OooO0o;->OooO0O0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public OooO0OO(Ljava/io/File;)V
    .locals 2

    invoke-static {}, Lz2/ec;->OooO00o()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadSuccess --> file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lz2/ec$OooO0O0;

    iget-object v1, p0, Lz2/ec$OooO00o;->OooO00o:Lz2/ec;

    invoke-direct {v0, v1, p1}, Lz2/ec$OooO0O0;-><init>(Lz2/ec;Ljava/io/File;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
