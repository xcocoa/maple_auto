.class public Lz2/fy$OooO0o$OooO00o;
.super Lz2/gy;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/fy$OooO0o;->OooO0o0(I)Lz2/d10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Ooooo00:Lz2/fy$OooO0o;


# direct methods
.method public constructor <init>(Lz2/fy$OooO0o;Lz2/d10;)V
    .locals 0

    iput-object p1, p0, Lz2/fy$OooO0o$OooO00o;->Ooooo00:Lz2/fy$OooO0o;

    invoke-direct {p0, p2}, Lz2/gy;-><init>(Lz2/d10;)V

    return-void
.end method


# virtual methods
.method public OooooOo(Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lz2/fy$OooO0o$OooO00o;->Ooooo00:Lz2/fy$OooO0o;

    iget-object p1, p1, Lz2/fy$OooO0o;->OooO0Oo:Lz2/fy;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lz2/fy$OooO0o$OooO00o;->Ooooo00:Lz2/fy$OooO0o;

    invoke-virtual {v0}, Lz2/fy$OooO0o;->OooO0Oo()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
