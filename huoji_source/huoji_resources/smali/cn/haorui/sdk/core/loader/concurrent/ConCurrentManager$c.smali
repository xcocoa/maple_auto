.class public Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->onFinalAdLoaded(Ljava/lang/Object;Lcn/haorui/sdk/core/domain/SdkAdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$c;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    iput-object p2, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$c;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$c;->b:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager$c;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->access$100(Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;Ljava/lang/Object;)V

    return-void
.end method
