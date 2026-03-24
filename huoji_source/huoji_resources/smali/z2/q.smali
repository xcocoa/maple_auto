.class public final Lz2/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O00OO$OooO00o;


# instance fields
.field private final OooO00o:Lz2/oO000o00;

.field private final OooO0O0:Lz2/oO0OOo0o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/oO000o00;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz2/q;-><init>(Lz2/oO000o00;Lz2/oO0OOo0o;)V

    return-void
.end method

.method public constructor <init>(Lz2/oO000o00;Lz2/oO0OOo0o;)V
    .locals 0
    .param p2    # Lz2/oO0OOo0o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/q;->OooO00o:Lz2/oO000o00;

    iput-object p2, p0, Lz2/q;->OooO0O0:Lz2/oO0OOo0o;

    return-void
.end method


# virtual methods
.method public OooO00o(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p3    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/q;->OooO00o:Lz2/oO000o00;

    invoke-interface {v0, p1, p2, p3}, Lz2/oO000o00;->OooO0oO(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(I)[I
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/q;->OooO0O0:Lz2/oO0OOo0o;

    if-nez v0, :cond_0

    new-array p1, p1, [I

    return-object p1

    :cond_0
    const-class v1, [I

    invoke-interface {v0, p1, v1}, Lz2/oO0OOo0o;->OooO0o0(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method public OooO0OO(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/q;->OooO00o:Lz2/oO000o00;

    invoke-interface {v0, p1}, Lz2/oO000o00;->OooO0Oo(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public OooO0Oo([B)V
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/q;->OooO0O0:Lz2/oO0OOo0o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lz2/oO0OOo0o;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public OooO0o([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/q;->OooO0O0:Lz2/oO0OOo0o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lz2/oO0OOo0o;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public OooO0o0(I)[B
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/q;->OooO0O0:Lz2/oO0OOo0o;

    if-nez v0, :cond_0

    new-array p1, p1, [B

    return-object p1

    :cond_0
    const-class v1, [B

    invoke-interface {v0, p1, v1}, Lz2/oO0OOo0o;->OooO0o0(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method
