.class public Lz2/ooo0Oo0$OooO00o$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/v2$OooO0o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ooo0Oo0$OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/v2$OooO0o<",
        "Lcom/bumptech/glide/load/engine/DecodeJob<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/ooo0Oo0$OooO00o;


# direct methods
.method public constructor <init>(Lz2/ooo0Oo0$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lz2/ooo0Oo0$OooO00o$OooO00o;->OooO00o:Lz2/ooo0Oo0$OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz2/ooo0Oo0$OooO00o$OooO00o;->OooO0O0()Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v0

    return-object v0
.end method

.method public OooO0O0()Lcom/bumptech/glide/load/engine/DecodeJob;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, p0, Lz2/ooo0Oo0$OooO00o$OooO00o;->OooO00o:Lz2/ooo0Oo0$OooO00o;

    iget-object v2, v1, Lz2/ooo0Oo0$OooO00o;->OooO00o:Lcom/bumptech/glide/load/engine/DecodeJob$OooO;

    iget-object v1, v1, Lz2/ooo0Oo0$OooO00o;->OooO0O0:Landroidx/core/util/Pools$Pool;

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$OooO;Landroidx/core/util/Pools$Pool;)V

    return-object v0
.end method
