.class public final Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AnimationBuilder"
.end annotation


# instance fields
.field private duration:J

.field private easing:I

.field private interruptible:Z

.field private listener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;

.field private origin:I

.field private panLimited:Z

.field private final targetSCenter:Landroid/graphics/PointF;

.field private final targetScale:F

.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

.field private final vFocus:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;F)V
    .locals 2

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    const/4 v0, 0x2

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    const/4 v0, 0x1

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->origin:I

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    iput p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->targetScale:F

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method private constructor <init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;FLandroid/graphics/PointF;)V
    .locals 2

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    const/4 p1, 0x2

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    const/4 p1, 0x1

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->origin:I

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    iput p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->targetScale:F

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method private constructor <init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    const/4 p1, 0x2

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    const/4 p1, 0x1

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->origin:I

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    iput p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->targetScale:F

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    iput-object p4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method public synthetic constructor <init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;FLandroid/graphics/PointF;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;FLandroid/graphics/PointF;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;FLcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;F)V

    return-void
.end method

.method private constructor <init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;)V
    .locals 2

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    const/4 v0, 0x2

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    const/4 v0, 0x1

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->origin:I

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$1000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)F

    move-result p1

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->targetScale:F

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    return-void
.end method

.method public synthetic constructor <init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic access$1200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;Z)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->withPanLimited(Z)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;I)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->withOrigin(I)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object p0

    return-object p0
.end method

.method private withOrigin(I)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->origin:I

    return-object p0
.end method

.method private withPanLimited(Z)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 9

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$2800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$2800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;->onInterruptedByNewAnim()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$5400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error thrown by animation listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    iget v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->targetScale:F

    invoke-static {v2, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;F)F

    move-result v2

    iget-boolean v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->panLimited:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    invoke-static {v3, v5, v4, v2, v6}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->targetSCenter:Landroid/graphics/PointF;

    :goto_1
    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    new-instance v5, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V

    invoke-static {v4, v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6402(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v4

    iget-object v5, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$1000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)F

    move-result v5

    invoke-static {v4, v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3502(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;F)F

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v4

    invoke-static {v4, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3602(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;F)F

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v4, v7, v8}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3202(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;J)J

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v4

    invoke-static {v4, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$4502(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v4

    iget-object v5, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$4402(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v4

    invoke-static {v4, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3802(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v4

    iget-object v5, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {v5, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v4, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3102(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v3

    new-instance v4, Landroid/graphics/PointF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v3, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3702(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v0

    iget-wide v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    invoke-static {v0, v3, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3302(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;J)J

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v0

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    invoke-static {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$2702(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;Z)Z

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    invoke-static {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3402(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;I)I

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->origin:I

    invoke-static {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3902(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;I)I

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3202(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;J)J

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->listener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;

    invoke-static {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$2802(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v1

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$4400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v3

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$4400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    new-instance v3, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v3, v2, v4, v6}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;ZLcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)V

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    move-result-object v2

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v0

    add-float/2addr v5, v6

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->vFocus:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v1

    add-float/2addr v0, v3

    invoke-direct {v4, v5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v2, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3702(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public withDuration(J)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-wide p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->duration:J

    return-object p0
.end method

.method public withEasing(I)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$6300()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->easing:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown easing type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withInterruptible(Z)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->interruptible:Z

    return-object p0
.end method

.method public withOnAnimationEventListener(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->listener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;

    return-object p0
.end method
