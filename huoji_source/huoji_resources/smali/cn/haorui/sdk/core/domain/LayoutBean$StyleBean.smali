.class public Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/domain/LayoutBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StyleBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BackgroundBean;,
        Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;,
        Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;,
        Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;,
        Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;,
        Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$IconBean;,
        Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;,
        Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;,
        Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;,
        Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;,
        Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;,
        Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;,
        Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;
    }
.end annotation


# instance fields
.field private button:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

.field private container:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;

.field private content:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

.field private creative:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

.field private creatives:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

.field private dislike:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

.field private icon:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$IconBean;

.field private id:I

.field private logo:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

.field private source:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

.field private title:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getButton()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->button:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    return-object v0
.end method

.method public getContainer()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->container:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;

    return-object v0
.end method

.method public getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->content:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    return-object v0
.end method

.method public getCreative()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->creative:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    return-object v0
.end method

.method public getCreatives()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->creatives:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    return-object v0
.end method

.method public getDislike()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->dislike:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    return-object v0
.end method

.method public getIcon()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$IconBean;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->icon:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$IconBean;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->id:I

    return v0
.end method

.method public getLogo()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->logo:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    return-object v0
.end method

.method public getSource()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->source:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    return-object v0
.end method

.method public getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->title:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->type:I

    return v0
.end method

.method public setButton(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->button:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    return-void
.end method

.method public setContainer(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->container:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;

    return-void
.end method

.method public setContent(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->content:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    return-void
.end method

.method public setCreative(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->creative:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    return-void
.end method

.method public setCreatives(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->creatives:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    return-void
.end method

.method public setDislike(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->dislike:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    return-void
.end method

.method public setIcon(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$IconBean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->icon:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$IconBean;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->id:I

    return-void
.end method

.method public setLogo(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->logo:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    return-void
.end method

.method public setSource(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->source:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    return-void
.end method

.method public setTitle(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->title:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->type:I

    return-void
.end method
