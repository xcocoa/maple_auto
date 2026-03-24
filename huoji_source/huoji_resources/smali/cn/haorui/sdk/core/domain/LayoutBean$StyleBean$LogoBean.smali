.class public Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;
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
    name = "LogoBean"
.end annotation


# instance fields
.field private hide:Z

.field private margin:Ljava/util/List;
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
.method public getMargin()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->margin:Ljava/util/List;

    return-object v0
.end method

.method public isHide()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->hide:Z

    return v0
.end method

.method public setHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->hide:Z

    return-void
.end method

.method public setMargin(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->margin:Ljava/util/List;

    return-void
.end method
