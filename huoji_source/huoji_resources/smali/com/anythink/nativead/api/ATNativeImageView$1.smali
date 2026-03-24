.class public final Lcom/anythink/nativead/api/ATNativeImageView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/ATNativeImageView;->setImage(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/anythink/nativead/api/ATNativeImageView;

.field public final synthetic val$imageViewWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/anythink/nativead/api/ATNativeImageView;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativeImageView$1;->this$0:Lcom/anythink/nativead/api/ATNativeImageView;

    iput-object p2, p0, Lcom/anythink/nativead/api/ATNativeImageView$1;->val$imageViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lcom/anythink/nativead/api/ATNativeImageView;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "load: image load fail:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeImageView$1;->val$imageViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/nativead/api/ATNativeImageView;

    iget-object v1, p0, Lcom/anythink/nativead/api/ATNativeImageView$1;->this$0:Lcom/anythink/nativead/api/ATNativeImageView;

    iget-object v1, v1, Lcom/anythink/nativead/api/ATNativeImageView;->mImageUrl:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
