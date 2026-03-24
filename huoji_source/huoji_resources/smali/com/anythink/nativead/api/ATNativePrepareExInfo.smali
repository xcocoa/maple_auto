.class public Lcom/anythink/nativead/api/ATNativePrepareExInfo;
.super Lcom/anythink/nativead/api/ATNativePrepareInfo;
.source ""


# instance fields
.field private appInfoClickViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private creativeClickViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private permissionClickViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private privacyClickViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/nativead/api/ATNativePrepareInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppInfoClickViewList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->appInfoClickViewList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->closeView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->appInfoClickViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->appInfoClickViewList:Ljava/util/List;

    return-object v0
.end method

.method public getCreativeClickViewList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->creativeClickViewList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->closeView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->creativeClickViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->creativeClickViewList:Ljava/util/List;

    return-object v0
.end method

.method public getPermissionClickViewList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->permissionClickViewList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->closeView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->permissionClickViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->permissionClickViewList:Ljava/util/List;

    return-object v0
.end method

.method public getPrivacyClickViewList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->privacyClickViewList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->closeView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->privacyClickViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->privacyClickViewList:Ljava/util/List;

    return-object v0
.end method

.method public setAppInfoClickViewList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->appInfoClickViewList:Ljava/util/List;

    return-void
.end method

.method public setCreativeClickViewList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->creativeClickViewList:Ljava/util/List;

    return-void
.end method

.method public setPermissionClickViewList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->permissionClickViewList:Ljava/util/List;

    return-void
.end method

.method public setPrivacyClickViewList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->privacyClickViewList:Ljava/util/List;

    return-void
.end method
