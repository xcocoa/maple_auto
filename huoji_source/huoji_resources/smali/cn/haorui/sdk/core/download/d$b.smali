.class public Lcn/haorui/sdk/core/download/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/download/d;->a(Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/download/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcn/haorui/sdk/core/download/d;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/download/d;Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/download/d$b;->c:Lcn/haorui/sdk/core/download/d;

    iput-object p2, p0, Lcn/haorui/sdk/core/download/d$b;->a:Lcn/haorui/sdk/core/download/b;

    iput-object p3, p0, Lcn/haorui/sdk/core/download/d$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/core/download/d$b;->c:Lcn/haorui/sdk/core/download/d;

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

    iget-object v2, p0, Lcn/haorui/sdk/core/download/d$b;->a:Lcn/haorui/sdk/core/download/b;

    invoke-interface {v1, v2}, Lcn/haorui/sdk/core/download/h;->b(Lcn/haorui/sdk/core/download/b;)V

    iget-object v2, p0, Lcn/haorui/sdk/core/download/d$b;->a:Lcn/haorui/sdk/core/download/b;

    iget-object v3, p0, Lcn/haorui/sdk/core/download/d$b;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcn/haorui/sdk/core/download/h;->a(Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
