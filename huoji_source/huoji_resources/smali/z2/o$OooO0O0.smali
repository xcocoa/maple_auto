.class public Lz2/o$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field private final OoooOoO:Lz2/q1;

.field public final synthetic OoooOoo:Lz2/o;


# direct methods
.method public constructor <init>(Lz2/o;Lz2/q1;)V
    .locals 0

    iput-object p1, p0, Lz2/o$OooO0O0;->OoooOoo:Lz2/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/o$OooO0O0;->OoooOoO:Lz2/q1;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lz2/o$OooO0O0;->OoooOoo:Lz2/o;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/o$OooO0O0;->OoooOoo:Lz2/o;

    iget-object v1, v1, Lz2/o;->OoooOoO:Lz2/o$OooO;

    iget-object v2, p0, Lz2/o$OooO0O0;->OoooOoO:Lz2/q1;

    invoke-virtual {v1, v2}, Lz2/o$OooO;->OooO0O0(Lz2/q1;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lz2/o$OooO0O0;->OoooOoo:Lz2/o;

    iget-object v1, v1, Lz2/o;->o00oO0O:Lz2/oO0000Oo;

    invoke-virtual {v1}, Lz2/oO0000Oo;->OooO00o()V

    iget-object v1, p0, Lz2/o$OooO0O0;->OoooOoo:Lz2/o;

    iget-object v2, p0, Lz2/o$OooO0O0;->OoooOoO:Lz2/q1;

    invoke-virtual {v1, v2}, Lz2/o;->OooO0o(Lz2/q1;)V

    iget-object v1, p0, Lz2/o$OooO0O0;->OoooOoo:Lz2/o;

    iget-object v2, p0, Lz2/o$OooO0O0;->OoooOoO:Lz2/q1;

    invoke-virtual {v1, v2}, Lz2/o;->OooOOoo(Lz2/q1;)V

    :cond_0
    iget-object v1, p0, Lz2/o$OooO0O0;->OoooOoo:Lz2/o;

    invoke-virtual {v1}, Lz2/o;->OooO()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
