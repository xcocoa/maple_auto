.class public final Lcom/anythink/expressad/mbbanner/a/d/c$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/g/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/mbbanner/a/d/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/mbbanner/a/d/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/mbbanner/a/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$9;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/c$9;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {p2}, Lcom/anythink/expressad/mbbanner/a/d/c;->k(Lcom/anythink/expressad/mbbanner/a/d/c;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/c$9;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {p2}, Lcom/anythink/expressad/mbbanner/a/d/c;->k(Lcom/anythink/expressad/mbbanner/a/d/c;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$9;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/d/c;->l(Lcom/anythink/expressad/mbbanner/a/d/c;)Z

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$9;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/d/c;->m(Lcom/anythink/expressad/mbbanner/a/d/c;)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$9;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/d/c;->d(Lcom/anythink/expressad/mbbanner/a/d/c;)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$9;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/d/c;->e(Lcom/anythink/expressad/mbbanner/a/d/c;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$9;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    const-string p2, "banner show failed because banner default view is exception"

    invoke-static {p1, p2}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Lcom/anythink/expressad/mbbanner/a/d/c;Ljava/lang/String;)V

    return-void
.end method
