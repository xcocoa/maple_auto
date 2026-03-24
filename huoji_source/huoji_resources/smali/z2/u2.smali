.class public Lz2/u2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oo00oO$OooO0O0;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/u2$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/oo00oO$OooO0O0<",
        "TT;>;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;"
    }
.end annotation


# instance fields
.field private OoooOoO:[I

.field private OoooOoo:Lz2/u2$OooO00o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/u2$OooO00o;

    invoke-direct {v0, p1, p0}, Lz2/u2$OooO00o;-><init>(Landroid/view/View;Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    iput-object v0, p0, Lz2/u2;->OoooOoo:Lz2/u2$OooO00o;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;II)[I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    iget-object p1, p0, Lz2/u2;->OoooOoO:[I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/u2;->OoooOoO:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/u2;->OoooOoo:Lz2/u2$OooO00o;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lz2/u2$OooO00o;

    invoke-direct {v0, p1, p0}, Lz2/u2$OooO00o;-><init>(Landroid/view/View;Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    iput-object v0, p0, Lz2/u2;->OoooOoo:Lz2/u2$OooO00o;

    :cond_1
    :goto_0
    return-void
.end method

.method public onSizeReady(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iput-object v0, p0, Lz2/u2;->OoooOoO:[I

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/u2;->OoooOoo:Lz2/u2$OooO00o;

    return-void
.end method
