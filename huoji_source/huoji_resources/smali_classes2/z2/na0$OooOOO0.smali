.class public final Lz2/na0$OooOOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/na0;->OooO0o0(Ljava/lang/String;Ljava/lang/String;)Lz2/cb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Ljava/lang/String;

.field public final synthetic OoooOoo:Ljava/lang/String;

.field public final synthetic Ooooo00:Lz2/cb0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lz2/cb0;)V
    .locals 0

    iput-object p1, p0, Lz2/na0$OooOOO0;->OoooOoO:Ljava/lang/String;

    iput-object p2, p0, Lz2/na0$OooOOO0;->OoooOoo:Ljava/lang/String;

    iput-object p3, p0, Lz2/na0$OooOOO0;->Ooooo00:Lz2/cb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/na0$OooOOO0;->OoooOoO:Ljava/lang/String;

    iget-object v2, p0, Lz2/na0$OooOOO0;->OoooOoo:Ljava/lang/String;

    invoke-static {v1, v2}, Lz2/na0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lz2/na0$OooOOO0;->Ooooo00:Lz2/cb0;

    invoke-virtual {v3}, Lz2/cb0;->OooO0OO()Lz2/ib0;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lz2/na0;->Oooo0O0()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lz2/na0$OooOOO0$OooO00o;

    invoke-direct {v4, p0, v1, v2}, Lz2/na0$OooOOO0$OooO00o;-><init>(Lz2/na0$OooOOO0;D)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
