.class public Lcn/haorui/sdk/core/download/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/download/b;

.field public final synthetic b:Lcn/haorui/sdk/core/download/d;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/download/d;Lcn/haorui/sdk/core/download/b;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/download/e;->b:Lcn/haorui/sdk/core/download/d;

    iput-object p2, p0, Lcn/haorui/sdk/core/download/e;->a:Lcn/haorui/sdk/core/download/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/download/e;->b:Lcn/haorui/sdk/core/download/d;

    iget-object v0, v0, Lcn/haorui/sdk/core/download/d;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/download/h;

    iget-object v2, p0, Lcn/haorui/sdk/core/download/e;->a:Lcn/haorui/sdk/core/download/b;

    invoke-interface {v1, v2}, Lcn/haorui/sdk/core/download/h;->a(Lcn/haorui/sdk/core/download/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method
