.class public Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->cacheApi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$d;->a:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$d;->a:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$200(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;Z)V

    return-void
.end method
