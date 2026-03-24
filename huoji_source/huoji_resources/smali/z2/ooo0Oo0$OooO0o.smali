.class public Lz2/ooo0Oo0$OooO0o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ooo0Oo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0o"
.end annotation


# instance fields
.field private final OooO00o:Lz2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o<",
            "*>;"
        }
    .end annotation
.end field

.field private final OooO0O0:Lz2/q1;

.field public final synthetic OooO0OO:Lz2/ooo0Oo0;


# direct methods
.method public constructor <init>(Lz2/ooo0Oo0;Lz2/q1;Lz2/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/q1;",
            "Lz2/o<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/ooo0Oo0$OooO0o;->OooO0OO:Lz2/ooo0Oo0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/ooo0Oo0$OooO0o;->OooO0O0:Lz2/q1;

    iput-object p3, p0, Lz2/ooo0Oo0$OooO0o;->OooO00o:Lz2/o;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 3

    iget-object v0, p0, Lz2/ooo0Oo0$OooO0o;->OooO0OO:Lz2/ooo0Oo0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/ooo0Oo0$OooO0o;->OooO00o:Lz2/o;

    iget-object v2, p0, Lz2/ooo0Oo0$OooO0o;->OooO0O0:Lz2/q1;

    invoke-virtual {v1, v2}, Lz2/o;->OooOOoo(Lz2/q1;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
