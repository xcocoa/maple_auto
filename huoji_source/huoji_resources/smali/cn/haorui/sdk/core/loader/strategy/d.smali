.class public Lcn/haorui/sdk/core/loader/strategy/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/haorui/sdk/core/loader/loadbean/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/strategy/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcn/haorui/sdk/core/loader/loadbean/a;

    check-cast p2, Lcn/haorui/sdk/core/loader/loadbean/a;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/loadbean/a;->a()I

    move-result p2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/loadbean/a;->a()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
