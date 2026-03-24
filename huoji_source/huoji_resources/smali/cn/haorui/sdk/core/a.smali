.class public Lcn/haorui/sdk/core/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/haorui/sdk/core/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcn/haorui/sdk/platform/PlatformFactory;->createAll()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/a;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcn/haorui/sdk/core/e;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lcn/haorui/sdk/core/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/haorui/sdk/core/e;

    return-object p0
.end method
