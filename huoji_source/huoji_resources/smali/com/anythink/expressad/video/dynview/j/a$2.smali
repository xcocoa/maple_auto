.class public final Lcom/anythink/expressad/video/dynview/j/a$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/g/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/anythink/expressad/video/dynview/c;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lcom/anythink/expressad/video/dynview/j/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/dynview/j/a;Landroid/widget/ImageView;Ljava/lang/String;Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$2;->e:Lcom/anythink/expressad/video/dynview/j/a;

    iput-object p2, p0, Lcom/anythink/expressad/video/dynview/j/a$2;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/anythink/expressad/video/dynview/j/a$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/expressad/video/dynview/j/a$2;->c:Lcom/anythink/expressad/video/dynview/c;

    iput-object p5, p0, Lcom/anythink/expressad/video/dynview/j/a$2;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/j/a$2;->a:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/j/a$2;->e:Lcom/anythink/expressad/video/dynview/j/a;

    invoke-static {p2}, Lcom/anythink/expressad/video/dynview/j/a;->i(Lcom/anythink/expressad/video/dynview/j/a;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/j/a$2;->e:Lcom/anythink/expressad/video/dynview/j/a;

    invoke-static {p2}, Lcom/anythink/expressad/video/dynview/j/a;->i(Lcom/anythink/expressad/video/dynview/j/a;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a$2;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$2;->e:Lcom/anythink/expressad/video/dynview/j/a;

    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/j/a$2;->c:Lcom/anythink/expressad/video/dynview/c;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a$2;->d:Landroid/view/View;

    invoke-static {p1, p2, v0}, Lcom/anythink/expressad/video/dynview/j/a;->a(Lcom/anythink/expressad/video/dynview/j/a;Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
