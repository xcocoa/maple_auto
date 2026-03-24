.class public Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContainerBean"
.end annotation


# instance fields
.field private border:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

.field private padding:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBorder()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;->border:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    return-object v0
.end method

.method public getPadding()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;->padding:Ljava/util/List;

    return-object v0
.end method

.method public setBorder(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;->border:Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    return-void
.end method

.method public setPadding(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;->padding:Ljava/util/List;

    return-void
.end method
