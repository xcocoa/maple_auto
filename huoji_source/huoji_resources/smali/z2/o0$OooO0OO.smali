.class public Lz2/o0$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/i0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# instance fields
.field private final OooO00o:Lz2/t0;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "RequestManager.this"
    .end annotation
.end field

.field public final synthetic OooO0O0:Lz2/o0;


# direct methods
.method public constructor <init>(Lz2/o0;Lz2/t0;)V
    .locals 0
    .param p1    # Lz2/o0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/o0$OooO0OO;->OooO0O0:Lz2/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/o0$OooO0OO;->OooO00o:Lz2/t0;

    return-void
.end method


# virtual methods
.method public OooO00o(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/o0$OooO0OO;->OooO0O0:Lz2/o0;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lz2/o0$OooO0OO;->OooO00o:Lz2/t0;

    invoke-virtual {v0}, Lz2/t0;->OooO0oo()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
