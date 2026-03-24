.class public Lz2/ua0$OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ua0;->saveAsync()Lz2/gb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/gb0;

.field public final synthetic OoooOoo:Lz2/ua0;


# direct methods
.method public constructor <init>(Lz2/ua0;Lz2/gb0;)V
    .locals 0

    iput-object p1, p0, Lz2/ua0$OooO0o;->OoooOoo:Lz2/ua0;

    iput-object p2, p0, Lz2/ua0$OooO0o;->OoooOoO:Lz2/gb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/ua0$OooO0o;->OoooOoo:Lz2/ua0;

    invoke-virtual {v1}, Lz2/ua0;->save()Z

    move-result v1

    iget-object v2, p0, Lz2/ua0$OooO0o;->OoooOoO:Lz2/gb0;

    invoke-virtual {v2}, Lz2/gb0;->OooO0OO()Lz2/mb0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lz2/na0;->Oooo0O0()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lz2/ua0$OooO0o$OooO00o;

    invoke-direct {v3, p0, v1}, Lz2/ua0$OooO0o$OooO00o;-><init>(Lz2/ua0$OooO0o;Z)V

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
