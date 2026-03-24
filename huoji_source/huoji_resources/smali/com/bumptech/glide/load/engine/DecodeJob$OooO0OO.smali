.class public final Lcom/bumptech/glide/load/engine/DecodeJob$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0Oo$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/oO0Oo$OooO00o<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lcom/bumptech/glide/load/DataSource;

.field public final synthetic OooO0O0:Lcom/bumptech/glide/load/engine/DecodeJob;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0OO;->OooO0O0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0OO;->OooO00o:Lcom/bumptech/glide/load/DataSource;

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/oO0Ooooo;)Lz2/oO0Ooooo;
    .locals 2
    .param p1    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "TZ;>;)",
            "Lz2/oO0Ooooo<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0OO;->OooO0O0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0OO;->OooO00o:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOo0O(Lcom/bumptech/glide/load/DataSource;Lz2/oO0Ooooo;)Lz2/oO0Ooooo;

    move-result-object p1

    return-object p1
.end method
