.class public Lcom/octopus/ad/internal/nativead/c$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic b:[Landroid/graphics/Bitmap;

.field public final synthetic c:Lcom/octopus/ad/internal/nativead/c;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/nativead/c;Ljava/util/concurrent/CountDownLatch;[Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c$11;->c:Lcom/octopus/ad/internal/nativead/c;

    iput-object p2, p0, Lcom/octopus/ad/internal/nativead/c$11;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/octopus/ad/internal/nativead/c$11;->b:[Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoadFailed()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$11;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$11;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$11;->b:[Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method
