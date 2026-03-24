.class public final Lz2/v2$OooO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/v2$OooO0o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/v2$OooO0o<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final OooO0O0:Lz2/v2$OooOO0O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/v2$OooOO0O<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final OooO0OO:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/core/util/Pools$Pool;Lz2/v2$OooO0o;Lz2/v2$OooOO0O;)V
    .locals 0
    .param p1    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/v2$OooO0o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lz2/v2$OooOO0O;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "Lz2/v2$OooO0o<",
            "TT;>;",
            "Lz2/v2$OooOO0O<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/v2$OooO;->OooO0OO:Landroidx/core/util/Pools$Pool;

    iput-object p2, p0, Lz2/v2$OooO;->OooO00o:Lz2/v2$OooO0o;

    iput-object p3, p0, Lz2/v2$OooO;->OooO0O0:Lz2/v2$OooOO0O;

    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/v2$OooO;->OooO0OO:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/v2$OooO;->OooO00o:Lz2/v2$OooO0o;

    invoke-interface {v0}, Lz2/v2$OooO0o;->OooO00o()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "FactoryPools"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created new "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v1, v0, Lz2/v2$OooOO0;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lz2/v2$OooOO0;

    invoke-interface {v1}, Lz2/v2$OooOO0;->OooO0oO()Lz2/x2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lz2/x2;->OooO0O0(Z)V

    :cond_1
    return-object v0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    instance-of v0, p1, Lz2/v2$OooOO0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lz2/v2$OooOO0;

    invoke-interface {v0}, Lz2/v2$OooOO0;->OooO0oO()Lz2/x2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lz2/x2;->OooO0O0(Z)V

    :cond_0
    iget-object v0, p0, Lz2/v2$OooO;->OooO0O0:Lz2/v2$OooOO0O;

    invoke-interface {v0, p1}, Lz2/v2$OooOO0O;->OooO00o(Ljava/lang/Object;)V

    iget-object v0, p0, Lz2/v2$OooO;->OooO0OO:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
