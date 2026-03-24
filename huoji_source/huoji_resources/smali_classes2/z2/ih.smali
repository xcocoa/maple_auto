.class public Lz2/ih;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile OooO0O0:Lz2/ih;


# instance fields
.field private OooO00o:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO0Oo()Lz2/ih;
    .locals 2

    sget-object v0, Lz2/ih;->OooO0O0:Lz2/ih;

    if-nez v0, :cond_1

    const-class v0, Lz2/ih;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/ih;->OooO0O0:Lz2/ih;

    if-nez v1, :cond_0

    new-instance v1, Lz2/ih;

    invoke-direct {v1}, Lz2/ih;-><init>()V

    sput-object v1, Lz2/ih;->OooO0O0:Lz2/ih;

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
    sget-object v0, Lz2/ih;->OooO0O0:Lz2/ih;

    return-object v0
.end method


# virtual methods
.method public OooO()V
    .locals 1

    invoke-static {}, Lz2/bi;->OooOO0o()Lz2/bi;

    move-result-object v0

    invoke-virtual {v0}, Lz2/bi;->OooOOOO()V

    return-void
.end method

.method public OooO00o(Landroid/app/Activity;Landroid/view/ViewGroup;Lz2/di;)V
    .locals 1

    invoke-static {}, Lz2/bi;->OooOO0o()Lz2/bi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lz2/bi;->OooOOO(Landroid/content/Context;Landroid/view/ViewGroup;Lz2/di;)V

    return-void
.end method

.method public OooO0O0(Landroid/app/Activity;Landroid/view/ViewGroup;Lz2/xh;)V
    .locals 1

    invoke-static {}, Lz2/bi;->OooOO0o()Lz2/bi;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lz2/bi;->OooOO0O(Landroid/content/Context;Landroid/view/ViewGroup;Lz2/xh;)V

    return-void
.end method

.method public OooO0OO()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lz2/ih;->OooO00o:Landroid/content/Context;

    return-object v0
.end method

.method public OooO0o()V
    .locals 1

    invoke-static {}, Lz2/bi;->OooOO0o()Lz2/bi;

    move-result-object v0

    invoke-virtual {v0}, Lz2/bi;->OooOOoo()V

    return-void
.end method

.method public OooO0o0(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lz2/ih;->OooO00o:Landroid/content/Context;

    invoke-static {}, Lz2/bi;->OooOO0o()Lz2/bi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/bi;->OooOOO0(Landroid/content/Context;)V

    return-void
.end method

.method public OooO0oO()V
    .locals 0

    return-void
.end method

.method public OooO0oo(Lz2/uh;)V
    .locals 0

    return-void
.end method

.method public OooOO0()V
    .locals 1

    invoke-static {}, Lz2/bi;->OooOO0o()Lz2/bi;

    move-result-object v0

    invoke-virtual {v0}, Lz2/bi;->OooOOOo()V

    return-void
.end method

.method public OooOO0O()V
    .locals 1

    invoke-static {}, Lz2/bi;->OooOO0o()Lz2/bi;

    move-result-object v0

    invoke-virtual {v0}, Lz2/bi;->OooOOo0()V

    return-void
.end method
