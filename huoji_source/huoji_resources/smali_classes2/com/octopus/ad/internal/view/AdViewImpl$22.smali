.class public Lcom/octopus/ad/internal/view/AdViewImpl$22;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl;->addMuteButton(Lcom/octopus/ad/internal/video/AdVideoView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/video/AdVideoView;

.field public final synthetic b:Lcom/octopus/ad/internal/view/AdViewImpl;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl;Lcom/octopus/ad/internal/video/AdVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$22;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$22;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$22;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/AdVideoView;->toggleMute()Z

    move-result p1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$22;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->f(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    if-eqz p1, :cond_0

    sget p1, Lcom/octopus/ad/R$drawable;->oct_voice_off:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/octopus/ad/R$drawable;->oct_voice_on:I

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method
