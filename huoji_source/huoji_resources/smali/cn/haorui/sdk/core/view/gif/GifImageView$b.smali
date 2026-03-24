.class public Lcn/haorui/sdk/core/view/gif/GifImageView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/view/gif/GifImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/view/gif/GifImageView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/view/gif/GifImageView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView$b;->a:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView$b;->a:Lcn/haorui/sdk/core/view/gif/GifImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->access$002(Lcn/haorui/sdk/core/view/gif/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView$b;->a:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->access$102(Lcn/haorui/sdk/core/view/gif/GifImageView;Lcn/haorui/sdk/core/view/gif/a;)Lcn/haorui/sdk/core/view/gif/a;

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView$b;->a:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->access$202(Lcn/haorui/sdk/core/view/gif/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView$b;->a:Lcn/haorui/sdk/core/view/gif/GifImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->access$302(Lcn/haorui/sdk/core/view/gif/GifImageView;Z)Z

    return-void
.end method
