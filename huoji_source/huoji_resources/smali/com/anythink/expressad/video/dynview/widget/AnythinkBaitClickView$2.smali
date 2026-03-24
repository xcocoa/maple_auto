.class public final Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/g/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$2;->b:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    iput p2, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$2;->b:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-static {p2}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->b(Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;)Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$2;->b:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->b(Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;)Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    move-result-object p1

    iget p2, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$2;->a:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
