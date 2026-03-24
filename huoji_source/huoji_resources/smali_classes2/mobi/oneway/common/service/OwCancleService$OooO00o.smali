.class public Lmobi/oneway/common/service/OwCancleService$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/common/service/OwCancleService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lmobi/oneway/common/service/OwCancleService;


# direct methods
.method public constructor <init>(Lmobi/oneway/common/service/OwCancleService;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/common/service/OwCancleService$OooO00o;->OoooOoO:Lmobi/oneway/common/service/OwCancleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lmobi/oneway/common/service/OwCancleService$OooO00o;->OoooOoO:Lmobi/oneway/common/service/OwCancleService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    iget-object v0, p0, Lmobi/oneway/common/service/OwCancleService$OooO00o;->OoooOoO:Lmobi/oneway/common/service/OwCancleService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lmobi/oneway/common/service/OwCancleService$OooO00o;->OoooOoO:Lmobi/oneway/common/service/OwCancleService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
