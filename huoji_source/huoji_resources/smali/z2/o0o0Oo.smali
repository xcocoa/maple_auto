.class public final Lz2/o0o0Oo;
.super Lz2/o00OOO0O;
.source ""


# instance fields
.field private final OooO00o:Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lz2/o00OOO0O;-><init>()V

    new-instance v0, Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;

    invoke-direct {v0}, Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;-><init>()V

    iput-object v0, p0, Lz2/o0o0Oo;->OooO00o:Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;

    const-string v0, "Glide"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Discovered AppGlideModule from annotation: com.cyjh.elfin.base.glidemodule.CustomGlideModule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/content/Context;Lz2/o0oOO;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0oOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/o0o0Oo;->OooO00o:Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;

    invoke-virtual {v0, p1, p2}, Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;->OooO00o(Landroid/content/Context;Lz2/o0oOO;)V

    return-void
.end method

.method public OooO0O0(Landroid/content/Context;Lz2/o00Oo00;Lcom/bumptech/glide/Registry;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o00Oo00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/Registry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/o0o0Oo;->OooO00o:Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;

    invoke-virtual {v0, p1, p2, p3}, Lz2/z0;->OooO0O0(Landroid/content/Context;Lz2/o00Oo00;Lcom/bumptech/glide/Registry;)V

    return-void
.end method

.method public OooO0OO()Z
    .locals 1

    iget-object v0, p0, Lz2/o0o0Oo;->OooO00o:Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;

    invoke-virtual {v0}, Lcom/cyjh/elfin/base/glidemodule/CustomGlideModule;->OooO0OO()Z

    move-result v0

    return v0
.end method

.method public OooO0Oo()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o()Lz2/o00OOOO0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/o00OOOO0;

    invoke-direct {v0}, Lz2/o00OOOO0;-><init>()V

    return-object v0
.end method

.method public bridge synthetic OooO0o0()Lz2/r0$OooO0O0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/o0o0Oo;->OooO0o()Lz2/o00OOOO0;

    move-result-object v0

    return-object v0
.end method
