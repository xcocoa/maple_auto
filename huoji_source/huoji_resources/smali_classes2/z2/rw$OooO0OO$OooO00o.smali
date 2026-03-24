.class public Lz2/rw$OooO0OO$OooO00o;
.super Lz2/n00;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/rw$OooO0OO;-><init>(Lz2/rw;Lz2/fy$OooO0o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoo:Lz2/rw;

.field public final synthetic Ooooo00:Lz2/fy$OooO0o;

.field public final synthetic Ooooo0o:Lz2/rw$OooO0OO;


# direct methods
.method public constructor <init>(Lz2/rw$OooO0OO;Lz2/d10;Lz2/rw;Lz2/fy$OooO0o;)V
    .locals 0

    iput-object p1, p0, Lz2/rw$OooO0OO$OooO00o;->Ooooo0o:Lz2/rw$OooO0OO;

    iput-object p3, p0, Lz2/rw$OooO0OO$OooO00o;->OoooOoo:Lz2/rw;

    iput-object p4, p0, Lz2/rw$OooO0OO$OooO00o;->Ooooo00:Lz2/fy$OooO0o;

    invoke-direct {p0, p2}, Lz2/n00;-><init>(Lz2/d10;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/rw$OooO0OO$OooO00o;->Ooooo0o:Lz2/rw$OooO0OO;

    iget-object v0, v0, Lz2/rw$OooO0OO;->OooO0o0:Lz2/rw;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/rw$OooO0OO$OooO00o;->Ooooo0o:Lz2/rw$OooO0OO;

    iget-boolean v2, v1, Lz2/rw$OooO0OO;->OooO0Oo:Z

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lz2/rw$OooO0OO;->OooO0Oo:Z

    iget-object v1, v1, Lz2/rw$OooO0OO;->OooO0o0:Lz2/rw;

    iget v3, v1, Lz2/rw;->Ooooo00:I

    add-int/2addr v3, v2

    iput v3, v1, Lz2/rw;->Ooooo00:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lz2/n00;->close()V

    iget-object v0, p0, Lz2/rw$OooO0OO$OooO00o;->Ooooo00:Lz2/fy$OooO0o;

    invoke-virtual {v0}, Lz2/fy$OooO0o;->OooO0OO()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
