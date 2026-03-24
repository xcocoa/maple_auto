.class public final Lcom/anythink/basead/ui/SimpleMediaATView$1$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/o/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/SimpleMediaATView$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/SimpleMediaATView$1$1;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/SimpleMediaATView$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1$1;->a:Lcom/anythink/basead/ui/SimpleMediaATView$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1$1;->a:Lcom/anythink/basead/ui/SimpleMediaATView$1$1;

    iget-object v0, v0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView$1;

    iget-object v0, v0, Lcom/anythink/basead/ui/SimpleMediaATView$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/SimpleMediaATView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1$1;->a:Lcom/anythink/basead/ui/SimpleMediaATView$1$1;

    iget-object p1, p1, Lcom/anythink/basead/ui/SimpleMediaATView$1$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView$1;

    iget-object p1, p1, Lcom/anythink/basead/ui/SimpleMediaATView$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/SimpleMediaATView;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
