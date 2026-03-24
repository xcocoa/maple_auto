.class public Lcn/haorui/sdk/core/loader/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/loader/g;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/haorui/sdk/platform/hr/splash/ShakeBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;

    check-cast p2, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;

    invoke-virtual {p2}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->getEcpm()I

    move-result p2

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->getEcpm()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
