.class public Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;
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
    name = "TextBean"
.end annotation


# instance fields
.field private color:Ljava/lang/String;

.field private family:Ljava/lang/String;

.field private lines:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->family:Ljava/lang/String;

    return-object v0
.end method

.method public getLines()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->lines:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->size:I

    return v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->color:Ljava/lang/String;

    return-void
.end method

.method public setFamily(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->family:Ljava/lang/String;

    return-void
.end method

.method public setLines(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->lines:I

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->size:I

    return-void
.end method
