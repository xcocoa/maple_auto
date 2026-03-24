.class public Lcom/anythink/basead/ui/AppRatingSmallSizeView;
.super Lcom/anythink/basead/ui/AppRatingView;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/anythink/basead/ui/AppRatingSmallSizeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/basead/ui/AppRatingSmallSizeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/ui/AppRatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/AppRatingView;->setStarSizeInDp(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/AppRatingView;->setStarMargin(I)V

    return-void
.end method
