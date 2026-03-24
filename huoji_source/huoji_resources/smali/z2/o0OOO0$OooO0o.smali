.class public final Lz2/o0OOO0$OooO0o;
.super Ljava/lang/ref/WeakReference;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o0OOO0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lz2/oO0000Oo<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lz2/o0O0O0Oo;

.field public final OooO0O0:Z

.field public OooO0OO:Lz2/oO0Ooooo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0Ooooo<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/o0O0O0Oo;Lz2/oO0000Oo;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0
    .param p1    # Lz2/o0O0O0Oo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/oO0000Oo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/ref/ReferenceQueue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Lz2/oO0000Oo<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lz2/oO0000Oo<",
            "*>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o0O0O0Oo;

    iput-object p1, p0, Lz2/o0OOO0$OooO0o;->OooO00o:Lz2/o0O0O0Oo;

    invoke-virtual {p2}, Lz2/oO0000Oo;->OooO0Oo()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Lz2/oO0000Oo;->OooO0OO()Lz2/oO0Ooooo;

    move-result-object p1

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/oO0Ooooo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lz2/o0OOO0$OooO0o;->OooO0OO:Lz2/oO0Ooooo;

    invoke-virtual {p2}, Lz2/oO0000Oo;->OooO0Oo()Z

    move-result p1

    iput-boolean p1, p0, Lz2/o0OOO0$OooO0o;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o0OOO0$OooO0o;->OooO0OO:Lz2/oO0Ooooo;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method
