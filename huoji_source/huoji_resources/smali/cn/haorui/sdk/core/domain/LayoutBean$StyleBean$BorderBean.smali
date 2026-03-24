.class public Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;
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
    name = "BorderBean"
.end annotation


# instance fields
.field private clip:Z

.field private color:Ljava/lang/String;

.field private radius:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClip()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->clip:Z

    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->radius:Ljava/util/List;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->size:I

    return v0
.end method

.method public setClip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->clip:Z

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->color:Ljava/lang/String;

    return-void
.end method

.method public setRadius(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->radius:Ljava/util/List;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->size:I

    return-void
.end method
