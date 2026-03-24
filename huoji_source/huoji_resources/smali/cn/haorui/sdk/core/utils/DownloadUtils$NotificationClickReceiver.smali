.class public Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/utils/DownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationClickReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/utils/DownloadUtils;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {v4}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$800(Lcn/haorui/sdk/core/utils/DownloadUtils;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$702(Lcn/haorui/sdk/core/utils/DownloadUtils;J)J

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$802(Lcn/haorui/sdk/core/utils/DownloadUtils;J)J

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {v1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$700(Lcn/haorui/sdk/core/utils/DownloadUtils;)J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    return-void

    :cond_0
    const-string v1, "notify_url"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "notify_id"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationClickReceiver,notify_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",url="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DownloadUtils"

    invoke-static {v4, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v3, -0x1

    goto :goto_1

    :sswitch_0
    const-string v3, "ACTION_DOWNLOAD_INSTALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "ACTION_DOWNLOAD_PAUSE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "ACTION_DOWNLOAD_CACEL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    sget-object v0, Lcn/haorui/sdk/core/download/a$a;->a:Lcn/haorui/sdk/core/download/a;

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/download/a;->b(Ljava/lang/String;)Lcn/haorui/sdk/core/download/d;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    if-eqz v2, :cond_9

    iget v2, v2, Lcn/haorui/sdk/core/download/b;->j:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_9

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/download/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$400(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$400(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_4
    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$100()Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$200(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p2, p1, v1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$900(Lcn/haorui/sdk/core/utils/DownloadUtils;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_1
    sget-object p1, Lcn/haorui/sdk/core/download/a$a;->a:Lcn/haorui/sdk/core/download/a;

    invoke-virtual {p1, v1}, Lcn/haorui/sdk/core/download/a;->b(Ljava/lang/String;)Lcn/haorui/sdk/core/download/d;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, v0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    if-eqz v2, :cond_7

    iget v2, v2, Lcn/haorui/sdk/core/download/b;->j:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Lcn/haorui/sdk/core/download/d;->b()V

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$500(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$500(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/widget/RemoteViews;

    move-result-object p1

    sget v0, Lcn/haorui/sdk/R$id;->notification_pause:I

    const-string v1, "\u6682\u505c"

    :goto_2
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    iget-object p1, p1, Lcn/haorui/sdk/core/download/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/download/d;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcn/haorui/sdk/core/download/d;->a()V

    :cond_6
    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$500(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$500(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/widget/RemoteViews;

    move-result-object p1

    sget v0, Lcn/haorui/sdk/R$id;->notification_pause:I

    const-string v1, "\u7ee7\u7eed"

    goto :goto_2

    :cond_7
    :goto_3
    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$400(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/app/NotificationManager;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$100()Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$100()Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/utils/NotificationBean;

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$400(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/NotificationBean;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_4

    :pswitch_2
    sget-object p1, Lcn/haorui/sdk/core/download/a$a;->a:Lcn/haorui/sdk/core/download/a;

    invoke-virtual {p1, v1}, Lcn/haorui/sdk/core/download/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$400(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/app/NotificationManager;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$400(Lcn/haorui/sdk/core/utils/DownloadUtils;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_8
    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$100()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->this$0:Lcn/haorui/sdk/core/utils/DownloadUtils;

    invoke-static {p2, v1}, Lcn/haorui/sdk/core/utils/DownloadUtils;->access$200(Lcn/haorui/sdk/core/utils/DownloadUtils;Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x418dd5be -> :sswitch_2
        0x42454c88 -> :sswitch_1
        0x69ebebad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
