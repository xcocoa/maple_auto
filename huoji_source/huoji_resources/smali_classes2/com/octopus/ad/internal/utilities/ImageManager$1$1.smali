.class public Lcom/octopus/ad/internal/utilities/ImageManager$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/utilities/ImageManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/octopus/ad/internal/utilities/ImageManager$1;

.field public final synthetic val$bm:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/utilities/ImageManager$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1$1;->this$1:Lcom/octopus/ad/internal/utilities/ImageManager$1;

    iput-object p2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1$1;->this$1:Lcom/octopus/ad/internal/utilities/ImageManager$1;

    iget-object v0, v0, Lcom/octopus/ad/internal/utilities/ImageManager$1;->val$listener:Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;

    iget-object v1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$1$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    return-void
.end method
