.class public final Lcom/anythink/expressad/video/module/AnythinkVideoView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/g/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkVideoView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/module/AnythinkVideoView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$2;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$2;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$2;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ImageView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$2;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {}, Lcom/anythink/expressad/video/dynview/i/b;->a()Lcom/anythink/expressad/video/dynview/i/b;

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/anythink/expressad/video/dynview/i/b;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
