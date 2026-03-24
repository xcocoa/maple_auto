.class public final Lcom/anythink/basead/ui/SimpleMediaATView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/SimpleMediaATView;->initView(Lcom/anythink/core/common/f/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/basead/ui/SimpleMediaATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/SimpleMediaATView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView;

    iput-object p2, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView;

    new-instance v0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1;

    invoke-direct {v0, p0, p2}, Lcom/anythink/basead/ui/SimpleMediaATView$1$1;-><init>(Lcom/anythink/basead/ui/SimpleMediaATView$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
