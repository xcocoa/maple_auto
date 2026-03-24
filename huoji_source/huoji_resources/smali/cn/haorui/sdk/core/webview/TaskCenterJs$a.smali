.class public Lcn/haorui/sdk/core/webview/TaskCenterJs$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/download/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/webview/TaskCenterJs;->b(Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcn/haorui/sdk/core/webview/TaskCenterJs;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/webview/TaskCenterJs;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$a;->c:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    iput-object p2, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$a;->a:Ljava/util/List;

    iput-object p3, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/haorui/sdk/core/download/b;)V
    .locals 0

    return-void
.end method

.method public a(Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$a;->a:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$a;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetTaskReport(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$a;->c:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    invoke-static {p2, p1}, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a(Lcn/haorui/sdk/core/webview/TaskCenterJs;Lcn/haorui/sdk/core/download/b;)V

    return-void
.end method

.method public a(Ljava/io/File;Lcn/haorui/sdk/core/download/b;)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$a;->b:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetTaskReport(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcn/haorui/sdk/core/download/b;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterJs$a;->c:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    invoke-static {v0, p1}, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a(Lcn/haorui/sdk/core/webview/TaskCenterJs;Lcn/haorui/sdk/core/download/b;)V

    return-void
.end method
