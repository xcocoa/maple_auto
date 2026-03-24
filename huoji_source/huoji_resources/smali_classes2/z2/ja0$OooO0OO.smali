.class public Lz2/ja0$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ja0;->OooOo00(Ljava/lang/Class;Z)Lz2/eb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Ljava/lang/Class;

.field public final synthetic OoooOoo:Z

.field public final synthetic Ooooo00:Lz2/eb0;

.field public final synthetic Ooooo0o:Lz2/ja0;


# direct methods
.method public constructor <init>(Lz2/ja0;Ljava/lang/Class;ZLz2/eb0;)V
    .locals 0

    iput-object p1, p0, Lz2/ja0$OooO0OO;->Ooooo0o:Lz2/ja0;

    iput-object p2, p0, Lz2/ja0$OooO0OO;->OoooOoO:Ljava/lang/Class;

    iput-boolean p3, p0, Lz2/ja0$OooO0OO;->OoooOoo:Z

    iput-object p4, p0, Lz2/ja0$OooO0OO;->Ooooo00:Lz2/eb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/ja0$OooO0OO;->Ooooo0o:Lz2/ja0;

    iget-object v2, p0, Lz2/ja0$OooO0OO;->OoooOoO:Ljava/lang/Class;

    iget-boolean v3, p0, Lz2/ja0$OooO0OO;->OoooOoo:Z

    invoke-virtual {v1, v2, v3}, Lz2/ja0;->OooOOo(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lz2/ja0$OooO0OO;->Ooooo00:Lz2/eb0;

    invoke-virtual {v2}, Lz2/eb0;->OooO0OO()Lz2/kb0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lz2/na0;->Oooo0O0()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lz2/ja0$OooO0OO$OooO00o;

    invoke-direct {v3, p0, v1}, Lz2/ja0$OooO0OO$OooO00o;-><init>(Lz2/ja0$OooO0OO;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
