.class public Lcn/haorui/sdk/core/domain/LayoutBean;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;
    }
.end annotation


# instance fields
.field private dpi:I

.field private mtime:I

.field private style:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;",
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
.method public getDpi()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean;->dpi:I

    return v0
.end method

.method public getMtime()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean;->mtime:I

    return v0
.end method

.method public getStyle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean;->style:Ljava/util/List;

    return-object v0
.end method

.method public setDpi(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean;->dpi:I

    return-void
.end method

.method public setMtime(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean;->mtime:I

    return-void
.end method

.method public setStyle(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean;->style:Ljava/util/List;

    return-void
.end method
