.class public Lrazerdp/blur/BlurImageView$OooOOO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrazerdp/blur/BlurImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOOO"
.end annotation


# instance fields
.field private OoooOoO:I

.field private OoooOoo:I

.field private Ooooo00:Landroid/graphics/Bitmap;

.field public final synthetic Ooooo0o:Lrazerdp/blur/BlurImageView;


# direct methods
.method public constructor <init>(Lrazerdp/blur/BlurImageView;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lrazerdp/blur/BlurImageView$OooOOO;->Ooooo0o:Lrazerdp/blur/BlurImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lrazerdp/blur/BlurImageView$OooOOO;->OoooOoO:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lrazerdp/blur/BlurImageView$OooOOO;->OoooOoo:I

    invoke-virtual {p1}, Lrazerdp/blur/BlurImageView;->getOption()Lz2/gf0;

    move-result-object v0

    invoke-virtual {v0}, Lz2/gf0;->OooO0OO()F

    move-result v0

    invoke-virtual {p1}, Lrazerdp/blur/BlurImageView;->getOption()Lz2/gf0;

    move-result-object p1

    invoke-virtual {p1}, Lz2/gf0;->OooO0oo()Z

    move-result p1

    invoke-static {p2, v0, p1}, Lz2/ef0;->OooO0oO(Landroid/view/View;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lrazerdp/blur/BlurImageView$OooOOO;->Ooooo00:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lrazerdp/blur/BlurImageView$OooOOO;->Ooooo0o:Lrazerdp/blur/BlurImageView;

    invoke-static {v0}, Lrazerdp/blur/BlurImageView;->OooO0Oo(Lrazerdp/blur/BlurImageView;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "BlurImageView"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrazerdp/blur/BlurImageView$OooOOO;->Ooooo0o:Lrazerdp/blur/BlurImageView;

    invoke-virtual {v0}, Lrazerdp/blur/BlurImageView;->getOption()Lz2/gf0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "\u5b50\u7ebf\u7a0b\u6a21\u7cca\u6267\u884c"

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lrazerdp/blur/BlurImageView$OooOOO;->Ooooo0o:Lrazerdp/blur/BlurImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lrazerdp/blur/BlurImageView$OooOOO;->Ooooo00:Landroid/graphics/Bitmap;

    iget v4, p0, Lrazerdp/blur/BlurImageView$OooOOO;->OoooOoO:I

    iget v5, p0, Lrazerdp/blur/BlurImageView$OooOOO;->OoooOoo:I

    iget-object v6, p0, Lrazerdp/blur/BlurImageView$OooOOO;->Ooooo0o:Lrazerdp/blur/BlurImageView;

    invoke-virtual {v6}, Lrazerdp/blur/BlurImageView;->getOption()Lz2/gf0;

    move-result-object v6

    invoke-virtual {v6}, Lz2/gf0;->OooO0Oo()F

    move-result v6

    invoke-static {v1, v2, v4, v5, v6}, Lz2/ef0;->OooO0O0(Landroid/content/Context;Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lrazerdp/blur/BlurImageView;->OooO0o0(Lrazerdp/blur/BlurImageView;Landroid/graphics/Bitmap;Z)V

    return-void

    :cond_1
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "\u653e\u5f03\u6a21\u7cca\uff0c\u53ef\u80fd\u662f\u5df2\u7ecf\u79fb\u9664\u4e86\u5e03\u5c40"

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Lrazerdp/util/log/PopupLog;->OooO0OO(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
