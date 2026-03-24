.class public Lcom/anythink/expressad/video/widget/SoundImageView;
.super Landroid/widget/ImageView;
.source ""


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/video/widget/SoundImageView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/video/widget/SoundImageView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/video/widget/SoundImageView;->a:Z

    return-void
.end method


# virtual methods
.method public getStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/widget/SoundImageView;->a:Z

    return v0
.end method

.method public setSoundStatus(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/anythink/expressad/video/widget/SoundImageView;->a:Z

    const-string v0, "drawable"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "anythink_reward_sound_open"

    :goto_0
    invoke-static {p1, v1, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "anythink_reward_sound_close"

    goto :goto_0
.end method
