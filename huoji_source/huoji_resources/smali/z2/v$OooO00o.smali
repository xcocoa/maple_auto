.class public Lz2/v$OooO00o;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final OoooOoO:Landroid/os/Handler;

.field public final OoooOoo:I

.field private final Ooooo00:J

.field private Ooooo0o:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    iput-object p1, p0, Lz2/v$OooO00o;->OoooOoO:Landroid/os/Handler;

    iput p2, p0, Lz2/v$OooO00o;->OoooOoo:I

    iput-wide p3, p0, Lz2/v$OooO00o;->Ooooo00:J

    return-void
.end method


# virtual methods
.method public OooO00o()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lz2/v$OooO00o;->Ooooo0o:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lz2/x1;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/x1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lz2/x1<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/v$OooO00o;->Ooooo0o:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lz2/v$OooO00o;->OoooOoO:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lz2/v$OooO00o;->OoooOoO:Landroid/os/Handler;

    iget-wide v0, p0, Lz2/v$OooO00o;->Ooooo00:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lz2/x1;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/x1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lz2/v$OooO00o;->onResourceReady(Landroid/graphics/Bitmap;Lz2/x1;)V

    return-void
.end method
