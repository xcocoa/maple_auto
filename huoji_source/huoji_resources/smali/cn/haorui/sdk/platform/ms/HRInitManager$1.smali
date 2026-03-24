.class public Lcn/haorui/sdk/platform/ms/HRInitManager$1;
.super Lcn/haorui/sdk/core/HRConfig$CustomController;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/ms/HRInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/platform/ms/HRInitManager$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/ms/HRInitManager;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/ms/HRInitManager;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/HRInitManager$1;->this$0:Lcn/haorui/sdk/platform/ms/HRInitManager;

    invoke-direct {p0}, Lcn/haorui/sdk/core/HRConfig$CustomController;-><init>()V

    return-void
.end method


# virtual methods
.method public getOaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/HRInitManager$1;->this$0:Lcn/haorui/sdk/platform/ms/HRInitManager;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/HRInitManager;->access$000(Lcn/haorui/sdk/platform/ms/HRInitManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
