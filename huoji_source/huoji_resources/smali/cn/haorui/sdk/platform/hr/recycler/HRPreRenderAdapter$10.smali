.class public Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$10;
.super Lz2/o000OO00;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showLogo(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$10;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-direct {p0}, Lz2/o000OO00;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lz2/o000O;)V
    .locals 1

    invoke-virtual {p4}, Lz2/o000O;->OooOO0o()I

    move-result p1

    const/16 v0, 0xc8

    if-gt v0, p1, :cond_0

    invoke-virtual {p4}, Lz2/o000O;->OooOO0o()I

    move-result p1

    const/16 p4, 0x12c

    if-le p4, p1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    const/4 p4, 0x5

    if-gt p4, p1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-gt p4, p1, :cond_0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
