.class public Lcn/haorui/sdk/core/utils/LocalThreadPools$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/utils/LocalThreadPools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static a:Lcn/haorui/sdk/core/utils/LocalThreadPools;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/haorui/sdk/core/utils/LocalThreadPools;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/haorui/sdk/core/utils/LocalThreadPools;-><init>(Lcn/haorui/sdk/core/utils/LocalThreadPools$a;)V

    sput-object v0, Lcn/haorui/sdk/core/utils/LocalThreadPools$c;->a:Lcn/haorui/sdk/core/utils/LocalThreadPools;

    return-void
.end method
