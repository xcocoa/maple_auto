.class public Lcn/haorui/sdk/core/view/gif/GifHeader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public bgColor:I

.field public bgIndex:I

.field public currentFrame:Lcn/haorui/sdk/core/view/gif/b;

.field public frameCount:I

.field public frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/view/gif/b;",
            ">;"
        }
    .end annotation
.end field

.field public gct:[I

.field public gctFlag:Z

.field public gctSize:I

.field public height:I

.field public loopCount:I

.field public pixelAspect:I

.field public status:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeader;->gct:[I

    const/4 v0, 0x0

    iput v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeader;->status:I

    iput v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeader;->frameCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/haorui/sdk/core/view/gif/GifHeader;->frames:Ljava/util/List;

    iput v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeader;->loopCount:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeader;->height:I

    return v0
.end method

.method public getNumFrames()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeader;->frameCount:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeader;->status:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/view/gif/GifHeader;->width:I

    return v0
.end method
