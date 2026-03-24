.class public Lcn/haorui/sdk/core/uri/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static c:Lcn/haorui/sdk/core/uri/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/haorui/sdk/core/uri/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/haorui/sdk/core/uri/c;

    invoke-direct {v0}, Lcn/haorui/sdk/core/uri/c;-><init>()V

    sput-object v0, Lcn/haorui/sdk/core/uri/c;->c:Lcn/haorui/sdk/core/uri/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcn/haorui/sdk/core/uri/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/uri/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/uri/c;->b:Ljava/util/ArrayList;

    new-instance v1, Lcn/haorui/sdk/core/uri/a;

    invoke-direct {v1}, Lcn/haorui/sdk/core/uri/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
