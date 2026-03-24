.class public Lz2/a7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/a7$OooO00o;
    }
.end annotation


# static fields
.field private static OooO0OO:Lz2/a7;


# instance fields
.field private OooO00o:Z

.field public OooO0O0:Lz2/a7$OooO00o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/a7;->OooO00o:Z

    return-void
.end method

.method public static OooO00o()Lz2/a7;
    .locals 2

    sget-object v0, Lz2/a7;->OooO0OO:Lz2/a7;

    if-nez v0, :cond_1

    const-class v0, Lz2/a7;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/a7;->OooO0OO:Lz2/a7;

    if-nez v1, :cond_0

    new-instance v1, Lz2/a7;

    invoke-direct {v1}, Lz2/a7;-><init>()V

    sput-object v1, Lz2/a7;->OooO0OO:Lz2/a7;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lz2/a7;->OooO0OO:Lz2/a7;

    return-object v0
.end method


# virtual methods
.method public OooO0O0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/a7;->OooO00o:Z

    return v0
.end method

.method public OooO0OO(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iput-boolean v0, p0, Lz2/a7;->OooO00o:Z

    iget-object p1, p0, Lz2/a7;->OooO0O0:Lz2/a7$OooO00o;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lz2/a7$OooO00o;->OooO00o()V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/a7;->OooO00o:Z

    iget-object p1, p0, Lz2/a7;->OooO0O0:Lz2/a7$OooO00o;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lz2/a7$OooO00o;->OooO0O0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public OooO0Oo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/a7;->OooO0O0:Lz2/a7$OooO00o;

    return-void
.end method

.method public OooO0o0(Lz2/a7$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lz2/a7;->OooO0O0:Lz2/a7$OooO00o;

    return-void
.end method
