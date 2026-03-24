.class public Lz2/rx$OooO0OO;
.super Lz2/rx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/rx;->create(Lz2/mx;Ljava/io/File;)Lz2/rx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/mx;

.field public final synthetic OooO0O0:Ljava/io/File;


# direct methods
.method public constructor <init>(Lz2/mx;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lz2/rx$OooO0OO;->OooO00o:Lz2/mx;

    iput-object p2, p0, Lz2/rx$OooO0OO;->OooO0O0:Ljava/io/File;

    invoke-direct {p0}, Lz2/rx;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-object v0, p0, Lz2/rx$OooO0OO;->OooO0O0:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lz2/mx;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/rx$OooO0OO;->OooO00o:Lz2/mx;

    return-object v0
.end method

.method public writeTo(Lz2/k00;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lz2/rx$OooO0OO;->OooO0O0:Ljava/io/File;

    invoke-static {v1}, Lz2/w00;->OooOO0O(Ljava/io/File;)Lz2/e10;

    move-result-object v0

    invoke-interface {p1, v0}, Lz2/k00;->Oooo000(Lz2/e10;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    throw p1
.end method
