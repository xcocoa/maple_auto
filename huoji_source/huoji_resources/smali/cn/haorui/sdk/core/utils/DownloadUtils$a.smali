.class public Lcn/haorui/sdk/core/utils/DownloadUtils$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/download/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/utils/DownloadUtils;->startDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:[Ljava/lang/String;

.field public final synthetic g:[Ljava/lang/String;

.field public final synthetic h:[Ljava/lang/String;

.field public final synthetic i:Lcn/haorui/sdk/core/utils/DownloadUtils;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    iput-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->c:Landroid/content/Context;

    iput-object p5, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->e:Ljava/lang/String;

    iput-object p7, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->f:[Ljava/lang/String;

    iput-object p8, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->g:[Ljava/lang/String;

    iput-object p9, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->h:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/haorui/sdk/core/download/b;)V
    .locals 5

    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$100()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$102(Ljava/util/Map;)Ljava/util/Map;

    :cond_0
    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$100()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$200(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->b:[Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p1, "DownloadUtils"

    const-string v0, "Report send dn_start"

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->b:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->c:Landroid/content/Context;

    new-instance v4, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v4}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v3, v2, v4}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    new-instance p1, Lcn/haorui/sdk/core/utils/NotificationBean;

    invoke-direct {p1}, Lcn/haorui/sdk/core/utils/NotificationBean;-><init>()V

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/NotificationBean;->setAppName(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/NotificationBean;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->b:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/NotificationBean;->setReportDownloadStart([Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->f:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/NotificationBean;->setReportDownloadSuccess([Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->g:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/NotificationBean;->setReportInstallStart([Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->h:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/utils/NotificationBean;->setReportInstallSucc([Ljava/lang/String;)V

    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$100()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    iget-object v2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$200(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$300(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public a(Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lcn/haorui/sdk/core/download/a$a;->a:Lcn/haorui/sdk/core/download/a;

    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcn/haorui/sdk/core/download/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$400(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/app/NotificationManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$400(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$200(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$100()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$200(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/io/File;Lcn/haorui/sdk/core/download/b;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->c:Landroid/content/Context;

    iget-object p2, p2, Lcn/haorui/sdk/core/download/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$600(Lcn/haorui/sdk/core/utils/DownloadUtils;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcn/haorui/sdk/core/download/b;)V
    .locals 6

    iget-wide v0, p1, Lcn/haorui/sdk/core/download/b;->i:J

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-wide v1, p1, Lcn/haorui/sdk/core/download/b;->h:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/16 v0, 0x64

    :cond_0
    iget-object v2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    iget-object v3, p1, Lcn/haorui/sdk/core/download/b;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$200(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$100()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$100()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$400(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/app/NotificationManager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$500(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$500(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/widget/RemoteViews;

    move-result-object p1

    sget v3, Lcn/haorui/sdk/R$id;->notification_progressText:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$500(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/widget/RemoteViews;

    move-result-object p1

    sget v3, Lcn/haorui/sdk/R$id;->notification_pregressBar:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$100()Ljava/util/Map;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/utils/NotificationBean;

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$400(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/NotificationBean;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/haorui/sdk/core/download/a$a;->a:Lcn/haorui/sdk/core/download/a;

    iget-object p1, p1, Lcn/haorui/sdk/core/download/b;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/download/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$400(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/app/NotificationManager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$a;->i:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$400(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_2
    :goto_0
    return-void
.end method
