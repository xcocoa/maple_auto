.class public Lrazerdp/blur/BlurImageView$OooOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrazerdp/blur/BlurImageView;->OooOOO0(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Landroid/graphics/Bitmap;

.field public final synthetic OoooOoo:Z

.field public final synthetic Ooooo00:Lrazerdp/blur/BlurImageView;


# direct methods
.method public constructor <init>(Lrazerdp/blur/BlurImageView;Landroid/graphics/Bitmap;Z)V
    .locals 0

    iput-object p1, p0, Lrazerdp/blur/BlurImageView$OooOO0;->Ooooo00:Lrazerdp/blur/BlurImageView;

    iput-object p2, p0, Lrazerdp/blur/BlurImageView$OooOO0;->OoooOoO:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lrazerdp/blur/BlurImageView$OooOO0;->OoooOoo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lrazerdp/blur/BlurImageView$OooOO0;->Ooooo00:Lrazerdp/blur/BlurImageView;

    iget-object v1, p0, Lrazerdp/blur/BlurImageView$OooOO0;->OoooOoO:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lrazerdp/blur/BlurImageView$OooOO0;->OoooOoo:Z

    invoke-static {v0, v1, v2}, Lrazerdp/blur/BlurImageView;->OooO0OO(Lrazerdp/blur/BlurImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method
