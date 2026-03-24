.class public Lcn/haorui/sdk/core/loader/strategy/c$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/loader/strategy/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/loader/strategy/c;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/strategy/c;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/strategy/c$c;->a:Lcn/haorui/sdk/core/loader/strategy/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c$c;->a:Lcn/haorui/sdk/core/loader/strategy/c;

    iget-object v1, v0, Lcn/haorui/sdk/core/loader/strategy/c;->e:Ljava/util/List;

    iget v2, v0, Lcn/haorui/sdk/core/loader/strategy/c;->d:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/strategy/c;->a(Ljava/util/List;)V

    return-void
.end method
