.class public Lcom/anythink/china/common/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/china/common/b/b;


# static fields
.field public static final a:Ljava/lang/String; = "a"

.field public static final b:Ljava/lang/String; = "anythink_action_notification_click"

.field public static final c:Ljava/lang/String; = "anythink_action_notification_cannel"

.field public static final d:Ljava/lang/String; = "anythink_broadcast_receiver_extra_url"

.field public static final e:Ljava/lang/String; = "anythink_broadcast_receiver_extra_unique_id"

.field public static final f:Ljava/lang/String; = "anythink_broadcast_receiver_extra_request_status"

.field public static final g:Ljava/lang/String; = "anythink_broadcast_receiver_extra_notification_id"

.field private static volatile j:Lcom/anythink/china/common/b/a;


# instance fields
.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/app/NotificationManager;

.field private k:Landroid/content/Context;

.field private l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/china/common/b/a;->k:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/anythink/china/common/b/a;->b(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/china/common/b/a;->i:Landroid/app/NotificationManager;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/china/common/b/a;->h:Ljava/util/Map;

    return-void
.end method

.method private static a(JJ)I
    .locals 0

    long-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float p0, p0, p1

    long-to-float p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p0, p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;
    .locals 2

    sget-object v0, Lcom/anythink/china/common/b/a;->j:Lcom/anythink/china/common/b/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/china/common/b/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/china/common/b/a;->j:Lcom/anythink/china/common/b/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/china/common/b/a;

    invoke-direct {v1, p0}, Lcom/anythink/china/common/b/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/china/common/b/a;->j:Lcom/anythink/china/common/b/a;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/anythink/china/common/b/a;->j:Lcom/anythink/china/common/b/a;

    return-object p0
.end method

.method private a(Lcom/anythink/china/common/a/e;Landroidx/core/app/NotificationCompat$Builder;Lcom/anythink/china/common/b/c;)V
    .locals 12

    iget-object v0, p3, Lcom/anythink/china/common/b/c;->d:Lcom/anythink/china/common/a/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->a()Lcom/anythink/china/common/a/e$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->a()Lcom/anythink/china/common/a/e$a;

    move-result-object v0

    iput-object v0, p3, Lcom/anythink/china/common/b/c;->d:Lcom/anythink/china/common/a/e$a;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "anythink_action_notification_click"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    const-string v2, "anythink_broadcast_receiver_extra_unique_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    const-string v3, "anythink_broadcast_receiver_extra_url"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->a()Lcom/anythink/china/common/a/e$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "anythink_broadcast_receiver_extra_request_status"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p3, Lcom/anythink/china/common/b/c;->a:I

    const-string v5, "anythink_broadcast_receiver_extra_notification_id"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/common/b/a;->k:Landroid/content/Context;

    const-class v6, Lcom/anythink/china/common/NotificationBroadcaseReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v6, 0xc000000

    const/16 v7, 0x1f

    const/high16 v8, 0x8000000

    if-lt v1, v7, :cond_1

    const/high16 v9, 0xc000000

    goto :goto_0

    :cond_1
    const/high16 v9, 0x8000000

    :goto_0
    iget-object v10, p0, Lcom/anythink/china/common/b/a;->k:Landroid/content/Context;

    iget v11, p3, Lcom/anythink/china/common/b/c;->a:I

    invoke-static {v10, v11, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v9, Landroid/content/Intent;

    const-string v10, "anythink_action_notification_cannel"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v9, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    invoke-virtual {v9, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->a()Lcom/anythink/china/common/a/e$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p1, p3, Lcom/anythink/china/common/b/c;->a:I

    invoke-virtual {v9, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/anythink/china/common/b/a;->k:Landroid/content/Context;

    const-class v2, Lcom/anythink/china/common/NotificationBroadcaseReceiver;

    invoke-virtual {v9, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-lt v1, v7, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v6, 0x8000000

    :goto_1
    iget-object p1, p0, Lcom/anythink/china/common/b/a;->k:Landroid/content/Context;

    iget p3, p3, Lcom/anythink/china/common/b/c;->a:I

    invoke-static {p1, p3, v9, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private d(Lcom/anythink/china/common/a/e;)V
    .locals 7

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;JJZ)V

    return-void
.end method

.method private e(Lcom/anythink/china/common/a/e;)V
    .locals 7

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;JJZ)V

    return-void
.end method

.method private f(Lcom/anythink/china/common/a/e;)Lcom/anythink/china/common/b/c;
    .locals 5

    iget-object v0, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/china/common/b/a;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/china/common/b/c;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/anythink/china/common/b/a;->k:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object v3, p0, Lcom/anythink/china/common/b/a;->i:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1
    iget v2, p0, Lcom/anythink/china/common/b/a;->l:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/anythink/china/common/b/a;->l:I

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    :try_start_0
    iget-object v2, p0, Lcom/anythink/china/common/b/a;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/china/common/b/a;->k:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, p0, Lcom/anythink/china/common/b/a;->k:Landroid/content/Context;

    const-string v3, "core_icon_close"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    :goto_0
    iget-object v2, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object p1, p1, Lcom/anythink/china/common/a/e;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    new-instance p1, Lcom/anythink/china/common/b/c;

    invoke-direct {p1}, Lcom/anythink/china/common/b/c;-><init>()V

    iget v2, p0, Lcom/anythink/china/common/b/a;->l:I

    iput v2, p1, Lcom/anythink/china/common/b/c;->a:I

    iput-object v1, p1, Lcom/anythink/china/common/b/c;->b:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, -0x1

    iput v1, p1, Lcom/anythink/china/common/b/c;->c:I

    iget-object v1, p0, Lcom/anythink/china/common/b/a;->h:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/b/a;->i:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/b/a;->i:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/e;)V
    .locals 7

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x64

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;JJZ)V

    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/e;JJ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;JJZ)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/anythink/china/common/a/e;JJZ)V
    .locals 14

    move-object v1, p0

    move-object v0, p1

    monitor-enter p0

    if-eqz v0, :cond_12

    :try_start_0
    iget-object v2, v0, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    goto/16 :goto_8

    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/anythink/china/common/b/a;->i:Landroid/app/NotificationManager;

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/anythink/china/common/b/a;->k:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/anythink/china/common/b/a;->b(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/china/common/b/a;->i:Landroid/app/NotificationManager;

    :cond_1
    invoke-direct {p0, p1}, Lcom/anythink/china/common/b/a;->f(Lcom/anythink/china/common/a/e;)Lcom/anythink/china/common/b/c;

    move-result-object v2

    iget-object v3, v2, Lcom/anythink/china/common/b/c;->b:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v2, Lcom/anythink/china/common/b/c;->d:Lcom/anythink/china/common/a/e$a;

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->a()Lcom/anythink/china/common/a/e$a;

    move-result-object v5

    if-eq v4, v5, :cond_5

    :cond_2
    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->a()Lcom/anythink/china/common/a/e$a;

    move-result-object v4

    iput-object v4, v2, Lcom/anythink/china/common/b/c;->d:Lcom/anythink/china/common/a/e$a;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "anythink_action_notification_click"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "anythink_broadcast_receiver_extra_unique_id"

    iget-object v6, v0, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "anythink_broadcast_receiver_extra_url"

    iget-object v6, v0, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "anythink_broadcast_receiver_extra_request_status"

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->a()Lcom/anythink/china/common/a/e$a;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "anythink_broadcast_receiver_extra_notification_id"

    iget v6, v2, Lcom/anythink/china/common/b/c;->a:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, v1, Lcom/anythink/china/common/b/a;->k:Landroid/content/Context;

    const-class v6, Lcom/anythink/china/common/NotificationBroadcaseReceiver;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v6, 0xc000000

    const/16 v7, 0x1f

    const/high16 v8, 0x8000000

    if-lt v5, v7, :cond_3

    const/high16 v9, 0xc000000

    goto :goto_0

    :cond_3
    const/high16 v9, 0x8000000

    :goto_0
    iget-object v10, v1, Lcom/anythink/china/common/b/a;->k:Landroid/content/Context;

    iget v11, v2, Lcom/anythink/china/common/b/c;->a:I

    invoke-static {v10, v11, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v9, Landroid/content/Intent;

    const-string v10, "anythink_action_notification_cannel"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "anythink_broadcast_receiver_extra_unique_id"

    iget-object v11, v0, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "anythink_broadcast_receiver_extra_url"

    iget-object v11, v0, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "anythink_broadcast_receiver_extra_request_status"

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->a()Lcom/anythink/china/common/a/e$a;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "anythink_broadcast_receiver_extra_notification_id"

    iget v11, v2, Lcom/anythink/china/common/b/c;->a:I

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v10, v1, Lcom/anythink/china/common/b/a;->k:Landroid/content/Context;

    const-class v11, Lcom/anythink/china/common/NotificationBroadcaseReceiver;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-lt v5, v7, :cond_4

    goto :goto_1

    :cond_4
    const/high16 v6, 0x8000000

    :goto_1
    iget-object v5, v1, Lcom/anythink/china/common/b/a;->k:Landroid/content/Context;

    iget v7, v2, Lcom/anythink/china/common/b/c;->a:I

    invoke-static {v5, v7, v9, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_5
    iget v4, v2, Lcom/anythink/china/common/b/c;->c:I

    iget v5, v0, Lcom/anythink/china/common/a/e;->p:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_6

    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    const-string v9, "default"

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->f()Z

    move-result v10

    const/16 v11, 0x64

    if-eqz v10, :cond_7

    const-string v9, "\u70b9\u51fb\u6253\u5f00"

    :goto_3
    const/4 v5, 0x1

    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->g()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v9, "\u70b9\u51fb\u5b89\u88c5"

    const/16 v10, 0x64

    goto/16 :goto_6

    :cond_8
    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->h()Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v9, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u53ef\u70b9\u51fb\u91cd\u8bd5"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_9
    move-wide/from16 v12, p2

    long-to-float v10, v12

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float v10, v10, v12

    move-wide/from16 v12, p4

    long-to-float v12, v12

    div-float/2addr v10, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v10, v10, v12

    float-to-int v10, v10

    if-nez p6, :cond_a

    if-ne v4, v10, :cond_a

    monitor-exit p0

    return-void

    :cond_a
    :try_start_2
    iput v10, v2, Lcom/anythink/china/common/b/c;->c:I

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->b()Z

    move-result v4

    if-eqz v4, :cond_c

    iget v4, v0, Lcom/anythink/china/common/a/e;->q:I

    if-ne v4, v6, :cond_b

    const-string v9, "\u7b49\u5f85\u4e0b\u8f7d\u4e2d"

    goto :goto_4

    :cond_b
    const-string v9, "\u7b49\u5f85\u4e0b\u8f7d\u4e2d\uff08\u70b9\u51fb\u53ef\u6682\u505c\uff09"

    :goto_4
    const/4 v5, 0x0

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->c()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v9, "\u70b9\u51fb\u7ee7\u7eed\u4e0b\u8f7d"

    goto :goto_6

    :cond_d
    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->d()Z

    move-result v4

    if-eqz v4, :cond_f

    iget v4, v0, Lcom/anythink/china/common/a/e;->q:I

    if-ne v4, v6, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\uff08\u4e0b\u8f7d\u4e2d\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u70b9\u51fb\u6682\u505c\u4e0b\u8f7d\uff08\u4e0b\u8f7d\u4e2d\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_f
    :goto_6
    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v3, v11, v10, v8}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    :cond_10
    invoke-virtual {v3, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v4, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v4, v9}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v5, :cond_11

    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_7

    :cond_11
    invoke-virtual {v3, v7}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    :goto_7
    iget-object v0, v1, Lcom/anythink/china/common/b/a;->i:Landroid/app/NotificationManager;

    iget v2, v2, Lcom/anythink/china/common/b/c;->a:I

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_12
    :goto_8
    monitor-exit p0

    return-void
.end method

.method public final b(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    return-object p1
.end method

.method public final b(Lcom/anythink/china/common/a/e;)Ljava/lang/String;
    .locals 0

    iget-object p1, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    return-object p1
.end method

.method public final c(Lcom/anythink/china/common/a/e;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/china/common/b/a;->i:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/anythink/china/common/b/a;->f(Lcom/anythink/china/common/a/e;)Lcom/anythink/china/common/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/b/a;->i:Landroid/app/NotificationManager;

    iget v0, v0, Lcom/anythink/china/common/b/c;->a:I

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/anythink/china/common/b/a;->h:Ljava/util/Map;

    iget-object p1, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
