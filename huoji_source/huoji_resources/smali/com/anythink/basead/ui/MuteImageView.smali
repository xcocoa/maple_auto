.class public Lcom/anythink/basead/ui/MuteImageView;
.super Landroid/widget/ImageView;
.source ""


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/MuteImageView;->a:Z

    return-void
.end method


# virtual methods
.method public setMute(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
