.class public Lz2/ed0$OooO0OO;
.super Lz2/rd0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ed0;->OooOoo0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoo:I

.field public final synthetic Ooooo00:Lz2/ed0;


# direct methods
.method public constructor <init>(Lz2/ed0;Lz2/ed0;I)V
    .locals 0

    iput-object p1, p0, Lz2/ed0$OooO0OO;->Ooooo00:Lz2/ed0;

    iput p3, p0, Lz2/ed0$OooO0OO;->OoooOoo:I

    invoke-direct {p0, p2}, Lz2/rd0;-><init>(Lz2/ed0;)V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 4

    iget-object v0, p0, Lz2/ed0$OooO0OO;->Ooooo00:Lz2/ed0;

    iget-object v1, v0, Lz2/ed0;->OooooOo:Lpl/droidsonroids/gif/GifInfoHandle;

    iget v2, p0, Lz2/ed0$OooO0OO;->OoooOoo:I

    iget-object v0, v0, Lz2/ed0;->OooooOO:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->Oooo00O(ILandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lz2/ed0$OooO0OO;->Ooooo00:Lz2/ed0;

    iget-object v0, v0, Lz2/ed0;->ooOO:Lz2/md0;

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method
