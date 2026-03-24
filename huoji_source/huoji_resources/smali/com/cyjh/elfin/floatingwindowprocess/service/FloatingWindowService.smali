.class public Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$PhoneStateReceiver;
    }
.end annotation


# static fields
.field private static final Ooooo0o:Ljava/lang/String;

.field public static final OooooO0:I = 0x1

.field public static final OooooOO:I = 0x2

.field public static final OooooOo:I = 0x8

.field public static final Oooooo:I = 0x66

.field public static final Oooooo0:I = 0xb

.field public static final OoooooO:I = 0x65

.field public static final Ooooooo:I = 0xc9

.field public static final o00O0O:Ljava/lang/String; = "PARAM_V"

.field public static final o00Oo0:Ljava/lang/String; = "PARAM_KEYS"

.field public static final o00Ooo:Ljava/lang/String; = "script_service_key_type"

.field public static final o00o0O:Ljava/lang/String; = "script_service_key_encrypt_value"

.field public static final o00oO0O:Ljava/lang/String; = "PARAM_APP_DOMAIN_NAME"

.field public static final o00oO0o:I = 0x1

.field public static final o00ooo:Ljava/lang/String; = "script_service_key_sec_value"

.field public static final o0OoOo0:I = 0xca

.field public static final o0ooOO0:Ljava/lang/String; = "PARAM_APP_2_DOMAIN_NAME"

.field public static final o0ooOOo:Ljava/lang/String; = "PARAM_AUTH_KEYS"

.field public static final oo000o:I = 0x0

.field public static final ooOO:Ljava/lang/String; = "script_service_key_bundle"


# instance fields
.field private final OoooOoO:Landroid/os/Handler;

.field private final OoooOoo:Ljava/lang/String;

.field private Ooooo00:Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$PhoneStateReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06db\u06da\u06e7\u06e6\u06db\u06da\u06dc\u06d6\u06e6\u06e6\u06da\u06e8\u06d6\u06dc\u06e5\u06d8\u06d9\u06dc\u06d9\u06da\u06d6\u06da\u06e5\u06e7\u06e4\u06d8\u06df\u06d9\u06e2\u06e0\u06e0\u06e4\u06ec\u06e5\u06e5\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1d8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xca

    const/16 v2, 0xf3

    const v3, -0x7eb73043

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-class v0, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->Ooooo0o:Ljava/lang/String;

    const-string v0, "\u06dc\u06e4\u06d7\u06d7\u06db\u06eb\u06d6\u06e5\u06eb\u06dc\u06df\u06e7\u06e5\u06d8\u06d8\u06e6\u06e0\u06db\u06d8\u06db\u06dc\u06dc\u06d8\u06d8\u06e0\u06eb\u06e5\u06ec\u06e7\u06d9\u06d9\u06d6\u06e0\u06d8\u06ec\u06ec\u06e7\u06e8\u06db\u06e8\u06df\u06e6\u06e1\u06db\u06d6\u06e0\u06df\u06e7"

    goto :goto_0

    :sswitch_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x6dacfcc5 -> :sswitch_1
        0x7282d1fb -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->OoooOoO:Landroid/os/Handler;

    const-string v0, "android.intent.action.PHONE_STATE"

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->OoooOoo:Ljava/lang/String;

    return-void
.end method

.method private OooO00o()V
    .locals 10

    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const v3, -0x36b64cf9

    const-string v1, "\u06eb\u06e5\u06e8\u06e2\u06e7\u06e2\u06d9\u06d8\u06e1\u06d6\u06e7\u06e7\u06d9\u06d6\u06d9\u06db\u06e1\u06e5\u06e0\u06e6\u06e7\u06da\u06e0\u06e6\u06eb\u06e4\u06e6\u06d8\u06e0\u06db\u06da\u06db\u06e1\u06e5\u06d8\u06d6\u06df\u06db"

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v3

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "\u06eb\u06d6\u06d6\u06d8\u06d6\u06db\u06d9\u06d9\u06dc\u06d8\u06eb\u06ec\u06d6\u06df\u06e2\u06e4\u06eb\u06e2\u06e8\u06d7\u06db\u06e8\u06e1\u06e4\u06e1\u06d8\u06e5\u06e8\u06db\u06e0\u06d9\u06e1\u06e1\u06e4\u06e7\u06e6\u06d8\u06e6\u06e7\u06e6\u06d6\u06d8\u06dc\u06e0\u06e1\u06d8\u06e2\u06db\u06ec\u06ec\u06e2\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v1, "\u06d9\u06d9\u06db\u06d7\u06e2\u06ec\u06e2\u06e5\u06dc\u06e4\u06eb\u06d7\u06eb\u06dc\u06d8\u06db\u06d6\u06ec\u06d8\u06e4\u06ec\u06d7\u06dc\u06eb\u06da\u06e7\u06e1\u06d8\u06d9\u06e8\u06eb\u06d9\u06dc\u06d6\u06d8\u06e2\u06e5\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    const v6, 0x5f798e95

    const-string v1, "\u06d7\u06e4\u06e2\u06df\u06d6\u06d9\u06dc\u06e2\u06d7\u06d9\u06e0\u06db\u06e7\u06e5\u06e1\u06e6\u06da\u06d8\u06d8\u06d9\u06e4\u06e5\u06e1\u06e1\u06e8\u06e1\u06df\u06ec\u06e5\u06d7\u06d6\u06d8\u06d9\u06e1\u06e6\u06e8\u06e7\u06d6\u06e8\u06e4\u06eb\u06e5\u06e4\u06d7\u06e8\u06d8\u06db\u06da\u06db\u06ec\u06e0\u06d8\u06d8\u06e4\u06eb\u06e6\u06d8"

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v6

    sparse-switch v7, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v1, "\u06df\u06d6\u06e1\u06d8\u06dc\u06ec\u06e1\u06d7\u06e6\u06e1\u06df\u06e7\u06df\u06d6\u06db\u06e8\u06e6\u06e6\u06e2\u06eb\u06d9\u06d6\u06dc\u06e5\u06e8\u06e8\u06e2\u06eb\u06d8\u06d8\u06d6\u06d8\u06d6\u06ec\u06e4\u06dc\u06e5\u06dc"

    goto :goto_1

    :cond_0
    const-string v1, "\u06e6\u06e6\u06d9\u06e8\u06d8\u06df\u06e0\u06ec\u06d8\u06d8\u06e6\u06e4\u06e2\u06dc\u06dc\u06e6\u06d8\u06e1\u06e4\u06df\u06eb\u06e6\u06e1\u06d8\u06da\u06df\u06dc\u06d8\u06eb\u06d9\u06e4\u06d8\u06e4\u06e8\u06e4\u06e2\u06eb\u06ec\u06df\u06eb\u06dc\u06d8\u06e5\u06eb\u06eb\u06e5"

    goto :goto_1

    :sswitch_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v1, v7, :cond_0

    const-string v1, "\u06db\u06db\u06d9\u06dc\u06da\u06d8\u06d8\u06ec\u06e4\u06dc\u06d8\u06e1\u06e7\u06d8\u06db\u06d7\u06e2\u06d8\u06e2\u06d8\u06e2\u06d6\u06d8\u06d6\u06e6\u06e6\u06d8\u06ec\u06e4\u06eb\u06df\u06da\u06d9\u06e0\u06ec\u06e0\u06e1\u06e1\u06e7\u06e8\u06da\u06e8\u06ec\u06e1\u06e0\u06e1\u06d8\u06da\u06d9\u06d7\u06e7\u06d7\u06db\u06e5\u06d8\u06e7\u06e7\u06e6\u06d8"

    goto :goto_1

    :sswitch_5
    const-string v1, "\u06d7\u06d7\u06e6\u06d8\u06dc\u06dc\u06e4\u06d6\u06e1\u06e2\u06e8\u06ec\u06e8\u06d8\u06eb\u06ec\u06d6\u06db\u06df\u06d8\u06dc\u06d9\u06ec\u06e6\u06e0\u06dc\u06e2\u06e5\u06d8\u06e8\u06e4\u06e6\u06eb\u06e1\u06d6\u06eb\u06e2\u06d9\u06e0\u06e8\u06e2\u06ec\u06eb\u06e6\u06e5\u06e6\u06ec\u06d8\u06d6"

    goto :goto_0

    :sswitch_6
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v1, "createRecordingNotification"

    const-string v6, "Channel1"

    const/4 v7, 0x3

    invoke-direct {v3, v1, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v1, -0x10000

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v1, v6

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    const v6, -0x6fc21c17

    const-string v1, "\u06d7\u06d9\u06dc\u06d6\u06ec\u06d6\u06d8\u06e7\u06d9\u06d8\u06e7\u06e6\u06d8\u06d8\u06d7\u06ec\u06eb\u06d9\u06eb\u06e0\u06d6\u06d6\u06e4\u06e4\u06e1\u06d8\u06e1\u06eb\u06e5\u06d8\u06d9\u06e0\u06e6\u06e6\u06df\u06d6\u06d8\u06e7\u06eb\u06ec\u06e1\u06da\u06e8\u06d8\u06e2\u06e2\u06db\u06eb\u06df\u06dc\u06d8\u06dc\u06eb"

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    xor-int/2addr v7, v6

    sparse-switch v7, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v1, "\u06df\u06e2\u06e2\u06e1\u06da\u06d6\u06d8\u06eb\u06e2\u06d8\u06d8\u06d9\u06e2\u06e8\u06e8\u06dc\u06e6\u06d8\u06e8\u06eb\u06e5\u06d8\u06e7\u06ec\u06db\u06df\u06e7\u06e0\u06e7\u06e6\u06e4\u06e5\u06d8\u06dc\u06e2\u06d6\u06e1\u06e1\u06d6\u06dc\u06e2\u06d8\u06ec\u06d6\u06ec\u06d8\u06d8\u06d6\u06e6\u06e7\u06e0\u06e7\u06df"

    goto :goto_2

    :sswitch_8
    :try_start_1
    const-string v1, "\u06d9\u06d9\u06d7\u06dc\u06df\u06d8\u06e8\u06ec\u06e2\u06e6\u06ec\u06db\u06e6\u06dc\u06d8\u06e0\u06e2\u06e0\u06e2\u06e4\u06d8\u06d8\u06e4\u06e1\u06e7\u06d8\u06e2\u06da\u06ec\u06e0\u06d7\u06d7"

    goto :goto_2

    :sswitch_9
    const v7, 0x7705b06f

    const-string v1, "\u06e0\u06e4\u06e4\u06d9\u06dc\u06dc\u06d8\u06e7\u06e8\u06e1\u06d8\u06da\u06e1\u06d6\u06df\u06dc\u06e8\u06d8\u06dc\u06e5\u06e1\u06d8\u06e5\u06e1\u06dc\u06eb\u06e2\u06d8\u06d8\u06d7\u06d7\u06d6\u06d8\u06e1\u06db\u06db\u06e7\u06e2\u06eb\u06da\u06e4\u06d7\u06eb\u06d9\u06eb\u06df\u06d8\u06ec\u06dc\u06d8\u06dc\u06d8\u06e8\u06d9\u06ec"

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v7

    sparse-switch v8, :sswitch_data_3

    goto :goto_3

    :sswitch_a
    const-string v1, "\u06d6\u06db\u06ec\u06e5\u06e7\u06e4\u06ec\u06e2\u06e0\u06d8\u06da\u06d8\u06d8\u06e6\u06d6\u06e6\u06d6\u06d7\u06e1\u06ec\u06e5\u06e7\u06df\u06df\u06df\u06ec\u06e2\u06da\u06df\u06e2\u06dc\u06d6\u06e7\u06d8\u06dc\u06dc\u06db\u06e6\u06db\u06e4\u06e7\u06dc"

    goto :goto_3

    :cond_1
    const-string v1, "\u06e8\u06eb\u06d8\u06d8\u06e0\u06ec\u06e0\u06e5\u06ec\u06dc\u06d8\u06e7\u06e5\u06e8\u06e5\u06d8\u06e2\u06e8\u06e1\u06d8\u06eb\u06e5\u06e5\u06e7\u06e6\u06e6\u06d8\u06e8\u06e1\u06d9\u06e2\u06da\u06ec"

    goto :goto_3

    :sswitch_b
    if-eqz v0, :cond_1

    const-string v1, "\u06db\u06d8\u06d6\u06d6\u06da\u06e8\u06d8\u06e5\u06e6\u06e4\u06d9\u06eb\u06d8\u06d8\u06e0\u06e5\u06e7\u06d8\u06d7\u06e7\u06d9\u06d8\u06d9\u06ec\u06e8\u06e5\u06eb\u06eb\u06ec\u06e5\u06d9\u06e0\u06d6\u06d8\u06d7\u06e8\u06e5\u06d8\u06e5\u06d7\u06d9\u06e2\u06e7\u06e0\u06e5\u06e5\u06dc\u06e7\u06db\u06e4\u06e5\u06e0\u06e5\u06d8\u06e1\u06e5\u06da\u06ec\u06e6\u06e8"

    goto :goto_3

    :sswitch_c
    const-string v1, "\u06eb\u06df\u06e8\u06d8\u06e0\u06ec\u06eb\u06db\u06db\u06e7\u06e7\u06d7\u06e0\u06d8\u06e7\u06e1\u06d6\u06d6\u06dc\u06d8\u06e0\u06e2\u06d6\u06df\u06e1\u06eb\u06db\u06da\u06dc\u06e1\u06d6\u06e8\u06e6\u06d7\u06e1\u06e0\u06d7\u06d7\u06df\u06d7\u06e8\u06df\u06d9\u06dc\u06d8"

    goto :goto_2

    :sswitch_d
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "createRecordingNotification"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_4
    const v1, 0x7f1000cc

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v1, 0x7f0801d3

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x7f0801d3

    iput v1, v0, Landroid/app/Notification;->icon:I

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    const/16 v1, 0x22

    iput v1, v0, Landroid/app/Notification;->flags:I

    const/16 v1, 0x62

    iput v1, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :goto_5
    return-void

    :sswitch_e
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_5

    :sswitch_f
    :try_start_2
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d7c8e63 -> :sswitch_0
        -0x47d1958c -> :sswitch_f
        0x15e48cd -> :sswitch_2
        0x2d0b8f74 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x94ade54 -> :sswitch_3
        0x1577b9d -> :sswitch_1
        0xeb923cf -> :sswitch_5
        0x70700c1f -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x5ef662bc -> :sswitch_e
        -0x4ab77393 -> :sswitch_9
        0x2274c82a -> :sswitch_d
        0x5e2bb928 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x7b056f82 -> :sswitch_a
        -0x42b0bee0 -> :sswitch_c
        -0x38f5e87b -> :sswitch_8
        -0x24caefb4 -> :sswitch_b
    .end sparse-switch
.end method

.method private OooO0O0(Landroid/content/Intent;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v0, "\u06d8\u06df\u06d8\u06e8\u06e5\u06d8\u06e2\u06d8\u06ec\u06d6\u06e7\u06da\u06dc\u06d8\u06e5\u06d8\u06e6\u06e4\u06d8\u06d8\u06e7\u06d6\u06e5\u06d8\u06d7\u06d8\u06e8\u06d8\u06dc\u06db\u06df\u06d9\u06ec\u06e2\u06d8\u06e6\u06e8\u06df\u06e2\u06e5\u06dc\u06e8\u06d8\u06e1\u06e8\u06e1"

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x24c

    xor-int/2addr v4, v5

    xor-int/lit8 v4, v4, 0x3

    const/16 v5, 0x2d0

    const v6, -0xd1ed8f0

    xor-int/2addr v4, v5

    xor-int/2addr v4, v6

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e4\u06e4\u06da\u06e2\u06eb\u06d6\u06e4\u06e1\u06d8\u06e8\u06d6\u06dc\u06d8\u06da\u06e6\u06e1\u06da\u06e0\u06dc\u06da\u06ec\u06e6\u06d8\u06e6\u06e2\u06d8\u06e2\u06e4\u06e1\u06d8\u06e5\u06df\u06e5\u06d8\u06e8\u06da\u06df\u06e4\u06eb\u06e7\u06e7\u06df\u06e6\u06d8\u06db\u06eb\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06e8\u06e0\u06e4\u06e2\u06e1\u06d8\u06da\u06d6\u06d9\u06db\u06d8\u06d8\u06da\u06d8\u06d8\u06e0\u06e6\u06d9\u06ec\u06e1\u06e1\u06e0\u06e0\u06e0\u06e5\u06db\u06eb\u06e0\u06db\u06e5\u06d8\u06e1\u06e8\u06d9\u06e1\u06e2\u06e6\u06d8\u06db\u06e5\u06e8\u06da\u06da\u06e6\u06d9\u06ec\u06e4\u06d9\u06d8\u06dc"

    goto :goto_0

    :sswitch_2
    const-string v0, "script_service_key_bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "\u06da\u06eb\u06e6\u06d8\u06d7\u06eb\u06e0\u06d6\u06df\u06db\u06e1\u06e1\u06eb\u06df\u06d6\u06e4\u06e5\u06dc\u06e7\u06d8\u06e8\u06d7\u06e6\u06eb\u06d8\u06e6\u06e7\u06dc\u06e8\u06e5\u06e7\u06e1\u06e7\u06d9\u06e4\u06e7\u06d6\u06dc\u06d8\u06dc\u06e4\u06dc\u06d8\u06e1\u06eb\u06e1\u06dc\u06d9\u06d6\u06db\u06e7\u06e8\u06e7\u06e5\u06e5\u06e0\u06db"

    goto :goto_0

    :sswitch_3
    const v4, -0x12146300

    const-string v0, "\u06df\u06d9\u06dc\u06e1\u06eb\u06e6\u06e1\u06e8\u06e6\u06d8\u06dc\u06e8\u06d6\u06e4\u06ec\u06dc\u06e2\u06e1\u06d7\u06e5\u06e2\u06e7\u06eb\u06e8\u06d6\u06e0\u06d9\u06e1\u06d8\u06e6\u06d7\u06e0\u06d6\u06e0\u06d8\u06d8\u06e6\u06e0\u06da\u06dc\u06e7\u06dc\u06d8\u06e8\u06eb\u06e7\u06d9\u06e8\u06d8\u06d8\u06da\u06d7\u06ec\u06d7\u06e0\u06d8\u06d9\u06ec\u06e1\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const v5, 0x19996956

    const-string v0, "\u06ec\u06ec\u06d8\u06e0\u06ec\u06e6\u06d8\u06eb\u06e1\u06df\u06d7\u06e4\u06e5\u06d7\u06e1\u06dc\u06d8\u06e0\u06db\u06db\u06d6\u06db\u06e2\u06d6\u06e7\u06eb\u06e5\u06eb\u06d7\u06e6\u06df\u06da\u06dc\u06eb\u06e6\u06e4\u06e7\u06d7\u06e5\u06e8\u06e2\u06ec\u06e6\u06d8\u06db\u06e2\u06e2\u06e5\u06e4\u06e2"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06e2\u06d8\u06e5\u06e1\u06e6\u06e5\u06d8\u06e1\u06e7\u06e4\u06d8\u06da\u06e6\u06e7\u06dc\u06e5\u06d8\u06e5\u06d8\u06d9\u06df\u06e0\u06e1\u06d8\u06e4\u06e2\u06e6\u06d8\u06e2\u06ec\u06e5\u06e1\u06da\u06e1\u06d8\u06e8\u06db\u06dc\u06e8\u06e7\u06d8\u06d8\u06d6\u06e5\u06e6\u06d8\u06db\u06e4\u06d6\u06d6\u06ec\u06e6\u06df\u06e7\u06db\u06da\u06d9\u06df\u06da\u06e1\u06d6"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06df\u06dc\u06dc\u06eb\u06d7\u06db\u06df\u06da\u06e0\u06db\u06e5\u06e0\u06d9\u06e7\u06d6\u06d8\u06d7\u06df\u06e7\u06db\u06e6\u06e0\u06e7\u06d6\u06dc\u06e4\u06e7\u06e1\u06ec\u06e4\u06d8\u06eb\u06e8\u06dc\u06d8\u06d9\u06d7\u06d6"

    goto :goto_1

    :cond_0
    const-string v0, "\u06db\u06d8\u06e0\u06db\u06da\u06e1\u06d7\u06db\u06e8\u06d8\u06db\u06eb\u06df\u06e7\u06e2\u06e4\u06dc\u06dc\u06d9\u06eb\u06d7\u06d6\u06eb\u06eb\u06e1\u06e2\u06d6\u06ec\u06e7\u06e5\u06ec\u06e6\u06d8\u06d8\u06db\u06df\u06e2\u06e4\u06d6\u06dc\u06e2\u06d8\u06e6\u06d8"

    goto :goto_2

    :sswitch_7
    if-eqz v3, :cond_0

    const-string v0, "\u06e6\u06e1\u06e1\u06d8\u06d6\u06dc\u06dc\u06d8\u06da\u06da\u06d8\u06e1\u06d6\u06e1\u06d8\u06e4\u06dc\u06d6\u06dc\u06e7\u06e5\u06d7\u06d8\u06dc\u06d8\u06d7\u06e8\u06e7\u06e8\u06d6\u06db\u06dc\u06df\u06e4\u06da\u06e0\u06da\u06e7\u06df\u06d7\u06da\u06d9\u06df\u06e2\u06df\u06d6\u06d8\u06e0\u06df\u06d9\u06ec\u06e6\u06da"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e1\u06ec\u06e8\u06d8\u06ec\u06d6\u06eb\u06df\u06d9\u06df\u06dc\u06d9\u06d8\u06d7\u06d8\u06da\u06e1\u06e6\u06e8\u06d8\u06e8\u06e0\u06d8\u06d8\u06db\u06e2\u06d6\u06d8\u06dc\u06e6\u06e8\u06d8\u06e2\u06e0\u06e0\u06d6\u06db\u06e6\u06e6\u06e4\u06eb\u06db\u06d7\u06d8\u06d7\u06e4\u06e8\u06eb\u06e7\u06e2\u06d6\u06df\u06e7\u06ec\u06eb\u06d7\u06d9\u06d7"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e0\u06da\u06dc\u06d8\u06e7\u06d8\u06d8\u06d8\u06db\u06d6\u06e1\u06e7\u06e1\u06e2\u06d8\u06e5\u06eb\u06d9\u06d7\u06d8\u06d8\u06da\u06e0\u06e4\u06d6\u06df\u06e6\u06d8\u06ec\u06e6\u06d6\u06d8\u06e2\u06d9\u06e1\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06d8\u06e7\u06d6\u06d8\u06d8\u06df\u06e6\u06d8\u06dc\u06e5\u06e1\u06d8\u06db\u06e0\u06dc\u06e6\u06e4\u06d6\u06d8\u06e1\u06d7\u06e6\u06e6\u06db\u06d8\u06d8\u06e6\u06d8\u06e0\u06d7\u06db\u06d8\u06e1\u06d8\u06d8\u06e5\u06e0\u06e0\u06dc\u06eb\u06e6\u06d8\u06e1\u06e8\u06d6\u06e6\u06dc\u06d7\u06d6\u06e1\u06d8\u06d8\u06eb\u06e2\u06d6\u06d8"

    goto :goto_0

    :sswitch_b
    const-string v0, "script_service_key_type"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "\u06e0\u06e2\u06e1\u06d8\u06e6\u06d8\u06db\u06d6\u06e6\u06e0\u06d6\u06e2\u06dc\u06db\u06e6\u06df\u06da\u06ec\u06db\u06e7\u06d7\u06d6\u06db\u06e8\u06e4\u06d6\u06ec\u06e1\u06e8\u06e5\u06d8\u06d8\u06e4\u06e8\u06d8\u06e4\u06d8\u06d6\u06d8\u06da\u06e6\u06e5\u06d8\u06da\u06eb"

    goto :goto_0

    :sswitch_c
    const v4, 0x488eec1e

    const-string v0, "\u06e5\u06d8\u06d8\u06da\u06dc\u06dc\u06e8\u06e7\u06e8\u06e7\u06db\u06e4\u06e7\u06e0\u06d7\u06d8\u06e5\u06e8\u06d8\u06e5\u06df\u06e5\u06d8\u06e2\u06eb\u06d6\u06e6\u06eb\u06da\u06d9\u06e0\u06e7\u06e7\u06e4\u06db\u06d8\u06da\u06e7\u06ec\u06d6\u06eb\u06d7\u06df\u06e5\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06d9\u06e4\u06df\u06df\u06e8\u06db\u06e6\u06d9\u06d8\u06e5\u06e5\u06d8\u06d9\u06e6\u06e2\u06dc\u06df\u06e6\u06eb\u06e2\u06e6\u06e6\u06df\u06d9\u06eb\u06df\u06e0\u06e7\u06e4\u06e0\u06d9\u06db\u06e6\u06d8\u06e8\u06da\u06d6\u06d8\u06df\u06d9\u06e7\u06e0\u06dc\u06dc"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06d6\u06df\u06d9\u06eb\u06d8\u06e0\u06e8\u06dc\u06d8\u06e1\u06d6\u06e0\u06da\u06d8\u06d8\u06e7\u06e4\u06e8\u06d7\u06ec\u06d9\u06da\u06e5\u06e1\u06e5\u06e1\u06d8\u06d6\u06da\u06e4\u06e2\u06e7\u06db\u06ec\u06df\u06df\u06ec\u06eb\u06d7\u06ec\u06e7\u06e7"

    goto :goto_3

    :sswitch_f
    const v5, -0x13fc6361

    const-string v0, "\u06d8\u06ec\u06df\u06d7\u06e4\u06e5\u06db\u06e0\u06e5\u06e1\u06df\u06d6\u06d8\u06eb\u06dc\u06e5\u06dc\u06e2\u06e4\u06e1\u06e0\u06d8\u06db\u06e5\u06d6\u06e4\u06e1\u06e8\u06d8\u06e1\u06ec\u06d8\u06e5\u06e8\u06da\u06e6\u06e4\u06d9\u06d6\u06db\u06e6\u06ec\u06d8\u06e8\u06d8\u06e2\u06e7\u06dc\u06d8\u06d7\u06e7\u06d8\u06e7\u06e6\u06d9\u06e5\u06da\u06d8\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06e2\u06e4\u06dc\u06db\u06dc\u06e8\u06e4\u06e8\u06db\u06d6\u06e7\u06e4\u06df\u06e2\u06d6\u06eb\u06e5\u06eb\u06df\u06da\u06e8\u06e5\u06e0\u06e8\u06da\u06d7\u06df\u06e5\u06e5\u06eb"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e1\u06e6\u06e5\u06e7\u06e6\u06da\u06e8\u06d9\u06dc\u06d8\u06d6\u06d9\u06e1\u06e8\u06e2\u06e6\u06e6\u06df\u06e7\u06e8\u06e8\u06d8\u06e1\u06d7\u06da\u06da\u06db\u06dc\u06d9\u06e8\u06d7\u06e7\u06e8\u06d8\u06db\u06e1\u06e7\u06d8\u06da\u06e2\u06e6\u06e8\u06e1\u06e8\u06dc\u06e0\u06d8\u06e8\u06e4\u06dc\u06ec\u06d6\u06e8\u06e2\u06da\u06e1"

    goto :goto_4

    :sswitch_11
    if-nez v1, :cond_1

    const-string v0, "\u06d9\u06e0\u06df\u06d7\u06d9\u06ec\u06da\u06e6\u06e0\u06d9\u06e8\u06e6\u06e7\u06d9\u06d7\u06db\u06d6\u06e7\u06e1\u06e4\u06e0\u06e8\u06ec\u06e8\u06d6\u06e7\u06e5\u06d8\u06d8\u06da\u06d8\u06e6\u06d7\u06e7\u06d9\u06e1\u06da"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06db\u06ec\u06e8\u06d8\u06d7\u06d8\u06e7\u06d8\u06eb\u06dc\u06df\u06e8\u06e1\u06e1\u06ec\u06eb\u06e7\u06e1\u06e7\u06d8\u06d8\u06e1\u06d6\u06e7\u06e2\u06ec\u06d6\u06d8\u06d6\u06d7\u06eb\u06e8\u06e8\u06e6\u06df\u06d9\u06e6\u06db\u06d9\u06ec"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06ec\u06e2\u06d8\u06dc\u06d7\u06d8\u06db\u06d9\u06dc\u06d8\u06d7\u06d9\u06d8\u06d8\u06e7\u06da\u06d6\u06dc\u06d7\u06eb\u06df\u06d9\u06e0\u06e4\u06e6\u06dc\u06d9\u06d7\u06e1\u06d8\u06e1\u06e2\u06e8\u06d8\u06d9\u06e4\u06d9\u06d7\u06e4\u06d7\u06db\u06eb\u06e5\u06d8\u06e7\u06e4\u06e6\u06d8\u06db\u06e1\u06e7\u06d8\u06ec\u06d8\u06e7\u06d8"

    goto :goto_3

    :sswitch_14
    const-string v0, "PARAM_APP_2_DOMAIN_NAME"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/j3;->OooOOOo(Ljava/lang/String;)V

    const-string v0, "\u06e5\u06e1\u06eb\u06e2\u06d8\u06e8\u06d6\u06ec\u06e8\u06d8\u06ec\u06df\u06e0\u06d6\u06e1\u06d8\u06eb\u06da\u06e1\u06e5\u06e2\u06e0\u06eb\u06ec\u06eb\u06e1\u06d7\u06df\u06e5\u06eb\u06df\u06d7\u06e8\u06e4\u06e4\u06db\u06d8\u06e6\u06d8\u06d8\u06dc\u06e7\u06db"

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "PARAM_APP_DOMAIN_NAME"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/j3;->OooOOo0(Ljava/lang/String;)V

    const-string v0, "\u06e1\u06d9\u06d9\u06e6\u06e7\u06dc\u06e5\u06e8\u06d7\u06db\u06e4\u06e6\u06d8\u06df\u06db\u06ec\u06e7\u06e7\u06d8\u06d8\u06d8\u06df\u06d8\u06d8\u06db\u06db\u06e1\u06d8\u06d6\u06da\u06e6\u06d8\u06e0\u06e2\u06e8\u06d8\u06da\u06e0\u06dc\u06e5\u06e8\u06d8\u06e2\u06da\u06e8\u06e6\u06e2\u06df\u06e0\u06e1\u06d6\u06d8\u06eb\u06e2\u06e4\u06da\u06d7\u06d7\u06db\u06eb"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "PARAM_APP_DOMAIN_NAME"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/j3;->OooOOo(Ljava/lang/String;)V

    const-string v0, "\u06ec\u06d9\u06d6\u06df\u06db\u06e6\u06df\u06e4\u06df\u06e7\u06e7\u06da\u06dc\u06e1\u06df\u06da\u06eb\u06da\u06df\u06e8\u06e4\u06d7\u06e2\u06e0\u06da\u06d6\u06d7\u06e4\u06e1\u06e5\u06e4\u06e5\u06e8\u06d8\u06ec\u06e2\u06e0\u06d7\u06d6\u06e5\u06e1\u06e6\u06e8\u06d8\u06da\u06e2\u06df\u06db\u06e4\u06e0\u06d9\u06db\u06dc\u06d9\u06e8\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "PARAM_V"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/j3;->OooO0O0:Ljava/lang/String;

    const-string v0, "\u06e0\u06e4\u06e8\u06e1\u06dc\u06e8\u06d8\u06ec\u06db\u06d6\u06d8\u06da\u06e0\u06e5\u06d6\u06d7\u06d7\u06d9\u06dc\u06d7\u06e4\u06df\u06d9\u06d8\u06d6\u06db\u06e6\u06e6\u06d8\u06e0\u06da\u06d6\u06ec\u06e4\u06d7\u06df\u06eb\u06d6\u06d6\u06da\u06e4\u06d8\u06e2\u06db\u06db\u06db\u06da\u06e7\u06e8\u06dc"

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "PARAM_AUTH_KEYS"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/j3;->OooO0OO:[Ljava/lang/String;

    const-string v0, "\u06e1\u06db\u06e4\u06e4\u06dc\u06e5\u06e6\u06e6\u06e8\u06e4\u06e5\u06e0\u06da\u06e6\u06e8\u06d8\u06e2\u06e5\u06d7\u06d8\u06d8\u06df\u06d9\u06e6\u06ec\u06eb\u06d6\u06ec\u06db\u06d9\u06e5\u06d8\u06eb\u06e0\u06d9\u06e6\u06e5\u06e4\u06e2\u06d9\u06e2\u06db\u06d7\u06e1\u06d8\u06e7\u06da\u06e0\u06d7\u06e8\u06eb"

    goto/16 :goto_0

    :sswitch_19
    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v0

    const-string v4, "PARAM_KEYS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lz2/m7;->OooO(Ljava/lang/String;)V

    const-string v0, "\u06e7\u06d6\u06e4\u06d9\u06e5\u06da\u06e5\u06e6\u06e4\u06e4\u06e1\u06df\u06e1\u06dc\u06e7\u06df\u06d8\u06ec\u06d8\u06e1\u06e1\u06d8\u06d7\u06d7\u06d7\u06e0\u06e6\u06eb\u06e7\u06e5\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_1a
    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->OooO0Oo()V

    const-string v0, "\u06da\u06e8\u06d6\u06e7\u06e6\u06dc\u06e8\u06e4\u06dc\u06d8\u06e1\u06dc\u06e7\u06e7\u06e7\u06e4\u06da\u06e2\u06e2\u06e8\u06d9\u06dc\u06e6\u06e2\u06d6\u06d9\u06e5\u06d8\u06d8\u06e4\u06e0\u06e0\u06e1\u06e0\u06e6\u06d8\u06dc\u06e7\u06df\u06d9\u06e8\u06eb\u06eb\u06d7\u06d6\u06d8\u06e4\u06d6\u06e5\u06e8\u06e1\u06db"

    goto/16 :goto_0

    :sswitch_1b
    const v4, -0x352a15fd    # -7009537.5f

    const-string v0, "\u06e5\u06da\u06da\u06da\u06eb\u06e5\u06d8\u06e5\u06e7\u06ec\u06d9\u06dc\u06df\u06dc\u06e7\u06e6\u06d8\u06d8\u06d7\u06d6\u06d6\u06e0\u06e5\u06d8\u06dc\u06d9\u06d7\u06ec\u06ec\u06d8\u06da\u06e2\u06d7\u06d6\u06dc\u06e1\u06d8\u06e8\u06db\u06d8\u06d8"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_5

    goto :goto_5

    :sswitch_1c
    const-string v0, "\u06df\u06d9\u06e1\u06d8\u06da\u06e5\u06d9\u06eb\u06e1\u06db\u06da\u06e8\u06d9\u06df\u06d7\u06e5\u06d8\u06d6\u06d6\u06da\u06e1\u06d6\u06db\u06dc\u06e1\u06db\u06d6\u06e7\u06d8\u06e4\u06dc\u06e4\u06d7\u06dc\u06dc\u06e2\u06dc\u06e7"

    goto :goto_5

    :sswitch_1d
    const-string v0, "\u06ec\u06e6\u06e6\u06eb\u06d8\u06e8\u06eb\u06e5\u06e1\u06d8\u06e1\u06e5\u06e6\u06d8\u06da\u06db\u06e4\u06e6\u06d9\u06e5\u06d8\u06e4\u06e2\u06e7\u06e1\u06e4\u06eb\u06e5\u06e4\u06ec\u06eb\u06eb\u06dc\u06d8\u06e8\u06e7\u06eb\u06d7\u06d7\u06d6\u06d8\u06d6\u06e7\u06e1\u06e2\u06d6\u06d6\u06d8\u06d9\u06e5\u06d6\u06eb\u06e4\u06e5\u06d9\u06e5\u06da\u06dc\u06df\u06dc\u06d8"

    goto :goto_5

    :sswitch_1e
    const v5, 0x19592c01

    const-string v0, "\u06e8\u06ec\u06e7\u06e4\u06e2\u06e6\u06db\u06e2\u06d7\u06e1\u06e2\u06d8\u06d8\u06e5\u06df\u06ec\u06da\u06e8\u06e5\u06d8\u06eb\u06d6\u06e6\u06d8\u06e6\u06db\u06d6\u06d8\u06ec\u06d9\u06e7\u06e2\u06df\u06eb\u06e7\u06d6\u06db\u06e8\u06df\u06e8\u06e6\u06da\u06db\u06e4\u06d7"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_6

    goto :goto_6

    :sswitch_1f
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    const-string v0, "\u06d6\u06e6\u06d8\u06d8\u06d6\u06db\u06df\u06db\u06df\u06db\u06ec\u06da\u06e0\u06e2\u06d9\u06da\u06e7\u06d6\u06dc\u06e7\u06eb\u06db\u06df\u06e5\u06d6\u06e4\u06d6\u06eb\u06e2\u06da\u06eb\u06d8\u06e0\u06ec\u06eb\u06d6\u06e4"

    goto :goto_6

    :cond_2
    const-string v0, "\u06db\u06d7\u06dc\u06d8\u06e0\u06d8\u06e1\u06d7\u06e8\u06e2\u06dc\u06d7\u06eb\u06dc\u06d8\u06e0\u06e4\u06d7\u06e8\u06d6\u06d8\u06d6\u06da\u06e1\u06db\u06da\u06e8\u06dc\u06e4\u06e1\u06d8\u06e5\u06e0\u06d6\u06da\u06df\u06e7\u06e4\u06db\u06db\u06eb\u06d7\u06d8\u06eb\u06da\u06df\u06eb\u06da\u06e4"

    goto :goto_6

    :sswitch_20
    const-string v0, "\u06da\u06da\u06e6\u06d8\u06e8\u06e7\u06dc\u06d7\u06d6\u06db\u06e0\u06d6\u06d8\u06dc\u06e2\u06eb\u06ec\u06e7\u06e5\u06eb\u06e0\u06e8\u06e7\u06eb\u06e7\u06d6\u06eb\u06db\u06db\u06da\u06e1\u06e6\u06e4\u06db\u06e7\u06db\u06e0\u06e2\u06d8\u06d8\u06da\u06eb\u06e5"

    goto :goto_6

    :sswitch_21
    const-string v0, "\u06e5\u06d8\u06ec\u06d8\u06d8\u06d7\u06df\u06e0\u06e6\u06d6\u06ec\u06d9\u06eb\u06e0\u06e6\u06d8\u06d8\u06d6\u06df\u06e0\u06e7\u06db\u06e4\u06e7\u06d8\u06e6\u06e4\u06ec\u06e1\u06e0\u06e1\u06d8\u06da\u06dc\u06e7\u06e5\u06e1\u06e5\u06eb\u06e7\u06df\u06e2\u06d6\u06db\u06e1\u06e0\u06e7\u06db\u06d9\u06e8"

    goto :goto_5

    :sswitch_22
    const-string v0, "\u06df\u06e5\u06e5\u06d8\u06e2\u06e5\u06e1\u06e2\u06d8\u06e0\u06eb\u06ec\u06e6\u06e2\u06e8\u06d8\u06d8\u06db\u06d6\u06e7\u06da\u06d9\u06e8\u06da\u06e1\u06d8\u06e4\u06d7\u06e8\u06db\u06e4\u06d7"

    goto/16 :goto_0

    :sswitch_23
    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v0

    const-string v4, "script_service_key_encrypt_value"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lz2/m7;->OooOO0(Ljava/lang/String;)V

    const-string v0, "\u06da\u06e6\u06da\u06d6\u06e1\u06e5\u06d8\u06e6\u06ec\u06e7\u06e8\u06db\u06ec\u06eb\u06e5\u06e6\u06d8\u06e4\u06dc\u06e6\u06d8\u06dc\u06e6\u06db\u06d6\u06d6\u06e7\u06e0\u06d9\u06e4\u06e0\u06dc\u06e0\u06e5\u06e4\u06eb\u06d9\u06e6\u06db\u06e7\u06d6\u06d6\u06d8\u06e2\u06da\u06e1\u06d8\u06d6\u06d8\u06db\u06e0\u06da\u06e8\u06d8\u06db\u06e6\u06da\u06eb\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_24
    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v0

    const-string v4, "script_service_key_sec_value"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lz2/m7;->OooOO0O(Ljava/lang/String;)V

    const-string v0, "\u06e1\u06e6\u06e8\u06d8\u06e6\u06e7\u06e4\u06e6\u06ec\u06e0\u06e6\u06d6\u06df\u06d8\u06ec\u06d7\u06dc\u06db\u06d9\u06dc\u06df\u06e6\u06d8\u06e2\u06da\u06d8\u06d8\u06d6\u06e7\u06db\u06e6\u06e7\u06df\u06d9\u06d9\u06dc\u06d8\u06e1\u06e2\u06da"

    goto/16 :goto_0

    :sswitch_25
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooOOO()V

    const-string v0, "\u06d6\u06df\u06e1\u06d8\u06e5\u06e0\u06da\u06e5\u06d9\u06e8\u06d7\u06e0\u06e6\u06dc\u06e7\u06e1\u06e8\u06ec\u06e6\u06d8\u06e8\u06e2\u06d8\u06d8\u06d6\u06d7\u06e5\u06d8\u06da\u06eb\u06e2\u06d6\u06d9\u06d8\u06d8\u06d6\u06d8\u06e8\u06df\u06db\u06e5\u06e5\u06e2\u06d9\u06e5\u06da\u06ec"

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "\u06d9\u06e1\u06da\u06e0\u06e1\u06e7\u06d8\u06e8\u06eb\u06e0\u06d9\u06e1\u06e1\u06d8\u06e0\u06da\u06da\u06e6\u06eb\u06e5\u06d8\u06d6\u06e0\u06e5\u06d9\u06dc\u06e5\u06d8\u06e5\u06e6\u06e5\u06db\u06e6\u06da\u06e0\u06e8\u06e8\u06df\u06eb\u06d7\u06d6\u06d8\u06ec\u06d8\u06dc\u06e2\u06eb\u06d6\u06d8\u06eb\u06dc\u06ec\u06d6\u06da\u06e8\u06e5\u06e6\u06e0"

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "\u06d6\u06df\u06e1\u06d8\u06e5\u06e0\u06da\u06e5\u06d9\u06e8\u06d7\u06e0\u06e6\u06dc\u06e7\u06e1\u06e8\u06ec\u06e6\u06d8\u06e8\u06e2\u06d8\u06d8\u06d6\u06d7\u06e5\u06d8\u06da\u06eb\u06e2\u06d6\u06d9\u06d8\u06d8\u06d6\u06d8\u06e8\u06df\u06db\u06e5\u06e5\u06e2\u06d9\u06e5\u06da\u06ec"

    goto/16 :goto_0

    :sswitch_28
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ff8ddde -> :sswitch_1a
        -0x747b4207 -> :sswitch_19
        -0x64d6a629 -> :sswitch_15
        -0x5adf89fb -> :sswitch_2
        -0x4a17dbc1 -> :sswitch_24
        -0x3fa4ffd9 -> :sswitch_c
        -0x3c19e695 -> :sswitch_1b
        -0x3b0f0ad8 -> :sswitch_23
        -0x39625bf3 -> :sswitch_0
        -0x3453b24a -> :sswitch_b
        -0x2d4aaff9 -> :sswitch_3
        -0x290a4feb -> :sswitch_1
        -0xa08ea23 -> :sswitch_17
        0xb470bc -> :sswitch_16
        0x13f068b2 -> :sswitch_18
        0x17a32b65 -> :sswitch_27
        0x2166fb6d -> :sswitch_25
        0x45d2962d -> :sswitch_14
        0x7af9a8cf -> :sswitch_28
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x22a1c14b -> :sswitch_4
        0x15974e70 -> :sswitch_a
        0x19bd8d37 -> :sswitch_27
        0x7202209e -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x686ec889 -> :sswitch_6
        -0x5a2142c2 -> :sswitch_8
        -0x2be81f50 -> :sswitch_7
        -0x20726951 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x3db91c7b -> :sswitch_26
        -0x21adb62 -> :sswitch_d
        0x28a94577 -> :sswitch_f
        0x7f7aa545 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x5598362c -> :sswitch_10
        -0x3cb09e26 -> :sswitch_e
        -0x4171e72 -> :sswitch_11
        0x6619908f -> :sswitch_12
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x7aebd594 -> :sswitch_1c
        0x2a602cc6 -> :sswitch_1e
        0x3ad1d01f -> :sswitch_27
        0x64e00154 -> :sswitch_22
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x54c915de -> :sswitch_21
        -0x537a07b9 -> :sswitch_1f
        -0xf126cfd -> :sswitch_1d
        0x47906e16 -> :sswitch_20
    .end sparse-switch
.end method

.method private OooO0OO()V
    .locals 4

    const-string v0, "\u06e2\u06e0\u06e7\u06e7\u06da\u06d6\u06df\u06db\u06df\u06e6\u06e1\u06d9\u06dc\u06e1\u06e1\u06d8\u06e7\u06e2\u06da\u06e6\u06e7\u06d8\u06e1\u06eb\u06ec\u06dc\u06e1\u06e1\u06e7\u06d6\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x4e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1de

    const/16 v2, 0x3d9

    const v3, 0x4c6da891    # 6.230074E7f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e1\u06e4\u06e7\u06db\u06e1\u06e4\u06dc\u06e1\u06d8\u06e5\u06dc\u06e0\u06ec\u06e5\u06d8\u06d8\u06e0\u06eb\u06dc\u06dc\u06e7\u06e8\u06eb\u06d9\u06e8\u06e2\u06e5\u06e7\u06e8\u06e1\u06d8\u06e5\u06ec\u06d8\u06e1\u06d8\u06e7\u06d8\u06e7\u06d7\u06d7\u06da\u06e6\u06e7\u06ec\u06e2\u06d8\u06df\u06d6\u06e8\u06d8\u06e4\u06df\u06e5\u06eb\u06e1\u06eb"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->OooO0Oo()V

    const-string v0, "\u06df\u06e6\u06e1\u06d8\u06e2\u06d6\u06d8\u06d8\u06da\u06eb\u06d6\u06eb\u06e6\u06d6\u06d8\u06db\u06dc\u06da\u06db\u06e7\u06e5\u06d8\u06d9\u06da\u06e0\u06d6\u06db\u06e6\u06df\u06dc\u06dc\u06e2\u06e6\u06d7"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/z6;->OooO0o(Landroid/content/Context;)V

    const-string v0, "\u06ec\u06d8\u06df\u06e2\u06e1\u06eb\u06dc\u06e8\u06e4\u06e8\u06e7\u06dc\u06d8\u06da\u06e0\u06e2\u06d8\u06d6\u06e7\u06d8\u06e6\u06e5\u06e1\u06d8\u06d8\u06e0\u06e0\u06e2\u06dc\u06dc\u06e2\u06db\u06e0\u06ec\u06e0\u06d6\u06df"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3d199e79 -> :sswitch_1
        0x482a88b -> :sswitch_3
        0x4714d086 -> :sswitch_2
        0x473b85f1 -> :sswitch_0
    .end sparse-switch
.end method

.method private OooO0Oo()V
    .locals 4

    const-string v0, "\u06e0\u06d9\u06da\u06d6\u06e1\u06e7\u06d8\u06e0\u06e8\u06e0\u06d6\u06d8\u06e8\u06db\u06e8\u06da\u06d9\u06e6\u06e0\u06d9\u06e6\u06e1\u06eb\u06e6\u06d9\u06ec\u06d6\u06e1\u06d8\u06e1\u06df\u06e8\u06e2\u06e2\u06d6\u06d8\u06db\u06db\u06d6\u06e0\u06da\u06e8\u06d8\u06e1\u06dc\u06e0\u06eb\u06e1\u06e4\u06d9\u06d9\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x16f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x21c

    const/16 v2, 0x22b

    const v3, -0x46bf6e43

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e4\u06d6\u06e1\u06e8\u06e1\u06d8\u06e8\u06e8\u06da\u06d7\u06eb\u06e7\u06eb\u06e0\u06d7\u06e6\u06d6\u06e4\u06e7\u06e0\u06d7\u06da\u06e2\u06d8\u06db\u06d6\u06d8\u06e4\u06d8\u06e8\u06dc\u06d7\u06e0\u06e0\u06e5\u06e7\u06e7\u06e5\u06e4\u06d8\u06e2\u06db"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooO()V

    const-string v0, "\u06df\u06d7\u06eb\u06df\u06e7\u06e7\u06dc\u06e1\u06e5\u06d8\u06d8\u06df\u06e5\u06d7\u06e2\u06e2\u06e2\u06e2\u06e1\u06dc\u06d8\u06e8\u06e0\u06d7\u06d8\u06e7\u06e7\u06e7\u06e1\u06d6\u06d8\u06d9\u06ec\u06e5\u06e6\u06e5\u06e0\u06ec\u06e4\u06e0\u06d6\u06d7\u06e1\u06d8\u06da\u06d9\u06d9\u06d6\u06e0\u06eb\u06d6\u06df\u06e5\u06d7\u06eb\u06df"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/b7;->OooO0OO()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v2

    invoke-virtual {v2}, Lz2/b7;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v3

    invoke-virtual {v3}, Lz2/b7;->OooO0o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lz2/i7;->OooOOO0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u06e7\u06d6\u06e0\u06e5\u06e2\u06e6\u06da\u06da\u06e1\u06d8\u06e8\u06e2\u06e8\u06e5\u06e2\u06eb\u06e6\u06d6\u06d7\u06d6\u06dc\u06d8\u06e8\u06d6\u06e2\u06da\u06db\u06e4\u06eb\u06d9\u06e8\u06d6\u06d9\u06d7\u06ec\u06d9\u06e1"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x54f81e8c -> :sswitch_3
        -0x4a8c6f44 -> :sswitch_0
        -0x46881a4f -> :sswitch_1
        0x4ff6b9b7 -> :sswitch_2
    .end sparse-switch
.end method

.method private OooO0o0()V
    .locals 4

    const-string v0, "\u06db\u06da\u06dc\u06d8\u06e7\u06eb\u06e1\u06eb\u06ec\u06db\u06e5\u06d9\u06d9\u06d9\u06e0\u06e2\u06eb\u06e8\u06d8\u06db\u06dc\u06db\u06d9\u06e4\u06e6\u06e8\u06d7\u06ec\u06e4\u06e2\u06e1\u06e0\u06e7\u06e1\u06d8\u06df\u06e8\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x98

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xe2

    const/16 v2, 0x1fa

    const v3, -0x3999513

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06d8\u06d9\u06e6\u06df\u06d8\u06d9\u06eb\u06d9\u06e1\u06ec\u06ec\u06e8\u06e4\u06db\u06d6\u06e7\u06da\u06d8\u06e6\u06e2\u06e7\u06e2\u06ec\u06e2\u06d7\u06e5\u06df\u06e7\u06e0\u06e5\u06da\u06d9\u06d8\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i7;->Oooo0o()V

    const-string v0, "\u06dc\u06ec\u06e6\u06d8\u06e2\u06e2\u06e2\u06eb\u06da\u06dc\u06d8\u06e8\u06df\u06e6\u06df\u06dc\u06d8\u06d8\u06db\u06e5\u06e1\u06e6\u06d6\u06e6\u06d8\u06e6\u06e0\u06d6\u06d8\u06e2\u06e8\u06d7\u06dc\u06da\u06d9"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooO00o()V

    const-string v0, "\u06e1\u06db\u06e1\u06eb\u06e5\u06d7\u06ec\u06d7\u06dc\u06d8\u06d6\u06eb\u06e8\u06d8\u06da\u06eb\u06e4\u06df\u06e4\u06e2\u06eb\u06e2\u06d9\u06e7\u06d7\u06eb\u06d7\u06db\u06e8\u06d8\u06da\u06e4\u06db\u06d8\u06d8\u06e8\u06d8\u06da\u06d7\u06d9\u06df\u06e8\u06dc\u06d8\u06db\u06e7\u06e5\u06e4\u06e5\u06ec\u06e0\u06d7\u06e6\u06d8\u06df\u06da\u06e5\u06e5\u06dc\u06e0"

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/z6;->OooO0O0()V

    const-string v0, "\u06da\u06d6\u06d8\u06d8\u06e5\u06ec\u06eb\u06ec\u06d8\u06eb\u06e5\u06d8\u06dc\u06d8\u06e6\u06d8\u06d6\u06d8\u06e0\u06df\u06d8\u06d8\u06eb\u06d7\u06e8\u06d8\u06e8\u06dc\u06df\u06e1\u06e7\u06db\u06df\u06e7\u06d9"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x661e5b41 -> :sswitch_4
        0xfc82296 -> :sswitch_0
        0x3345d653 -> :sswitch_2
        0x3ba0535e -> :sswitch_3
        0x41a30e4c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    const-string v0, "\u06e8\u06d6\u06eb\u06e5\u06df\u06d6\u06e7\u06e6\u06e5\u06d8\u06e8\u06e0\u06df\u06e8\u06eb\u06e8\u06d8\u06e0\u06e0\u06eb\u06da\u06d9\u06e1\u06d8\u06d9\u06e2\u06d6\u06ec\u06e8\u06e8\u06d8\u06d7\u06e7\u06e6\u06d8\u06d6\u06e2\u06e1\u06d8\u06e0\u06ec\u06d8\u06d8\u06e4\u06eb\u06d6\u06e7\u06dc\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x199

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2c9

    const/16 v2, 0xe3

    const v3, -0x40ddf358

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e4\u06e1\u06d8\u06e6\u06da\u06dc\u06e4\u06dc\u06df\u06eb\u06e6\u06eb\u06da\u06d6\u06e8\u06e2\u06d9\u06e8\u06e4\u06d6\u06d7\u06e1\u06d6\u06e7\u06df\u06e7\u06dc\u06d8\u06ec\u06d9\u06e4\u06d7\u06e5\u06e2\u06d9\u06e6\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06e8\u06e6\u06e7\u06d6\u06e2\u06eb\u06e0\u06ec\u06e0\u06e1\u06e5\u06da\u06e2\u06eb\u06db\u06e4\u06ec\u06da\u06d9\u06da\u06d8\u06da\u06dc\u06e0\u06df\u06d9\u06e7\u06df\u06e0\u06e8\u06d8\u06ec\u06e7\u06e6\u06da\u06e8\u06d6\u06d8\u06dc\u06d8\u06d8\u06e7\u06eb\u06e1\u06d9\u06e1\u06d9"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/j7;->OooO0O0()Lz2/j7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/j7;->OooO0Oo()Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x211800ee -> :sswitch_0
        -0x4f32931 -> :sswitch_2
        0x591f1d95 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06d6\u06ec\u06d8\u06d8\u06df\u06e0\u06db\u06dc\u06e5\u06e5\u06d8\u06d8\u06eb\u06e4\u06da\u06e8\u06e0\u06eb\u06dc\u06e1\u06e4\u06e6\u06d8\u06d8\u06ec\u06e0\u06db\u06e8\u06e4\u06d6\u06d7\u06d7\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x295

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x2f7

    const/16 v3, 0x68

    const v4, 0x2248ac57

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e0\u06e0\u06ec\u06ec\u06dc\u06da\u06e8\u06d6\u06d8\u06e8\u06e6\u06e0\u06dc\u06d6\u06e8\u06d8\u06e1\u06eb\u06e8\u06e2\u06e1\u06dc\u06e0\u06d7\u06e8\u06d9\u06e2\u06d6\u06e2\u06e0\u06e8\u06e1\u06d7\u06e0\u06db\u06d7\u06e1\u06e8\u06e1\u06d8\u06d6\u06d9\u06eb"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "\u06d6\u06e0\u06e5\u06e7\u06e2\u06e1\u06dc\u06e0\u06d6\u06d8\u06e7\u06d8\u06ec\u06e1\u06e5\u06e6\u06da\u06dc\u06d7\u06e8\u06dc\u06dc\u06e2\u06e2\u06dc\u06e2\u06e1\u06d8\u06e4\u06e7\u06d8\u06d8\u06e8\u06ec\u06e4\u06eb\u06d6\u06d8\u06d8\u06d8\u06d8\u06e0\u06d6\u06e6\u06ec\u06e8\u06e0\u06e4\u06e4\u06eb\u06d7\u06ec\u06e2\u06d6\u06e0\u06db\u06df"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->OooO00o()V

    const-string v0, "\u06da\u06d7\u06d7\u06e1\u06df\u06e4\u06d7\u06e2\u06d7\u06dc\u06e6\u06e4\u06db\u06eb\u06e1\u06d8\u06d7\u06e7\u06e4\u06ec\u06e4\u06ec\u06e0\u06df\u06e5\u06d8\u06d9\u06d8\u06da\u06e7\u06dc\u06e7\u06e2\u06ec\u06e5\u06e6\u06d7\u06e8\u06d7\u06e7\u06e1\u06ec\u06d8\u06e7\u06df\u06e8\u06e5\u06e8\u06d6\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$PhoneStateReceiver;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$PhoneStateReceiver;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;)V

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->Ooooo00:Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$PhoneStateReceiver;

    const-string v0, "\u06d8\u06e5\u06dc\u06e7\u06e1\u06d6\u06d8\u06d8\u06d8\u06df\u06e6\u06d7\u06e2\u06e5\u06e2\u06eb\u06d9\u06e0\u06da\u06d7\u06df\u06e7\u06e8\u06e8\u06dc\u06d8\u06dc\u06e8"

    goto :goto_0

    :sswitch_4
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "\u06e1\u06df\u06e5\u06d8\u06e8\u06df\u06d7\u06e0\u06df\u06d8\u06e2\u06e6\u06e7\u06e0\u06e7\u06e1\u06eb\u06e6\u06e7\u06da\u06db\u06e7\u06e6\u06d8\u06ec\u06d6\u06ec\u06d7\u06e6\u06e0\u06e7\u06e1\u06e1\u06e1\u06d8\u06e1\u06e1\u06e7\u06d8\u06e8\u06d6\u06e0\u06da\u06d9"

    goto :goto_0

    :sswitch_5
    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "\u06e1\u06ec\u06d8\u06d8\u06e6\u06da\u06e6\u06e5\u06da\u06db\u06d9\u06d8\u06ec\u06e2\u06e4\u06df\u06e1\u06e6\u06da\u06e0\u06e4\u06d6\u06d7\u06d9\u06e8\u06e4\u06e8\u06e1\u06d8\u06e2\u06df\u06e5\u06d8\u06da\u06dc\u06d9\u06e2\u06e6\u06e4\u06e0\u06eb\u06e0\u06db\u06d7\u06db\u06e0\u06da\u06e6\u06db\u06e5\u06d7"

    goto :goto_0

    :sswitch_6
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "\u06e8\u06df\u06d9\u06d8\u06e1\u06e7\u06df\u06e8\u06df\u06e6\u06e1\u06e6\u06db\u06ec\u06e8\u06e8\u06d9\u06d6\u06df\u06db\u06e1\u06d8\u06eb\u06d6\u06d8\u06db\u06d6\u06d9\u06d8\u06e1\u06da\u06d6\u06df\u06eb\u06e7\u06d6\u06e1\u06db\u06e6\u06e5\u06d8\u06e1\u06e2\u06df\u06d6\u06ec\u06e5\u06d8\u06e2\u06e4\u06e5"

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->Ooooo00:Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$PhoneStateReceiver;

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "\u06db\u06e1\u06e7\u06e8\u06eb\u06e5\u06e8\u06eb\u06e5\u06d8\u06dc\u06e6\u06eb\u06da\u06e2\u06d8\u06d8\u06d8\u06d7\u06dc\u06d9\u06e0\u06dc\u06d8\u06e2\u06da\u06d9\u06ec\u06e1\u06dc\u06e8\u06e5\u06d8\u06e0\u06da\u06e5\u06d8\u06d8\u06dc\u06e5"

    goto :goto_0

    :sswitch_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a0d3310 -> :sswitch_8
        -0x6ccc63dd -> :sswitch_5
        -0x6a7274a6 -> :sswitch_0
        0x2dfe764 -> :sswitch_6
        0xb0a6965 -> :sswitch_7
        0xfd5c335 -> :sswitch_1
        0x2024a858 -> :sswitch_4
        0x20f88311 -> :sswitch_3
        0x6e6bae59 -> :sswitch_2
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "\u06e0\u06eb\u06eb\u06e2\u06dc\u06d6\u06d8\u06df\u06d8\u06d8\u06d9\u06e0\u06e6\u06e2\u06dc\u06eb\u06e0\u06e1\u06e7\u06d8\u06e0\u06e2\u06e5\u06eb\u06d7\u06e1\u06db\u06e2\u06db\u06d7\u06db\u06e1\u06e0\u06d8\u06d6\u06ec\u06e1\u06e7\u06ec\u06eb\u06d9\u06db\u06e6\u06d9\u06e4\u06eb\u06e4\u06e1\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2d0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x34e

    const/16 v2, 0x389

    const v3, 0x4a750356    # 4014293.5f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e8\u06d6\u06dc\u06d7\u06e2\u06e8\u06df\u06eb\u06e0\u06e7\u06d9\u06e7\u06eb\u06e1\u06d8\u06db\u06e4\u06e8\u06da\u06d6\u06d8\u06e7\u06d6\u06e6\u06d8\u06d8\u06dc\u06d7\u06d6\u06da\u06d6\u06ec\u06da\u06d6\u06d8\u06e4\u06dc\u06e2\u06df\u06e1\u06e7\u06d8\u06d6\u06e5\u06dc\u06e4\u06dc\u06e5\u06eb\u06e0\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->Ooooo00:Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$PhoneStateReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "\u06d8\u06df\u06e8\u06d8\u06d9\u06d9\u06e0\u06d6\u06eb\u06dc\u06e4\u06e6\u06e8\u06da\u06d8\u06d8\u06db\u06eb\u06d8\u06d8\u06da\u06db\u06da\u06df\u06d7\u06e8\u06d8\u06e5\u06d6\u06d6\u06d8\u06e4\u06ec\u06d6\u06d9\u06e4\u06e4\u06e4\u06e2\u06eb\u06ec\u06ec\u06e8\u06e8\u06e2\u06ec\u06d8\u06e5\u06d8\u06dc\u06e2\u06ec"

    goto :goto_0

    :sswitch_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "\u06e8\u06d8\u06e5\u06d8\u06ec\u06d8\u06dc\u06d8\u06d6\u06d6\u06e2\u06e0\u06e6\u06e5\u06df\u06db\u06d6\u06e5\u06e0\u06db\u06d6\u06ec\u06d8\u06e5\u06e2\u06da\u06ec\u06e2\u06d6\u06df\u06e5\u06ec\u06df\u06e2\u06d8\u06e8\u06e6\u06d8\u06d9\u06e0\u06d8\u06d6\u06e4\u06e7\u06dc\u06d9\u06d9\u06e0\u06dc\u06d8\u06d8\u06e8\u06d8\u06df\u06d8\u06e0\u06db"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3a43cac3 -> :sswitch_1
        -0x13bdc2df -> :sswitch_3
        0x5cc6c154 -> :sswitch_2
        0x6832e576 -> :sswitch_0
    .end sparse-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "\u06ec\u06ec\u06df\u06e2\u06dc\u06e5\u06d8\u06eb\u06e5\u06e2\u06e1\u06db\u06d8\u06e7\u06dc\u06e5\u06d8\u06d7\u06da\u06df\u06dc\u06ec\u06dc\u06dc\u06d8\u06ec\u06d6\u06eb\u06e7\u06e4\u06d8\u06d8\u06e4\u06d6\u06eb\u06d9\u06e4\u06e4\u06dc\u06ec\u06e2\u06d8\u06dc\u06e1\u06d8\u06df\u06df\u06da\u06dc\u06e1\u06d8\u06d8\u06e8\u06d7\u06e4\u06e2\u06dc\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v10, 0xc1

    xor-int/2addr v9, v10

    xor-int/lit16 v9, v9, 0x2fd

    const/16 v10, 0x17f

    const v11, -0x1e13653c

    xor-int/2addr v9, v10

    xor-int/2addr v9, v11

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06d9\u06e8\u06d8\u06eb\u06e8\u06ec\u06e6\u06e1\u06dc\u06df\u06e1\u06d7\u06d7\u06d7\u06d6\u06d8\u06d6\u06e5\u06d6\u06df\u06e8\u06d6\u06db\u06dc\u06e4\u06d6\u06e7\u06e7\u06e2\u06e5\u06da\u06d9\u06e6\u06ec\u06e1\u06d6\u06ec\u06dc\u06e6\u06e8\u06d8\u06e6\u06e6\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06ec\u06d8\u06d8\u06e5\u06d6\u06ec\u06e0\u06e7\u06e6\u06d8\u06eb\u06eb\u06ec\u06da\u06e6\u06dc\u06eb\u06d6\u06e4\u06e1\u06e8\u06e1\u06d8\u06d6\u06da\u06e8\u06df\u06d8\u06e1\u06d8\u06dc\u06da\u06d6\u06d8\u06e7\u06dc\u06e0\u06d6\u06e8\u06d6\u06e8\u06e4\u06e8\u06e1\u06db\u06da"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06d8\u06e1\u06e1\u06e8\u06e8\u06e5\u06d8\u06e5\u06da\u06eb\u06ec\u06d8\u06e2\u06db\u06e6\u06df\u06e6\u06d9\u06df\u06db\u06d8\u06da\u06d9\u06df\u06ec\u06eb\u06e5\u06e7\u06e2\u06d9\u06e1\u06e4\u06e0\u06da\u06e1\u06e5\u06e0\u06ec\u06d8\u06e8\u06eb\u06e6\u06d7\u06db\u06e2\u06e5\u06d6\u06e8\u06e8\u06d8\u06d9\u06e8\u06dc\u06e7\u06e2"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06eb\u06e5\u06e8\u06d8\u06e0\u06db\u06e8\u06d8\u06e8\u06e1\u06e6\u06e4\u06e0\u06e1\u06d9\u06e0\u06e2\u06e2\u06e2\u06d7\u06da\u06d6\u06da\u06dc\u06da\u06d9\u06eb\u06ec\u06ec\u06e1\u06e1\u06d8\u06e5\u06db\u06e7\u06e0\u06e5\u06dc\u06d8"

    goto :goto_0

    :sswitch_4
    const v9, 0x1f3a62a9

    const-string v0, "\u06d9\u06e8\u06d8\u06d8\u06d6\u06ec\u06df\u06d8\u06e6\u06e0\u06da\u06d9\u06eb\u06d6\u06e0\u06db\u06df\u06e0\u06eb\u06e1\u06d8\u06e5\u06dc\u06e8\u06da\u06e8\u06e6\u06e1\u06d8\u06db\u06dc\u06ec\u06d7\u06d9\u06d8\u06d8\u06e8\u06e6\u06df"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const v10, -0x7f32aaea

    const-string v0, "\u06df\u06e2\u06e0\u06eb\u06d6\u06e7\u06db\u06d8\u06d6\u06d8\u06e8\u06d6\u06da\u06e8\u06d8\u06dc\u06dc\u06df\u06d8\u06d6\u06dc\u06d7\u06d7\u06d8\u06e5\u06e2\u06ec\u06e2\u06eb\u06e4\u06e5\u06eb\u06da\u06dc\u06e7\u06e2\u06e7\u06e2\u06d9\u06e1\u06d7\u06e2\u06e2\u06d7\u06e5\u06eb\u06d6\u06d8\u06d6\u06da\u06e6\u06db\u06e7\u06e1\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06df\u06e1\u06dc\u06e2\u06e1\u06e6\u06dc\u06d9\u06d7\u06d6\u06e7\u06e1\u06e2\u06e7\u06d8\u06d8\u06e0\u06e5\u06e6\u06e8\u06d8\u06d9\u06d7\u06d9\u06d6\u06d8\u06e0\u06d6\u06e6\u06e1\u06d6\u06e5"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06e7\u06e7\u06e4\u06d7\u06e8\u06d9\u06db\u06d9\u06df\u06ec\u06eb\u06ec\u06e8\u06d9\u06e6\u06d8\u06df\u06e7\u06db\u06eb\u06e4\u06e1\u06d7\u06e4\u06d8\u06d8\u06e7\u06e6\u06e8\u06d6\u06df\u06e6\u06db\u06e7\u06da\u06db\u06eb\u06e1\u06e1\u06e1\u06ec\u06e6\u06e7\u06e2"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e5\u06e1\u06e2\u06dc\u06d9\u06e4\u06db\u06e8\u06df\u06db\u06e8\u06df\u06dc\u06e1\u06d6\u06d8\u06e4\u06d6\u06e7\u06ec\u06e1\u06ec\u06d6\u06e1\u06e1\u06d8\u06e6\u06eb\u06df\u06e5\u06eb\u06d8\u06e8\u06eb\u06dc\u06d8\u06eb\u06eb\u06d9\u06d9\u06db\u06e8\u06d8\u06dc\u06ec\u06e4"

    goto :goto_2

    :sswitch_8
    if-eqz p1, :cond_0

    const-string v0, "\u06d7\u06dc\u06eb\u06db\u06e8\u06d8\u06d8\u06dc\u06e1\u06e4\u06e5\u06e6\u06d8\u06e8\u06ec\u06e6\u06d6\u06e8\u06e7\u06e7\u06df\u06db\u06e4\u06da\u06e8\u06e2\u06e5\u06e1\u06e6\u06d9\u06e1\u06ec\u06d6\u06e2\u06d7\u06e4\u06e2"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06df\u06e1\u06e2\u06e1\u06d8\u06e6\u06d9\u06da\u06eb\u06e7\u06e0\u06d6\u06d8\u06e8\u06d9\u06e4\u06e8\u06d8\u06da\u06d9\u06da\u06db\u06eb\u06e1\u06db\u06dc\u06ec\u06df\u06e4\u06d8\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06e1\u06e5\u06df\u06d7\u06da\u06d8\u06dc\u06e6\u06d8\u06e6\u06d6\u06dc\u06d9\u06db\u06ec\u06e4\u06dc\u06e2\u06db\u06ec\u06dc\u06e7\u06e8\u06df\u06e2\u06d8\u06db\u06e4\u06dc\u06e6\u06d8\u06ec\u06e7\u06e8\u06e0\u06e8\u06e8\u06d8\u06eb\u06e2\u06da\u06e1\u06e8\u06e2\u06e6\u06d6\u06e5\u06e0\u06e1\u06e6\u06e2\u06e7\u06e5\u06d8\u06e4\u06df\u06e0"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06df\u06d6\u06da\u06d6\u06e7\u06d9\u06db\u06e0\u06d9\u06da\u06e5\u06e7\u06d8\u06e6\u06eb\u06dc\u06e2\u06dc\u06d8\u06d8\u06d9\u06dc\u06db\u06db\u06e0\u06e8\u06eb\u06d6\u06e7\u06d8\u06d7\u06ec\u06e5\u06d8\u06e6\u06d6\u06d8\u06e5\u06e6\u06d7\u06e2\u06e6\u06d8\u06d8\u06da\u06df\u06e1\u06e4\u06ec\u06d9\u06e4\u06ec\u06e6"

    goto :goto_0

    :sswitch_c
    const-string v0, "script_service_key"

    const/4 v8, 0x0

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v0, "\u06da\u06e1\u06d9\u06dc\u06d7\u06d8\u06d8\u06e4\u06e2\u06db\u06e4\u06e8\u06e5\u06d9\u06e7\u06d8\u06d8\u06da\u06d8\u06d6\u06d8\u06e5\u06e1\u06d8\u06e5\u06e5\u06d8\u06eb\u06e4\u06e7\u06dc\u06da"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06e0\u06e2\u06dc\u06dc\u06e7\u06e0\u06da\u06d8\u06d7\u06e4\u06dc\u06df\u06da\u06dc\u06e6\u06e6\u06e0\u06d6\u06dc\u06e4\u06e1\u06e4\u06dc\u06df\u06ec\u06e4\u06e0\u06ec\u06e0\u06d6\u06dc\u06e5\u06e6\u06d8\u06e0\u06df\u06eb\u06e8\u06d6\u06e6\u06d8\u06df\u06eb\u06e1\u06d8"

    move v7, v8

    goto :goto_0

    :sswitch_e
    const/4 v6, 0x0

    const-string v0, "\u06e1\u06dc\u06eb\u06e5\u06d8\u06ec\u06e1\u06ec\u06d8\u06d8\u06dc\u06e1\u06e6\u06d8\u06e7\u06d7\u06e1\u06d8\u06ec\u06da\u06e8\u06d8\u06e4\u06df\u06e5\u06da\u06e8\u06dc\u06d8\u06db\u06e8\u06e2\u06e4\u06d8\u06d8"

    goto :goto_0

    :sswitch_f
    const-string v0, "\u06e1\u06da\u06e6\u06d8\u06ec\u06da\u06e1\u06d8\u06e6\u06e2\u06e5\u06e0\u06d9\u06d8\u06d6\u06e8\u06eb\u06e0\u06d8\u06e5\u06d7\u06dc\u06e7\u06db\u06e8\u06db\u06db\u06e0\u06ec\u06e4\u06df\u06e5\u06d8\u06d7\u06e4\u06e8\u06ec\u06e8\u06e4\u06e7\u06e5\u06d8\u06d9\u06e0\u06e7"

    move v7, v6

    goto :goto_0

    :sswitch_10
    const v9, 0x42cab84

    const-string v0, "\u06e1\u06d6\u06db\u06e0\u06ec\u06e8\u06e0\u06d9\u06e0\u06df\u06db\u06e8\u06da\u06d6\u06e0\u06e8\u06e1\u06eb\u06da\u06d8\u06d8\u06eb\u06e1\u06da\u06e0\u06d9\u06e6\u06d8\u06db\u06eb\u06d6\u06d8\u06ec\u06da\u06e4\u06ec\u06df\u06d8\u06e0\u06e6\u06df\u06e0\u06d8\u06d8\u06e6\u06e4\u06e2\u06e8\u06e4\u06d6\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_3

    goto :goto_3

    :sswitch_11
    const-string v0, "\u06d9\u06da\u06df\u06db\u06ec\u06e6\u06da\u06e7\u06da\u06d8\u06e6\u06d8\u06e1\u06dc\u06da\u06e7\u06db\u06e5\u06d9\u06e7\u06d6\u06d8\u06ec\u06eb\u06d8\u06d8\u06e6\u06e4\u06dc\u06d8\u06e2\u06d7\u06d8\u06e6\u06d9\u06e7\u06e1\u06d6\u06e1\u06d8"

    goto :goto_0

    :sswitch_12
    const-string v0, "\u06e7\u06dc\u06dc\u06d8\u06e7\u06e6\u06e1\u06eb\u06d6\u06dc\u06ec\u06d8\u06e4\u06e2\u06ec\u06e1\u06d6\u06d6\u06e7\u06e8\u06d7\u06e5\u06e1\u06d7\u06da\u06e7\u06db\u06d6\u06d8\u06d9\u06e2\u06e0\u06e5\u06d6\u06e8\u06dc\u06eb\u06d6\u06d8\u06d9\u06e8\u06e7\u06d8\u06d7\u06d8\u06dc\u06e8\u06e6\u06df\u06d7\u06e4\u06e4\u06ec\u06e5\u06db\u06db\u06d9\u06dc"

    goto :goto_3

    :sswitch_13
    const v10, -0x59006ac5

    const-string v0, "\u06e4\u06e6\u06d7\u06d7\u06db\u06df\u06e8\u06e1\u06da\u06e2\u06e6\u06d6\u06d8\u06d8\u06d7\u06e1\u06d7\u06e6\u06da\u06d6\u06e0\u06e8\u06eb\u06e7\u06da\u06eb\u06da\u06e6\u06e7\u06e1\u06dc\u06d8\u06db\u06e6\u06e2\u06db\u06d8\u06da\u06eb\u06ec\u06d6"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_4

    goto :goto_4

    :sswitch_14
    const/4 v0, 0x1

    if-eq v7, v0, :cond_1

    const-string v0, "\u06da\u06e1\u06e8\u06e8\u06e2\u06da\u06d7\u06e2\u06eb\u06d6\u06db\u06d8\u06e1\u06ec\u06e8\u06e7\u06d7\u06ec\u06e5\u06df\u06e5\u06d8\u06d7\u06e8\u06d8\u06d7\u06e8\u06e5\u06d8\u06df\u06dc\u06df\u06db\u06db\u06e8\u06db\u06e5\u06e5\u06d8\u06d7\u06da\u06e0\u06d9\u06eb\u06dc\u06d8\u06e0\u06ec\u06ec\u06e7\u06d8\u06e1\u06e5\u06d8\u06da\u06e4\u06d6\u06eb"

    goto :goto_4

    :cond_1
    const-string v0, "\u06d6\u06da\u06e0\u06d8\u06e4\u06e1\u06d8\u06e5\u06ec\u06d8\u06d8\u06da\u06df\u06e2\u06d6\u06e8\u06e1\u06d9\u06e1\u06d6\u06d9\u06e7\u06d6\u06ec\u06dc\u06d8\u06e0\u06df\u06db\u06e0\u06da\u06dc\u06d8\u06db\u06e2\u06eb\u06e2\u06dc\u06e1\u06e8\u06df\u06e8\u06d8\u06e0\u06e4\u06e1\u06e8\u06d8\u06da\u06d7\u06e6\u06ec\u06e5\u06d6\u06e5\u06d8\u06d6\u06db\u06e8\u06d8"

    goto :goto_4

    :sswitch_15
    const-string v0, "\u06e7\u06e2\u06d8\u06d8\u06ec\u06ec\u06db\u06e7\u06e8\u06dc\u06eb\u06d9\u06d9\u06e2\u06d7\u06e4\u06e6\u06d7\u06e1\u06e7\u06d9\u06d6\u06d7\u06d9\u06e6\u06e2\u06e4\u06d6\u06da\u06e6\u06e8\u06d8"

    goto :goto_4

    :sswitch_16
    const-string v0, "\u06e5\u06dc\u06e1\u06eb\u06eb\u06e5\u06d8\u06d7\u06d9\u06e1\u06d8\u06eb\u06e7\u06db\u06ec\u06eb\u06dc\u06d8\u06d7\u06da\u06e8\u06e8\u06d8\u06e8\u06e7\u06ec\u06e1\u06d7\u06e4\u06da\u06e6\u06ec\u06e6\u06d8\u06db\u06e7\u06e1\u06d8\u06d6\u06e5\u06e5\u06d8\u06ec\u06df\u06e5\u06e6\u06e6\u06ec"

    goto :goto_3

    :sswitch_17
    const-string v0, "\u06d7\u06e4\u06e0\u06e6\u06e6\u06d8\u06d6\u06e0\u06e1\u06d8\u06ec\u06e8\u06df\u06e7\u06e2\u06e4\u06df\u06eb\u06dc\u06d8\u06eb\u06eb\u06e7\u06da\u06d8\u06e0\u06e2\u06df\u06e7\u06eb\u06d8\u06e5\u06e0\u06e7\u06e8\u06e5\u06e0\u06eb\u06dc\u06e5\u06dc\u06d9\u06dc"

    goto :goto_3

    :sswitch_18
    const v9, -0x4bda3c3c

    const-string v0, "\u06e5\u06d9\u06e1\u06d8\u06e0\u06db\u06eb\u06e5\u06e2\u06d6\u06dc\u06d7\u06e4\u06e0\u06da\u06e5\u06e4\u06d8\u06d8\u06e2\u06e8\u06e8\u06d7\u06d9\u06eb\u06e8\u06db\u06dc\u06e7"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_5

    goto :goto_5

    :sswitch_19
    const v10, 0x5151db22

    const-string v0, "\u06dc\u06d6\u06da\u06e5\u06e2\u06e2\u06df\u06e7\u06e4\u06da\u06d7\u06da\u06e1\u06d8\u06e8\u06e2\u06eb\u06d9\u06e4\u06dc\u06ec\u06db\u06e6\u06d8\u06eb\u06db\u06e7\u06e5\u06e0\u06e6\u06d8\u06d7\u06e5\u06d8\u06d9\u06df\u06df\u06e2\u06df\u06e8\u06df\u06e7\u06e7\u06da\u06d9\u06eb\u06e5\u06e0"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_6

    goto :goto_6

    :sswitch_1a
    const-string v0, "\u06ec\u06dc\u06df\u06e4\u06d9\u06e4\u06e1\u06eb\u06e1\u06d8\u06d7\u06d7\u06db\u06e6\u06d7\u06ec\u06e7\u06e6\u06d8\u06d8\u06e6\u06e1\u06d6\u06d8\u06e6\u06e7\u06e2\u06dc\u06eb\u06e6\u06d8\u06d7\u06e1\u06e1\u06d8\u06e2\u06e8\u06e6\u06d8\u06e7\u06eb\u06d8\u06e5\u06ec\u06e8\u06db\u06da"

    goto :goto_5

    :cond_2
    const-string v0, "\u06e8\u06eb\u06e6\u06db\u06df\u06e8\u06d8\u06d7\u06d9\u06dc\u06d8\u06e8\u06e0\u06d7\u06d6\u06db\u06d6\u06e5\u06d7\u06e5\u06e5\u06ec\u06d7\u06e8\u06d9\u06eb\u06eb\u06ec\u06dc\u06d8\u06da\u06d8\u06d8\u06d8\u06d6\u06d8\u06e6\u06d8\u06e6\u06e0\u06e5\u06e5\u06d6\u06e5\u06db\u06da\u06e6\u06d8\u06e0\u06eb\u06e6\u06d8\u06eb\u06d7\u06d7"

    goto :goto_6

    :sswitch_1b
    const/4 v0, 0x2

    if-eq v7, v0, :cond_2

    const-string v0, "\u06e4\u06eb\u06e7\u06d8\u06e2\u06db\u06d6\u06d8\u06e5\u06e6\u06df\u06e0\u06dc\u06db\u06dc\u06d8\u06e7\u06d6\u06ec\u06db\u06d6\u06eb\u06da\u06df\u06e5\u06d8\u06e1\u06e7\u06d8\u06d6\u06ec\u06d9\u06e2\u06e2\u06e7\u06d7\u06e5\u06e2\u06d8\u06d9\u06e5\u06e0\u06d8\u06d8\u06e4\u06db\u06df\u06df\u06d7\u06e5\u06d8"

    goto :goto_6

    :sswitch_1c
    const-string v0, "\u06db\u06d7\u06d8\u06e8\u06d8\u06ec\u06e8\u06e5\u06d8\u06d8\u06e5\u06db\u06d6\u06e6\u06e4\u06eb\u06e4\u06db\u06e4\u06d9\u06d7\u06e8\u06d8\u06ec\u06e6\u06d8\u06e5\u06dc\u06eb\u06d6\u06df\u06d8\u06e1\u06d6\u06d9\u06db\u06ec\u06da"

    goto :goto_6

    :sswitch_1d
    const-string v0, "\u06d9\u06e0\u06e0\u06e6\u06e6\u06e6\u06db\u06df\u06e0\u06da\u06e7\u06e6\u06d8\u06d7\u06e8\u06e4\u06e0\u06df\u06e1\u06d7\u06df\u06d6\u06d9\u06e8\u06e1\u06d8\u06df\u06e2\u06e8\u06e7\u06ec\u06e2\u06db\u06e7\u06d8\u06db\u06dc\u06d8\u06e0\u06e0\u06e7\u06d7\u06db"

    goto :goto_5

    :sswitch_1e
    const-string v0, "\u06d8\u06ec\u06dc\u06e7\u06e7\u06dc\u06d8\u06d8\u06e5\u06e1\u06d8\u06db\u06e7\u06e2\u06e6\u06df\u06e8\u06d8\u06e1\u06e0\u06d6\u06d8\u06e1\u06e5\u06d8\u06d7\u06e8\u06db\u06d8\u06e7\u06e1\u06d8\u06da\u06dc\u06e2"

    goto :goto_5

    :sswitch_1f
    const-string v0, "\u06e8\u06e0\u06e5\u06d8\u06e4\u06dc\u06d8\u06d8\u06e7\u06e4\u06e2\u06dc\u06d9\u06e6\u06d8\u06ec\u06d7\u06d8\u06d8\u06d7\u06ec\u06da\u06e8\u06e6\u06e1\u06d8\u06e6\u06d6\u06e6\u06d8\u06d7\u06e8\u06ec\u06da\u06e4\u06e4"

    goto/16 :goto_0

    :sswitch_20
    const v9, 0x497762a6

    const-string v0, "\u06e8\u06d6\u06e2\u06dc\u06e2\u06d9\u06d7\u06dc\u06e4\u06e6\u06e4\u06d8\u06d8\u06e7\u06eb\u06d6\u06e4\u06e5\u06d7\u06e0\u06dc\u06d8\u06e5\u06e8\u06e5\u06d8\u06da\u06db\u06d6\u06eb\u06e8\u06e5\u06d8\u06dc\u06e7\u06e6\u06e6\u06e7\u06d9\u06d9\u06e5\u06d8\u06d8\u06db\u06e0\u06e1\u06df\u06eb\u06da\u06e7\u06e0\u06e8\u06d8"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_7

    goto :goto_7

    :pswitch_0
    :sswitch_21
    const-string v0, "\u06e0\u06e7\u06e2\u06dc\u06eb\u06e2\u06e6\u06e5\u06e8\u06e1\u06e1\u06d8\u06e0\u06df\u06e6\u06e7\u06d8\u06dc\u06d8\u06e6\u06e0\u06dc\u06d8\u06d9\u06e1\u06da\u06d9\u06d9\u06e8\u06e0\u06dc\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "\u06df\u06da\u06e7\u06da\u06d9\u06e4\u06d6\u06d8\u06d7\u06e2\u06dc\u06d6\u06d8\u06e8\u06e0\u06d7\u06e5\u06e8\u06dc\u06d8\u06e2\u06e8\u06ec\u06da\u06e5\u06db\u06d8\u06d8\u06d8\u06d8\u06e0\u06e0\u06da\u06eb\u06d8\u06d7\u06e6\u06eb\u06da"

    goto :goto_7

    :sswitch_23
    const v10, 0x47f65b67

    const-string v0, "\u06d7\u06e2\u06e7\u06e0\u06e8\u06da\u06d8\u06e6\u06e5\u06e8\u06e7\u06d8\u06ec\u06e4\u06e5\u06d8\u06ec\u06e4\u06dc\u06db\u06d7\u06db\u06df\u06e0\u06e7\u06e4\u06d9\u06e6\u06ec\u06d7\u06db\u06d8\u06ec\u06da\u06dc\u06e2\u06e6"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_8

    goto :goto_8

    :sswitch_24
    const-string v0, "\u06e4\u06eb\u06e1\u06ec\u06d6\u06d6\u06e0\u06db\u06d8\u06d8\u06db\u06e8\u06e5\u06ec\u06dc\u06e5\u06d8\u06d6\u06e1\u06e5\u06d8\u06e4\u06e6\u06e5\u06e1\u06d6\u06d6\u06d8\u06e5\u06d9\u06d8\u06d7\u06e4\u06d6\u06d8\u06e0\u06d8\u06d8\u06d8\u06e0\u06e0\u06dc"

    goto :goto_7

    :cond_3
    const-string v0, "\u06dc\u06ec\u06d6\u06e7\u06ec\u06da\u06eb\u06e0\u06e5\u06d8\u06eb\u06e4\u06e0\u06e4\u06e4\u06d6\u06e8\u06d9\u06e0\u06d8\u06d7\u06d8\u06d8\u06da\u06ec\u06d8\u06e1\u06d8\u06d6\u06d8\u06ec\u06e6\u06e6\u06d8\u06db\u06eb\u06e6\u06e7\u06dc\u06d8\u06dc\u06d6\u06ec\u06da\u06e1\u06dc\u06d8\u06d7\u06e4\u06e6\u06d6\u06e6\u06d8\u06e6\u06e0\u06e5\u06e7\u06db\u06e1\u06d8"

    goto :goto_8

    :sswitch_25
    const/4 v0, 0x3

    if-eq v7, v0, :cond_3

    const-string v0, "\u06d8\u06d7\u06df\u06e2\u06e2\u06db\u06e6\u06dc\u06e6\u06df\u06e0\u06d9\u06ec\u06e8\u06e8\u06d8\u06e5\u06db\u06ec\u06ec\u06df\u06e8\u06d8\u06d7\u06e7\u06dc\u06d8\u06e0\u06da\u06e7\u06dc\u06d6\u06df\u06da\u06d9\u06d8\u06d8\u06ec\u06dc\u06d8\u06e5\u06e0\u06e5\u06d8\u06e0\u06d8\u06da\u06eb\u06e4\u06dc\u06e1\u06eb"

    goto :goto_8

    :sswitch_26
    const-string v0, "\u06eb\u06e7\u06dc\u06d7\u06d6\u06da\u06e7\u06d7\u06e7\u06e6\u06db\u06e5\u06e0\u06df\u06e4\u06e7\u06d7\u06db\u06df\u06e1\u06e2\u06d9\u06d9\u06e5\u06d9\u06e8\u06e8\u06d8\u06e5\u06e4\u06db\u06d8\u06e7\u06e5\u06d8\u06e0\u06eb\u06e0\u06d6\u06e2\u06e6\u06db\u06d7\u06df\u06e0\u06e2\u06dc\u06dc\u06df\u06e6\u06d7\u06d8\u06df\u06ec\u06dc"

    goto :goto_8

    :sswitch_27
    const-string v0, "\u06da\u06df\u06e7\u06e5\u06e4\u06db\u06d8\u06dc\u06e0\u06eb\u06eb\u06e7\u06d6\u06da\u06e2\u06dc\u06ec\u06dc\u06e8\u06d9\u06e1\u06e8\u06eb\u06ec\u06e1\u06e2\u06dc\u06df\u06ec\u06df\u06e1\u06db\u06da\u06e2\u06e8\u06d8"

    goto :goto_7

    :sswitch_28
    const-string v0, "\u06e0\u06e5\u06d9\u06d7\u06e8\u06e5\u06d6\u06e0\u06e6\u06d8\u06db\u06eb\u06dc\u06d8\u06e0\u06e2\u06d8\u06d8\u06e4\u06dc\u06eb\u06eb\u06e1\u06e6\u06df\u06e1\u06e5\u06e8\u06d9\u06db\u06d7\u06e0\u06da\u06d6\u06d6\u06e7\u06e4\u06e7\u06da\u06e7\u06e4\u06e1\u06e0\u06df\u06e6"

    goto/16 :goto_0

    :sswitch_29
    const v9, 0x1906403

    const-string v0, "\u06d9\u06e5\u06d8\u06e4\u06e2\u06e6\u06ec\u06e1\u06db\u06e8\u06eb\u06df\u06db\u06e5\u06d8\u06e6\u06da\u06e2\u06e4\u06da\u06d7\u06e2\u06e4\u06e7\u06d9\u06da\u06e8\u06d8\u06eb\u06eb\u06dc\u06d8"

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_9

    goto :goto_9

    :sswitch_2a
    const-string v0, "\u06e5\u06e7\u06e1\u06d8\u06d8\u06e1\u06e0\u06eb\u06da\u06e2\u06e8\u06e2\u06db\u06e6\u06e6\u06e8\u06da\u06e2\u06d8\u06dc\u06e5\u06eb\u06e6\u06e5\u06ec\u06ec\u06e4\u06d6\u06d9\u06e4\u06da\u06e5\u06d6\u06db\u06dc\u06d6\u06e7\u06d8\u06eb\u06da\u06eb\u06e0\u06e0\u06e7\u06db\u06eb\u06e6\u06ec\u06df\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "\u06e4\u06e4\u06da\u06e4\u06d9\u06d8\u06d8\u06e1\u06e4\u06e4\u06e1\u06e4\u06d7\u06ec\u06e5\u06e2\u06df\u06d7\u06eb\u06e6\u06e8\u06e1\u06d8\u06e2\u06e1\u06db\u06e0\u06d6\u06e4\u06d6\u06dc\u06d8\u06e5\u06df\u06e5\u06d8\u06ec\u06d7\u06dc\u06d8\u06e8\u06e6\u06e1\u06e5\u06ec"

    goto :goto_9

    :sswitch_2c
    const v10, -0x59ada055

    const-string v0, "\u06d7\u06e1\u06e0\u06e8\u06d6\u06eb\u06d8\u06df\u06e6\u06d8\u06e5\u06d8\u06da\u06d7\u06d7\u06e1\u06ec\u06e0\u06e4\u06eb\u06e8\u06e5\u06e2\u06eb\u06e5\u06d8\u06db\u06e6\u06e6\u06d8\u06e7\u06df\u06e8\u06d6\u06d6\u06dc\u06df\u06e5\u06d8\u06d7\u06d9\u06d6\u06d8\u06e6\u06da\u06db\u06da\u06e5\u06e0\u06eb\u06d8\u06d7\u06d7\u06e0\u06e6\u06d8\u06dc\u06e0"

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_a

    goto :goto_a

    :sswitch_2d
    const/16 v0, 0x65

    if-eq v7, v0, :cond_4

    const-string v0, "\u06df\u06ec\u06e2\u06e6\u06e2\u06dc\u06d8\u06d7\u06eb\u06dc\u06d8\u06e2\u06e1\u06d9\u06eb\u06e7\u06e2\u06e7\u06d8\u06d8\u06d8\u06dc\u06d9\u06dc\u06d8\u06e0\u06e0\u06e2\u06eb\u06e0\u06da\u06e1\u06d7\u06dc\u06d6\u06d9\u06eb\u06e8\u06da\u06db\u06e2\u06df\u06eb\u06e0\u06d6\u06d8\u06e7\u06e2\u06d6\u06d8\u06e1\u06da\u06d9\u06ec\u06e6\u06d6\u06da\u06ec\u06e8\u06d8"

    goto :goto_a

    :cond_4
    const-string v0, "\u06e1\u06da\u06d8\u06d8\u06d6\u06e1\u06d7\u06e4\u06e1\u06d8\u06db\u06e5\u06e1\u06d8\u06e4\u06db\u06dc\u06e2\u06e2\u06e7\u06ec\u06d9\u06db\u06d8\u06ec\u06e2\u06e0\u06eb\u06e6\u06da\u06e5"

    goto :goto_a

    :sswitch_2e
    const-string v0, "\u06e5\u06e4\u06e6\u06dc\u06d6\u06e2\u06da\u06e1\u06ec\u06ec\u06d9\u06d9\u06d6\u06d8\u06d8\u06e0\u06d8\u06e4\u06eb\u06e4\u06e6\u06d8\u06e7\u06e2\u06db\u06e7\u06d9\u06d9\u06da\u06e0\u06dc\u06d8\u06d6\u06d8\u06d6\u06e1\u06dc\u06e8"

    goto :goto_a

    :sswitch_2f
    const-string v0, "\u06e1\u06e0\u06e6\u06d8\u06e1\u06d8\u06ec\u06e5\u06e7\u06da\u06da\u06df\u06e2\u06e7\u06d9\u06d7\u06d8\u06d8\u06d9\u06e5\u06e7\u06da\u06e5\u06e0\u06eb\u06d9\u06ec\u06e2\u06e8\u06e4\u06e6\u06da\u06db\u06e7\u06e5\u06da\u06e8\u06e5\u06e6\u06df\u06df\u06e8"

    goto :goto_9

    :sswitch_30
    const-string v0, "\u06e8\u06d8\u06e5\u06d8\u06e4\u06d7\u06dc\u06d8\u06e1\u06ec\u06d7\u06d7\u06dc\u06d8\u06ec\u06d7\u06e5\u06d8\u06d9\u06ec\u06d8\u06d8\u06dc\u06df\u06e8\u06d7\u06df\u06e0\u06d6\u06e2\u06da\u06db\u06eb\u06e8\u06e7\u06db\u06e5\u06d8\u06df\u06e1"

    goto :goto_9

    :sswitch_31
    const-string v0, "\u06da\u06e8\u06df\u06e4\u06e6\u06db\u06e1\u06d9\u06df\u06d8\u06db\u06e8\u06d8\u06df\u06df\u06d9\u06e5\u06dc\u06d8\u06d8\u06eb\u06dc\u06e2\u06e8\u06db\u06e8\u06e8\u06eb\u06e6\u06d6\u06e4\u06df\u06e0\u06d8\u06e5\u06db\u06e8\u06db"

    goto/16 :goto_0

    :sswitch_32
    const v9, -0x219a902d

    const-string v0, "\u06ec\u06d8\u06db\u06e0\u06e6\u06e6\u06e8\u06e0\u06e1\u06d7\u06d9\u06db\u06e4\u06da\u06e5\u06d8\u06dc\u06d6\u06e4\u06e6\u06e6\u06d8\u06d8\u06dc\u06d6\u06e5\u06d9\u06d8\u06ec\u06dc\u06e0\u06e6\u06d8"

    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_b

    goto :goto_b

    :sswitch_33
    const-string v0, "\u06eb\u06df\u06d6\u06dc\u06e1\u06e2\u06db\u06df\u06e2\u06d7\u06e2\u06e5\u06d9\u06d7\u06e5\u06ec\u06e2\u06e5\u06db\u06df\u06d6\u06d8\u06db\u06e5\u06dc\u06e2\u06e1\u06e0\u06e7\u06dc\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "\u06e6\u06ec\u06e8\u06d8\u06e5\u06e4\u06db\u06e0\u06df\u06e7\u06e6\u06db\u06e4\u06e1\u06d9\u06e1\u06d8\u06d9\u06e5\u06dc\u06d8\u06e1\u06d7\u06db\u06da\u06df\u06e5\u06d8\u06eb\u06da\u06e6\u06d8\u06d9\u06e0\u06da\u06e7\u06eb\u06d7\u06df\u06e5\u06e4\u06e2\u06e0\u06d7\u06e5\u06e8\u06e5\u06e7\u06e5\u06dc\u06e0\u06e0\u06dc\u06ec\u06d7\u06d7\u06d7\u06d9\u06e8\u06d8"

    goto :goto_b

    :sswitch_35
    const v10, 0x4ddf4ced    # 4.68295072E8f

    const-string v0, "\u06e8\u06d8\u06d8\u06d8\u06d7\u06e2\u06d8\u06df\u06e7\u06e1\u06d8\u06e6\u06db\u06d8\u06da\u06df\u06e8\u06da\u06e4\u06d6\u06d8\u06d8\u06e4\u06e6\u06df\u06d9\u06ec\u06e2\u06df\u06e1\u06d8\u06da\u06d8\u06eb\u06ec\u06df\u06eb\u06da\u06db"

    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_c

    goto :goto_c

    :sswitch_36
    const-string v0, "\u06e7\u06d7\u06e5\u06e6\u06e1\u06dc\u06e0\u06df\u06e8\u06e6\u06dc\u06e1\u06db\u06ec\u06e5\u06d6\u06e1\u06e8\u06da\u06e6\u06d6\u06d8\u06d7\u06d6\u06dc\u06d8\u06ec\u06e6\u06e7\u06e0\u06d8"

    goto :goto_c

    :cond_5
    const-string v0, "\u06e4\u06df\u06d7\u06ec\u06dc\u06e8\u06d8\u06e1\u06e0\u06e6\u06d8\u06e8\u06eb\u06eb\u06dc\u06df\u06ec\u06e2\u06e6\u06e6\u06d8\u06e4\u06e7\u06d6\u06e4\u06e8\u06d7\u06e0\u06e5\u06dc\u06d8\u06e7\u06e7\u06e6\u06db\u06e4\u06e0\u06e7\u06d8\u06e4\u06d6\u06d9\u06dc\u06e6\u06db\u06e4\u06eb\u06d6\u06e1\u06df\u06e2\u06d7"

    goto :goto_c

    :sswitch_37
    const/16 v0, 0x66

    if-eq v7, v0, :cond_5

    const-string v0, "\u06e1\u06e7\u06e2\u06db\u06e8\u06e6\u06d8\u06d8\u06e0\u06e7\u06da\u06dc\u06e7\u06d8\u06d8\u06e5\u06eb\u06eb\u06e5\u06d6\u06db\u06d8\u06d9\u06eb\u06db\u06e8\u06e8\u06e2\u06dc\u06e0\u06d6\u06eb\u06d8\u06df\u06d6\u06e2\u06e5\u06e8\u06e7\u06d6\u06e4\u06ec\u06e5\u06d6\u06d8"

    goto :goto_c

    :sswitch_38
    const-string v0, "\u06e8\u06d7\u06db\u06d7\u06e6\u06eb\u06db\u06e1\u06d9\u06e7\u06e6\u06e4\u06d7\u06df\u06d8\u06e8\u06e5\u06e1\u06d8\u06eb\u06eb\u06e1\u06d8\u06e6\u06e7\u06d6\u06d7\u06e0\u06e6\u06d8\u06e8\u06e1\u06d6\u06d8\u06e6\u06ec\u06e2\u06d6\u06e8\u06e1\u06df\u06e5\u06d7\u06e0\u06ec\u06e6\u06d8"

    goto :goto_b

    :sswitch_39
    const-string v0, "\u06e4\u06d9\u06d8\u06d8\u06e7\u06e2\u06da\u06d9\u06eb\u06d6\u06ec\u06eb\u06da\u06db\u06ec\u06d9\u06da\u06df\u06e6\u06dc\u06e7\u06db\u06d7\u06e2\u06ec\u06da\u06e6\u06df\u06e1\u06e5\u06df\u06d9\u06e1\u06ec\u06eb\u06e8\u06e0\u06e5\u06e2\u06e6\u06e6\u06e4\u06e8\u06d8\u06ec\u06e2\u06eb\u06e5\u06ec\u06d7\u06eb\u06ec\u06e7\u06e1\u06d6"

    goto :goto_b

    :sswitch_3a
    const v9, 0x63d2bce8

    const-string v0, "\u06dc\u06df\u06e5\u06e1\u06d6\u06e8\u06e2\u06e4\u06e0\u06ec\u06df\u06df\u06e0\u06e0\u06df\u06e6\u06e0\u06dc\u06d9\u06e8\u06da\u06e2\u06da\u06d6\u06d8\u06d6\u06d7\u06df\u06e4\u06e7\u06e5"

    :goto_d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_d

    goto :goto_d

    :sswitch_3b
    const-string v0, "\u06da\u06e6\u06dc\u06da\u06e6\u06dc\u06da\u06d6\u06d9\u06e1\u06e7\u06e1\u06d8\u06e7\u06e8\u06db\u06e2\u06db\u06d6\u06e6\u06e5\u06dc\u06e7\u06d9\u06db\u06d6\u06ec\u06e6\u06d8\u06d9\u06e8\u06e8\u06e1\u06eb\u06d6\u06df\u06eb\u06db"

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "\u06e0\u06e8\u06dc\u06d8\u06d9\u06e4\u06e8\u06d8\u06e0\u06d6\u06dc\u06e4\u06e0\u06dc\u06db\u06db\u06d8\u06ec\u06e8\u06e7\u06e7\u06e5\u06e1\u06da\u06da\u06df\u06e4\u06d7\u06e0\u06d9\u06e4\u06d7\u06da\u06e6\u06e4\u06ec\u06df\u06e7\u06e7\u06d6\u06d6\u06da\u06db"

    goto :goto_d

    :sswitch_3d
    const v10, -0x2284f0f

    const-string v0, "\u06d6\u06e1\u06d8\u06d8\u06db\u06d7\u06d6\u06dc\u06eb\u06e8\u06d8\u06d9\u06d9\u06da\u06df\u06da\u06ec\u06e0\u06d7\u06e2\u06db\u06e1\u06df\u06d6\u06eb\u06eb\u06d8\u06d8\u06e7\u06dc\u06da\u06e2\u06da\u06e1\u06d8\u06e8\u06e7\u06d8\u06d8\u06e6\u06d6\u06d6\u06e0\u06e7\u06e5\u06e6\u06eb\u06eb\u06e2\u06e0\u06e1\u06d8"

    :goto_e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_e

    goto :goto_e

    :sswitch_3e
    const/16 v0, 0xc9

    if-eq v7, v0, :cond_6

    const-string v0, "\u06ec\u06e5\u06d8\u06d8\u06da\u06e7\u06d8\u06d6\u06eb\u06e7\u06e5\u06e4\u06e1\u06d8\u06da\u06df\u06dc\u06e8\u06d6\u06e5\u06d8\u06dc\u06e0\u06dc\u06d8\u06da\u06e4\u06e6\u06e4\u06db\u06d6\u06d6\u06e4\u06dc\u06d8\u06e5\u06db\u06e5\u06e4\u06d6\u06ec\u06e0\u06df\u06d6\u06e5\u06d8\u06e8\u06ec\u06d9\u06e5\u06e4\u06e1\u06d8"

    goto :goto_e

    :cond_6
    const-string v0, "\u06d6\u06d6\u06e4\u06e1\u06d8\u06e6\u06d8\u06e8\u06e5\u06e0\u06dc\u06e8\u06eb\u06db\u06ec\u06df\u06e1\u06ec\u06e1\u06db\u06e6\u06e0\u06d7\u06db\u06df\u06e7\u06d9\u06e4\u06eb\u06db\u06d6\u06e7\u06d8\u06e1\u06da\u06e0\u06e5\u06ec\u06d6\u06dc\u06ec\u06dc"

    goto :goto_e

    :sswitch_3f
    const-string v0, "\u06df\u06d8\u06e8\u06df\u06db\u06df\u06d9\u06e1\u06eb\u06e0\u06e4\u06d8\u06d8\u06d8\u06ec\u06e1\u06d9\u06e0\u06d8\u06d8\u06da\u06d9\u06e7\u06e8\u06e6\u06d7\u06da\u06eb\u06da\u06e5\u06e8\u06da\u06ec\u06da\u06e8\u06dc\u06e4\u06dc\u06ec\u06d8\u06ec\u06d7\u06ec"

    goto :goto_e

    :sswitch_40
    const-string v0, "\u06e5\u06d6\u06e6\u06d8\u06e4\u06db\u06ec\u06e8\u06d8\u06e1\u06e6\u06e0\u06dc\u06d8\u06e1\u06dc\u06db\u06e2\u06da\u06d9\u06d7\u06e8\u06dc\u06d8\u06e8\u06e8\u06e1\u06d8\u06d9\u06db\u06e7\u06d7\u06e4\u06d7\u06da\u06da\u06d8\u06e5\u06eb\u06e6"

    goto :goto_d

    :sswitch_41
    const-string v0, "\u06dc\u06d8\u06e7\u06d8\u06e1\u06e0\u06e5\u06d8\u06e5\u06d8\u06da\u06e1\u06e1\u06e5\u06d8\u06e8\u06db\u06d6\u06d8\u06e1\u06df\u06e4\u06e5\u06d6\u06d6\u06d8\u06d9\u06e1\u06d7\u06eb\u06d6\u06d8\u06d8\u06d7\u06e5\u06ec\u06e8\u06ec\u06e6\u06d8\u06ec\u06d8\u06e1\u06dc\u06ec\u06df\u06ec\u06eb\u06e1\u06e5\u06e5\u06e1\u06d8\u06df\u06db\u06d7\u06d8\u06dc\u06e6\u06e4\u06e5\u06ec"

    goto :goto_d

    :sswitch_42
    const-string v0, "\u06dc\u06d7\u06df\u06e4\u06df\u06d6\u06ec\u06dc\u06e0\u06d7\u06e2\u06e7\u06db\u06d6\u06e7\u06d8\u06e2\u06e4\u06d6\u06d8\u06e7\u06da\u06db\u06e2\u06e8\u06dc\u06ec\u06df\u06e1\u06e6\u06e0\u06dc\u06e2\u06d6\u06dc\u06d8\u06ec\u06e7\u06d6"

    goto/16 :goto_0

    :sswitch_43
    const v9, 0x89e607d

    const-string v0, "\u06e0\u06eb\u06d6\u06d8\u06dc\u06e2\u06e6\u06df\u06e1\u06e0\u06ec\u06e6\u06e1\u06d9\u06e6\u06e7\u06d8\u06d9\u06d7\u06e7\u06d7\u06da\u06d9\u06e5\u06dc\u06db\u06ec\u06d6\u06d6\u06d8\u06eb\u06e1\u06e2"

    :goto_f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_f

    goto :goto_f

    :sswitch_44
    const-string v0, "\u06e4\u06e8\u06e0\u06e8\u06d9\u06e7\u06e8\u06e6\u06e6\u06d9\u06e6\u06d8\u06da\u06e6\u06dc\u06d8\u06e7\u06e7\u06eb\u06e2\u06e0\u06dc\u06ec\u06e8\u06e6\u06da\u06d9\u06e8\u06d8\u06e0\u06e8\u06ec"

    goto :goto_f

    :sswitch_45
    const-string v0, "\u06db\u06eb\u06e6\u06d8\u06d6\u06d6\u06e1\u06d8\u06d6\u06da\u06e0\u06d9\u06df\u06e2\u06e0\u06e2\u06db\u06e6\u06df\u06d8\u06d8\u06ec\u06d6\u06d6\u06df\u06e7\u06dc\u06d8\u06da\u06e4\u06e1\u06d8\u06e1\u06e0\u06e5\u06d8\u06ec\u06e7\u06d6\u06d8\u06e7\u06dc\u06d9\u06e6\u06da\u06da\u06d6\u06dc\u06e8\u06e6\u06da\u06d9\u06df\u06da\u06d6\u06d8\u06d7\u06e8\u06e8\u06db\u06dc\u06db"

    goto :goto_f

    :sswitch_46
    const v10, 0x60016e6c

    const-string v0, "\u06d9\u06e7\u06dc\u06e5\u06da\u06da\u06e4\u06e7\u06d9\u06d6\u06eb\u06e7\u06e0\u06e5\u06d9\u06d6\u06d7\u06e8\u06ec\u06da\u06d9\u06d7\u06e8\u06e5\u06d8\u06e0\u06e2\u06e6\u06d8\u06d6\u06e2\u06e0\u06d6\u06d9\u06eb\u06e6\u06e8\u06eb\u06dc\u06d8\u06e2\u06e5\u06df\u06db\u06d6\u06ec\u06da\u06df\u06ec\u06d6"

    :goto_10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_10

    goto :goto_10

    :sswitch_47
    const-string v0, "\u06ec\u06e8\u06d7\u06e8\u06d8\u06eb\u06d8\u06eb\u06ec\u06e1\u06d6\u06d8\u06d8\u06da\u06dc\u06d8\u06df\u06d9\u06d6\u06db\u06e6\u06e0\u06e8\u06e2\u06eb\u06da\u06eb\u06d8\u06e2\u06e4\u06e4\u06d7\u06e0\u06ec\u06e1\u06d9"

    goto :goto_f

    :cond_7
    const-string v0, "\u06e2\u06e2\u06e1\u06d9\u06e0\u06e1\u06d6\u06e1\u06dc\u06db\u06e2\u06e5\u06d8\u06eb\u06e6\u06d8\u06d8\u06e4\u06da\u06e6\u06ec\u06e8\u06e6\u06dc\u06d6\u06d8\u06da\u06e4\u06df\u06da\u06e6\u06da\u06eb\u06e7\u06e1\u06d8\u06e2\u06e0\u06d6\u06d8\u06e5\u06ec\u06d9\u06d9\u06e8\u06d8"

    goto :goto_10

    :sswitch_48
    const/16 v0, 0xca

    if-eq v7, v0, :cond_7

    const-string v0, "\u06e1\u06eb\u06dc\u06e8\u06e1\u06e7\u06e7\u06db\u06df\u06e1\u06d6\u06e7\u06d8\u06d9\u06e0\u06e8\u06df\u06da\u06da\u06d9\u06d8\u06d7\u06e4\u06dc\u06d8\u06da\u06dc\u06e4\u06e1\u06e8\u06e6\u06d8"

    goto :goto_10

    :sswitch_49
    const-string v0, "\u06d9\u06e4\u06e6\u06da\u06d7\u06d8\u06d8\u06e7\u06da\u06e1\u06d8\u06e1\u06e2\u06e7\u06e1\u06e2\u06e2\u06d6\u06df\u06e1\u06d8\u06e4\u06e8\u06e8\u06e1\u06d8\u06e0\u06e7\u06db\u06e1\u06d8\u06d8\u06e0\u06ec\u06d9\u06eb\u06d9\u06e1\u06ec\u06eb"

    goto :goto_10

    :sswitch_4a
    const-string v0, "\u06d7\u06d7\u06d6\u06da\u06db\u06d6\u06e7\u06e7\u06d8\u06df\u06dc\u06d8\u06ec\u06e4\u06e5\u06d8\u06d8\u06d6\u06d9\u06e4\u06d6\u06e5\u06e1\u06d9\u06e8\u06e2\u06e1\u06dc\u06d8\u06e6\u06db\u06d6\u06dc\u06da\u06eb\u06d8\u06d8\u06e6\u06d8\u06dc\u06e7\u06e1\u06d8\u06e1\u06eb\u06e1\u06e7\u06ec\u06e2\u06e0\u06df\u06e6\u06e1\u06da\u06e8\u06e8\u06dc"

    goto/16 :goto_0

    :sswitch_4b
    packed-switch v7, :pswitch_data_0

    const-string v0, "\u06e8\u06d6\u06d8\u06d8\u06ec\u06d8\u06dc\u06ec\u06e4\u06e8\u06e5\u06d6\u06e4\u06e5\u06e8\u06d7\u06e7\u06e1\u06d9\u06e7\u06eb\u06e8\u06ec\u06db\u06e1\u06d8\u06dc\u06d6\u06dc\u06d8\u06e0\u06eb\u06da\u06eb\u06db\u06df\u06e2\u06e4\u06e8\u06d8\u06d8\u06d6\u06d8\u06d9\u06e2\u06e4"

    goto/16 :goto_0

    :sswitch_4c
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    const/16 v9, 0x72

    invoke-virtual {v0, v9}, Lz2/i7;->OooOOoo(I)V

    const-string v0, "\u06db\u06d9\u06da\u06d8\u06e6\u06e1\u06d6\u06e7\u06e8\u06d8\u06df\u06e2\u06e1\u06d9\u06e4\u06e8\u06db\u06eb\u06e5\u06d7\u06e5\u06dc\u06e7\u06e4\u06e1\u06d8\u06db\u06d9\u06e6\u06d8\u06d9\u06ec\u06e5"

    goto/16 :goto_0

    :sswitch_4d
    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->OooO0o0()V

    const-string v0, "\u06e1\u06ec\u06df\u06d6\u06d6\u06e5\u06d8\u06d7\u06ec\u06e4\u06da\u06df\u06e7\u06e0\u06e7\u06e5\u06d6\u06da\u06ec\u06df\u06e7\u06d9\u06e4\u06e7\u06e5\u06d8\u06d9\u06df\u06e4\u06e1\u06e2\u06e7\u06e0\u06eb\u06da\u06e4\u06e4\u06e5\u06d8\u06d8\u06e1\u06e5\u06d8\u06d7\u06ec\u06eb\u06d8\u06e7\u06da\u06d9\u06d8\u06dc"

    goto/16 :goto_0

    :sswitch_4e
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const-string v0, "\u06e6\u06e6\u06eb\u06e0\u06db\u06e7\u06e7\u06e6\u06e1\u06d8\u06e6\u06eb\u06da\u06dc\u06e1\u06e2\u06ec\u06df\u06e1\u06e8\u06df\u06e2\u06e4\u06da\u06dc\u06e5\u06e5\u06eb\u06e7\u06e5\u06df\u06e2\u06e6\u06d8\u06d6\u06d7\u06d9\u06e2\u06d6\u06e2\u06d9\u06e6\u06dc\u06d9\u06d8\u06e5\u06e1\u06e4\u06e0\u06df\u06e8\u06d8\u06d8\u06e6\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_4f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const-string v0, "\u06e5\u06da\u06d8\u06d6\u06e7\u06d8\u06e8\u06ec\u06e4\u06d7\u06e4\u06e2\u06df\u06e7\u06e6\u06e8\u06d6\u06dc\u06d8\u06e8\u06e0\u06d9\u06e7\u06e2\u06e1\u06d6\u06e5\u06dc\u06d7\u06e6\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_50
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    const-string v0, "\u06e2\u06da\u06e5\u06d8\u06d8\u06e0\u06d8\u06e5\u06df\u06e8\u06d8\u06e5\u06ec\u06e0\u06e1\u06d9\u06d7\u06ec\u06e5\u06e1\u06d8\u06dc\u06e1\u06ec\u06eb\u06ec\u06db\u06d9\u06d7\u06e0\u06ec\u06e6\u06e8\u06e0\u06e1\u06d8\u06dc\u06e1\u06e2"

    goto/16 :goto_0

    :sswitch_51
    const v9, 0x42a2fa92

    const-string v0, "\u06ec\u06e5\u06e2\u06dc\u06d6\u06e4\u06e8\u06e4\u06e5\u06d6\u06db\u06e5\u06d9\u06da\u06e6\u06dc\u06d6\u06dc\u06d8\u06d9\u06d6\u06e7\u06d8\u06d8\u06e8\u06e2\u06e8\u06e1\u06e0\u06d6\u06dc\u06da\u06db\u06d7\u06e8\u06e2\u06d9\u06eb\u06dc\u06ec\u06e2\u06e0\u06e6\u06e5\u06d8"

    :goto_11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_11

    goto :goto_11

    :sswitch_52
    const v10, -0x6626effe

    const-string v0, "\u06d6\u06db\u06e5\u06d8\u06d8\u06e0\u06d6\u06ec\u06db\u06ec\u06e1\u06e2\u06d8\u06e1\u06d8\u06d8\u06d7\u06e4\u06df\u06e7\u06eb\u06e7\u06e5\u06dc\u06e1\u06eb\u06e7\u06e5\u06d8\u06da\u06e1\u06df\u06dc\u06ec\u06e8\u06eb\u06ec\u06d6\u06db\u06e8\u06e1\u06d8\u06e2\u06e5\u06da\u06d6\u06e1\u06d8\u06dc\u06e5\u06d9"

    :goto_12
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_12

    goto :goto_12

    :sswitch_53
    const-string v0, "\u06df\u06d8\u06e7\u06d8\u06dc\u06d7\u06eb\u06da\u06e1\u06d8\u06d8\u06e6\u06e7\u06dc\u06e1\u06e4\u06e1\u06e6\u06eb\u06da\u06e6\u06d8\u06d7\u06d9\u06da\u06d9\u06e0\u06d9\u06e6\u06e1\u06e2\u06e4\u06d7\u06d8\u06d8\u06d7\u06df\u06d6\u06dc\u06e6\u06d9\u06e0\u06d7\u06d7\u06eb\u06d9\u06ec\u06da\u06df\u06d6\u06d8\u06e6\u06d6\u06e5\u06d8\u06e7\u06dc\u06e8\u06d8"

    goto :goto_11

    :sswitch_54
    const-string v0, "\u06da\u06da\u06d9\u06d7\u06e1\u06dc\u06d9\u06e4\u06d6\u06e2\u06d6\u06ec\u06da\u06e6\u06df\u06e2\u06da\u06d8\u06d8\u06df\u06e8\u06e5\u06d8\u06e0\u06eb\u06d8\u06dc\u06e7\u06e2\u06d8\u06d6\u06da"

    goto :goto_11

    :cond_8
    const-string v0, "\u06e2\u06e5\u06e8\u06d8\u06dc\u06df\u06ec\u06e0\u06e1\u06d8\u06e0\u06e5\u06e1\u06d9\u06d9\u06e5\u06ec\u06e7\u06e5\u06d6\u06e0\u06df\u06e4\u06e1\u06d8\u06ec\u06df\u06e2\u06d6\u06d6\u06eb"

    goto :goto_12

    :sswitch_55
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    iget v0, v0, Lz2/b7;->OooO0OO:I

    const/4 v11, 0x2

    if-eq v0, v11, :cond_8

    const-string v0, "\u06da\u06e1\u06e5\u06e6\u06d8\u06e8\u06d8\u06e8\u06db\u06e2\u06df\u06e6\u06e0\u06dc\u06e2\u06e5\u06d8\u06e0\u06d6\u06e8\u06d7\u06ec\u06e6\u06d8\u06db\u06dc\u06e5\u06d8\u06ec\u06e0\u06db\u06d6\u06db\u06e1"

    goto :goto_12

    :sswitch_56
    const-string v0, "\u06e2\u06e6\u06eb\u06dc\u06ec\u06d7\u06e6\u06db\u06e6\u06da\u06dc\u06d8\u06e4\u06e1\u06e4\u06e6\u06e6\u06e1\u06e0\u06eb\u06d8\u06d8\u06d8\u06e4\u06dc\u06d8\u06d7\u06e7\u06d9\u06da\u06db\u06d7\u06dc\u06e1\u06e1\u06db\u06eb\u06e1\u06ec\u06df\u06e6\u06d8\u06d7\u06e0\u06eb\u06d7\u06d6\u06d6\u06d8\u06e6\u06d9\u06e2\u06e6\u06e2\u06e7\u06da\u06da\u06da"

    goto :goto_12

    :sswitch_57
    const-string v0, "\u06e8\u06e2\u06dc\u06d8\u06d8\u06e7\u06e2\u06ec\u06e5\u06e8\u06e2\u06eb\u06e8\u06d7\u06e8\u06dc\u06e8\u06ec\u06e1\u06e7\u06d8\u06e2\u06e7\u06e6\u06d8\u06d6\u06e7\u06d8\u06da\u06e7\u06dc\u06d8\u06dc\u06d6\u06e7\u06e0\u06ec\u06e8\u06da\u06e2\u06e0\u06dc\u06db\u06e5\u06d8\u06ec\u06d6\u06d7\u06e5\u06e4\u06e1"

    goto :goto_11

    :sswitch_58
    const-string v0, "\u06ec\u06e8\u06d7\u06e7\u06db\u06e0\u06d8\u06e5\u06d6\u06d8\u06e1\u06d9\u06df\u06df\u06e4\u06e0\u06e0\u06d8\u06d9\u06e7\u06d8\u06e2\u06e7\u06e8\u06e1\u06e2\u06d6\u06e6\u06e0"

    goto/16 :goto_0

    :sswitch_59
    const v9, -0x4bac7e40

    const-string v0, "\u06e1\u06df\u06e6\u06e0\u06e6\u06e8\u06d8\u06eb\u06d7\u06e6\u06eb\u06e6\u06eb\u06dc\u06ec\u06ec\u06e5\u06e0\u06e4\u06e0\u06d7\u06e0\u06dc\u06e4\u06e5\u06d8\u06e0\u06e8\u06e5\u06e8\u06d6\u06d7\u06db\u06e7\u06e5\u06eb\u06e6\u06df"

    :goto_13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_13

    goto :goto_13

    :sswitch_5a
    const-string v0, "\u06e6\u06d9\u06e5\u06eb\u06e2\u06eb\u06db\u06eb\u06db\u06e1\u06e4\u06e1\u06d6\u06d9\u06e8\u06d8\u06db\u06e7\u06d8\u06e5\u06d9\u06d6\u06d8\u06db\u06dc\u06e4\u06ec\u06d6\u06df\u06e0\u06d8\u06d8"

    goto :goto_13

    :sswitch_5b
    const-string v0, "\u06e1\u06d8\u06e4\u06e1\u06e4\u06db\u06dc\u06db\u06d6\u06d7\u06ec\u06eb\u06ec\u06dc\u06db\u06d8\u06da\u06e5\u06da\u06e2\u06d8\u06e1\u06e1\u06e6\u06e5\u06d8\u06e4\u06d9\u06eb\u06e0\u06dc\u06df\u06d8"

    goto :goto_13

    :sswitch_5c
    const v10, -0x3ca509d0

    const-string v0, "\u06e1\u06db\u06e6\u06e7\u06df\u06e5\u06e4\u06e7\u06e1\u06d8\u06d7\u06e2\u06dc\u06d8\u06df\u06e6\u06e2\u06e1\u06df\u06d6\u06d8\u06db\u06e8\u06e5\u06d8\u06e7\u06e4\u06d6\u06d8\u06db\u06df\u06e4\u06eb\u06d8\u06d6\u06d8\u06e8\u06e8\u06d9\u06d6\u06eb\u06d8\u06d8"

    :goto_14
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_14

    goto :goto_14

    :sswitch_5d
    const-string v0, "\u06e0\u06e1\u06e4\u06eb\u06eb\u06d8\u06dc\u06ec\u06e4\u06e0\u06d8\u06df\u06d6\u06ec\u06d7\u06d9\u06ec\u06d9\u06d8\u06d6\u06e8\u06e5\u06e8\u06e5\u06d8\u06e5\u06dc\u06e5\u06d8\u06e1\u06da\u06da\u06e5\u06db\u06da\u06da\u06d6\u06e4\u06e1\u06d6\u06ec\u06e4\u06ec\u06e1\u06d8\u06d7\u06e0\u06e1\u06d8\u06d6\u06e7\u06dc\u06d8\u06d8\u06e0\u06db\u06d8\u06e6\u06d7"

    goto :goto_14

    :cond_9
    const-string v0, "\u06da\u06da\u06e5\u06d8\u06eb\u06db\u06d9\u06e4\u06dc\u06e5\u06d9\u06d8\u06e6\u06ec\u06d6\u06e7\u06da\u06e5\u06e5\u06e4\u06df\u06e0\u06d7\u06e2\u06e8\u06d7\u06e4\u06e7\u06e7\u06e5\u06dc\u06d8\u06e2\u06d8\u06d8\u06eb\u06e2\u06e1\u06e8\u06e7\u06d6\u06d7\u06e7\u06d6\u06d8"

    goto :goto_14

    :sswitch_5e
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    iget v0, v0, Lz2/b7;->OooO0OO:I

    const/4 v11, 0x3

    if-eq v0, v11, :cond_9

    const-string v0, "\u06e0\u06d9\u06df\u06e6\u06db\u06e0\u06d6\u06d7\u06df\u06d9\u06d6\u06d6\u06df\u06d6\u06e2\u06dc\u06db\u06df\u06db\u06eb\u06e5\u06e5\u06e5\u06e6\u06e1\u06ec\u06e8\u06e7\u06e0\u06da\u06da\u06e0\u06da\u06d9\u06e4\u06dc\u06d8\u06d7\u06e4\u06d9\u06d6\u06e1\u06d8\u06d8\u06e1\u06e0\u06e5\u06d8\u06db\u06da\u06e5"

    goto :goto_14

    :sswitch_5f
    const-string v0, "\u06da\u06e0\u06e4\u06da\u06e0\u06ec\u06e1\u06dc\u06d7\u06df\u06e8\u06d8\u06e1\u06e7\u06dc\u06d8\u06da\u06dc\u06e0\u06e7\u06d9\u06d6\u06e4\u06e7\u06df\u06e8\u06ec\u06df\u06d6\u06df\u06e0\u06d6\u06e7\u06d7\u06df\u06df\u06d6\u06d7\u06e7\u06d7\u06d8\u06df\u06e1"

    goto :goto_13

    :sswitch_60
    const-string v0, "\u06e2\u06eb\u06e5\u06e4\u06e4\u06e2\u06e1\u06eb\u06e2\u06e2\u06eb\u06eb\u06da\u06e5\u06e8\u06d8\u06e2\u06d6\u06e7\u06e1\u06e8\u06e7\u06d8\u06da\u06d8\u06e7\u06eb\u06da\u06e8\u06d8\u06df\u06d7\u06e4\u06d7\u06d7\u06e7\u06db\u06e8\u06e5\u06d8\u06df\u06da\u06da\u06e8\u06d7\u06e8\u06e1\u06db\u06d8\u06d8\u06e7\u06ec\u06e7\u06e5\u06e0\u06da\u06df\u06e7\u06ec"

    goto/16 :goto_0

    :sswitch_61
    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/z6;->OooO0oO()V

    const-string v0, "\u06e4\u06e6\u06e5\u06d6\u06d6\u06d6\u06d8\u06dc\u06d7\u06dc\u06d8\u06d9\u06db\u06e8\u06d8\u06d9\u06e2\u06e8\u06d6\u06d7\u06e1\u06da\u06e7\u06e8\u06d7\u06e7\u06e5\u06d8\u06dc\u06e5\u06d6\u06eb\u06dc\u06d8\u06d8\u06e0\u06db\u06d8\u06d8\u06e7\u06d6\u06e0\u06e0\u06e0\u06df\u06da\u06e6\u06ec\u06e1\u06df\u06db\u06ec\u06da\u06d6\u06e7\u06e8\u06e0\u06ec"

    goto/16 :goto_0

    :sswitch_62
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    const/4 v9, 0x1

    iput v9, v0, Lz2/b7;->OooO0OO:I

    const-string v0, "\u06da\u06d9\u06da\u06ec\u06e1\u06d6\u06e8\u06dc\u06ec\u06d8\u06e6\u06df\u06e2\u06da\u06df\u06d8\u06db\u06e5\u06e2\u06e6\u06d8\u06e7\u06e2\u06e8\u06d6\u06d7\u06e1\u06d8\u06e2\u06db\u06d9\u06e6\u06e2\u06e5\u06e4\u06d8\u06e4"

    goto/16 :goto_0

    :sswitch_63
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->OoooOoO:Landroid/os/Handler;

    new-instance v9, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$OooO00o;

    invoke-direct {v9, p0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$OooO00o;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;)V

    const-wide/16 v10, 0x3e8

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "\u06df\u06d9\u06d8\u06d8\u06e6\u06e4\u06dc\u06e8\u06df\u06db\u06d8\u06df\u06d8\u06da\u06ec\u06e1\u06d8\u06e8\u06ec\u06e5\u06d8\u06e5\u06e7\u06ec\u06dc\u06db\u06dc\u06d8\u06e2\u06ec\u06e6\u06d9\u06e4\u06db\u06e2\u06da\u06d6\u06e2\u06e7\u06e6\u06d8\u06eb\u06d7\u06da\u06e4\u06d9\u06d8\u06d8\u06db\u06dc\u06d9\u06e8\u06d9\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_64
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i7;->Oooo0oo()V

    const-string v0, "\u06d6\u06d6\u06e1\u06e5\u06d8\u06e1\u06d7\u06d9\u06e6\u06d7\u06dc\u06e5\u06e5\u06e6\u06e1\u06e4\u06e5\u06db\u06df\u06db\u06e6\u06d9\u06e0\u06e4\u06e4\u06dc\u06d8\u06e6\u06e8\u06d6\u06eb\u06da\u06dc\u06d8\u06db\u06e8\u06d6\u06e2\u06d8\u06d8\u06e0\u06db\u06d9\u06ec\u06e2\u06db\u06ec\u06ec\u06dc\u06d8\u06d6\u06e5\u06e2\u06d6\u06e8\u06e7"

    goto/16 :goto_0

    :sswitch_65
    const-string v0, "localGamePackage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "\u06d7\u06e1\u06eb\u06eb\u06d7\u06d7\u06da\u06d6\u06ec\u06e2\u06d7\u06dc\u06d8\u06e0\u06eb\u06d9\u06d8\u06ec\u06e1\u06d8\u06eb\u06e2\u06e5\u06d7\u06e5\u06e4\u06d8\u06e1\u06da\u06e1\u06e7\u06e0\u06db\u06db\u06e8\u06e4\u06e5\u06e6\u06ec\u06df\u06d8\u06d8\u06ec\u06eb\u06dc\u06e5\u06e1\u06e8\u06df\u06ec\u06e5\u06d8\u06e7\u06e1\u06e8\u06d8\u06e8\u06df\u06d7"

    goto/16 :goto_0

    :sswitch_66
    const-string v0, "userId"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "\u06e4\u06e5\u06e6\u06d9\u06d6\u06e1\u06eb\u06e1\u06d7\u06e0\u06e1\u06e1\u06d8\u06e4\u06e7\u06e7\u06e1\u06eb\u06e2\u06e1\u06d7\u06d8\u06d8\u06e4\u06e8\u06d9\u06db\u06db\u06e4\u06e5\u06e2\u06e2\u06d9\u06d6\u06db\u06d8\u06e7\u06d9"

    goto/16 :goto_0

    :sswitch_67
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-virtual {v0, v5}, Lz2/i7;->OooOooO(Ljava/lang/String;)V

    const-string v0, "\u06da\u06e0\u06e1\u06e7\u06eb\u06da\u06e0\u06da\u06e5\u06d8\u06eb\u06d8\u06e6\u06d8\u06dc\u06e5\u06e8\u06d8\u06e1\u06d9\u06e1\u06db\u06e8\u06d7\u06db\u06d6\u06df\u06d8\u06d6\u06d8\u06db\u06da\u06e6\u06d8\u06d8\u06e1\u06df\u06eb\u06df"

    goto/16 :goto_0

    :sswitch_68
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-virtual {v0, v4}, Lz2/i7;->Oooo00o(I)V

    const-string v0, "\u06dc\u06eb\u06e6\u06d8\u06df\u06e2\u06ec\u06e6\u06dc\u06e8\u06ec\u06e8\u06e1\u06e8\u06eb\u06e1\u06d8\u06e4\u06e8\u06e5\u06d8\u06d9\u06d9\u06e0\u06e0\u06d6\u06e2\u06d8\u06e4\u06d6\u06d6\u06e6\u06d8\u06d8\u06df\u06e6\u06d8\u06e5\u06e8"

    goto/16 :goto_0

    :sswitch_69
    const-string v0, "tokenKey"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "\u06e6\u06e1\u06e5\u06e6\u06dc\u06df\u06e2\u06e0\u06d7\u06d8\u06d6\u06e7\u06d8\u06db\u06d9\u06d7\u06db\u06ec\u06e5\u06e6\u06e4\u06e8\u06d8\u06e1\u06eb\u06e2\u06d9\u06e4\u06e6\u06da\u06da\u06d9\u06e7\u06ec\u06df\u06db\u06e8\u06d9\u06e4\u06d9\u06df\u06e0\u06db\u06e5\u06d8\u06da\u06e6\u06d6\u06d8\u06dc\u06df\u06d6"

    goto/16 :goto_0

    :sswitch_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06d9\u06e0\u06e7\u06e0\u06e1\u06e4\u06e8\u06e4\u06e8\u06d9\u06e1\u06d8\u06e4\u06e1\u06d8\u06d8\u06e8\u06d8\u06d9\u06e7\u06e7\u06e8\u06d8\u06db\u06dc\u06d8\u06e7\u06e6\u06eb\u06d9\u06e4\u06ec\u06d8\u06d8\u06d8\u06df\u06e5\u06e7\u06d8\u06e5\u06d7\u06e7\u06d7\u06e2\u06da\u06ec\u06d8\u06d8\u06da\u06e5\u06db"

    goto/16 :goto_0

    :sswitch_6b
    const-string v0, "ENGIN_MQRUNNER_TOKENKEY: token = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e2\u06d6\u06e6\u06d8\u06e2\u06e4\u06e2\u06df\u06d9\u06db\u06e5\u06e1\u06e1\u06d8\u06e4\u06e0\u06e8\u06d6\u06d7\u06d8\u06e6\u06ec\u06dc\u06da\u06e8\u06db\u06db\u06e2\u06e7\u06e0\u06df\u06e2"

    goto/16 :goto_0

    :sswitch_6c
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\u06e8\u06d8\u06dc\u06e5\u06e6\u06e8\u06d8\u06dc\u06ec\u06d6\u06d7\u06db\u06d6\u06d8\u06e6\u06e8\u06e2\u06d9\u06e1\u06db\u06e0\u06e4\u06ec\u06df\u06e1\u06db\u06e6\u06e8\u06d6\u06d8\u06d9\u06d6\u06da"

    goto/16 :goto_0

    :sswitch_6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "\u06df\u06db\u06d6\u06d8\u06d9\u06ec\u06d7\u06e8\u06db\u06d9\u06e6\u06d6\u06e0\u06df\u06d9\u06e6\u06e1\u06dc\u06e5\u06ec\u06e6\u06e7\u06e1\u06d6\u06e8\u06d8\u06d7\u06e5\u06e6\u06d8\u06db\u06ec\u06d9"

    goto/16 :goto_0

    :sswitch_6e
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lz2/b7;->OooOOO0(J)V

    const-string v0, "\u06e2\u06ec\u06e5\u06d6\u06e8\u06dc\u06e7\u06e8\u06d9\u06e1\u06e1\u06e1\u06d8\u06db\u06dc\u06da\u06d7\u06df\u06df\u06d9\u06dc\u06e8\u06d8\u06d8\u06d6\u06d8\u06d8\u06e6\u06d8\u06db\u06e2\u06d8\u06e4\u06e8\u06e8\u06e5\u06d8\u06e2\u06eb\u06d6\u06d8\u06e1\u06eb\u06eb\u06e0\u06e5\u06d9\u06e0\u06d7\u06d6\u06d8\u06db\u06e0\u06d7\u06ec\u06d8\u06e5\u06e5\u06e8"

    goto/16 :goto_0

    :sswitch_6f
    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/q7;->OooOO0O()V

    const-string v0, "\u06dc\u06e5\u06e1\u06e2\u06e7\u06e5\u06d6\u06d8\u06e1\u06d8\u06e5\u06e7\u06e5\u06ec\u06d8\u06d6\u06dc\u06df\u06e6\u06e5\u06eb\u06d9\u06e8\u06e8\u06d8\u06e8\u06d8\u06e5\u06d8\u06e6\u06ec\u06e8\u06d8\u06e8\u06e0\u06e2\u06e6\u06e6\u06d8\u06d6\u06e4\u06e1\u06e4\u06e1\u06e4\u06d8\u06ec\u06e5\u06df\u06d7"

    goto/16 :goto_0

    :sswitch_70
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/cyjh/elfin/base/AppContext;->Ooooo00:Z

    const-string v0, "\u06eb\u06da\u06e5\u06e6\u06e1\u06d9\u06e2\u06e0\u06df\u06d7\u06da\u06e2\u06e8\u06ec\u06eb\u06da\u06dc\u06e8\u06df\u06e2\u06ec\u06e6\u06e0\u06df\u06e5\u06e4\u06e7\u06eb\u06e6\u06e4"

    goto/16 :goto_0

    :sswitch_71
    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/z6;->OooO0o0()V

    const-string v0, "\u06d7\u06d9\u06e0\u06db\u06ec\u06da\u06e0\u06d8\u06e5\u06d8\u06d6\u06df\u06d9\u06df\u06dc\u06e1\u06e8\u06e7\u06e0\u06dc\u06ec\u06da\u06dc\u06e7\u06e5\u06d8\u06d8\u06e7\u06dc\u06e1\u06d6\u06d8\u06d8\u06e7\u06dc\u06dc\u06e2\u06d7\u06e8\u06e8\u06ec\u06d8\u06d8\u06e8\u06d6\u06dc"

    goto/16 :goto_0

    :sswitch_72
    const v9, 0x7abfdad9

    const-string v0, "\u06da\u06e1\u06d6\u06dc\u06d8\u06e4\u06da\u06d6\u06e8\u06e0\u06dc\u06d8\u06d6\u06e1\u06da\u06db\u06e2\u06da\u06df\u06d7\u06e1\u06e6\u06e1\u06dc\u06e5\u06e8\u06e7\u06d8\u06e8\u06d9\u06e6\u06d8\u06e6\u06e2\u06e5\u06d8\u06ec\u06df\u06e5\u06d8\u06d8\u06e7\u06dc\u06eb\u06d8\u06d7\u06e7\u06ec\u06df\u06d8\u06d8"

    :goto_15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_15

    goto :goto_15

    :sswitch_73
    const-string v0, "\u06e8\u06db\u06e0\u06df\u06d7\u06e8\u06d6\u06d7\u06d7\u06ec\u06da\u06df\u06e7\u06db\u06d9\u06e2\u06e4\u06e7\u06df\u06d6\u06df\u06ec\u06d8\u06d6\u06e4\u06df\u06e7\u06e1\u06d8\u06e4\u06db\u06e1\u06d8\u06e4\u06e7\u06eb"

    goto/16 :goto_0

    :sswitch_74
    const-string v0, "\u06ec\u06e1\u06e1\u06d8\u06e5\u06e6\u06e7\u06d8\u06e6\u06e1\u06dc\u06d6\u06d7\u06e6\u06d8\u06eb\u06e4\u06db\u06e0\u06e2\u06e2\u06e5\u06e8\u06e8\u06d8\u06eb\u06da\u06e1\u06d8\u06d8\u06d8\u06d8\u06d8\u06e7\u06da\u06d7\u06e2\u06e4\u06eb\u06e1\u06d7\u06eb"

    goto :goto_15

    :sswitch_75
    const v10, -0x3724c69e

    const-string v0, "\u06e8\u06e5\u06d8\u06e6\u06d8\u06eb\u06d9\u06da\u06dc\u06e7\u06d7\u06d6\u06d8\u06d9\u06df\u06e0\u06db\u06d8\u06dc\u06d8\u06e8\u06da\u06e8\u06d8\u06e0\u06e6\u06e1\u06ec\u06d9\u06e5\u06d6\u06d9\u06df\u06d8\u06e1\u06e5\u06db\u06dc\u06da\u06da\u06e8\u06ec\u06ec\u06e2\u06e0\u06ec\u06ec\u06ec\u06eb\u06db\u06e5\u06e8\u06d8\u06df\u06e1\u06e0"

    :goto_16
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_16

    goto :goto_16

    :sswitch_76
    const-string v0, "\u06dc\u06e7\u06df\u06dc\u06e0\u06dc\u06e4\u06e0\u06df\u06e5\u06e8\u06e4\u06e1\u06ec\u06da\u06da\u06e5\u06d8\u06d9\u06e0\u06d8\u06d8\u06df\u06d6\u06e0\u06e0\u06e1\u06d7\u06d6\u06e1\u06e5\u06d8\u06d6\u06db\u06d8\u06d8\u06e6\u06dc\u06da"

    goto :goto_16

    :cond_a
    const-string v0, "\u06db\u06e8\u06eb\u06ec\u06db\u06e0\u06e5\u06db\u06d8\u06df\u06db\u06dc\u06e4\u06db\u06d8\u06d8\u06dc\u06dc\u06e8\u06d8\u06e5\u06e0\u06e1\u06e7\u06e1\u06d7\u06df\u06d6\u06e7\u06eb\u06e2\u06e1\u06e7\u06e1\u06e4\u06ec\u06d9\u06dc\u06d8"

    goto :goto_16

    :sswitch_77
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    iget v0, v0, Lz2/b7;->OooO0OO:I

    if-nez v0, :cond_a

    const-string v0, "\u06d8\u06d9\u06e8\u06e6\u06d8\u06df\u06e7\u06d6\u06d9\u06dc\u06e7\u06e4\u06e1\u06da\u06e8\u06e8\u06e4\u06e2\u06e5\u06e6\u06db\u06e0\u06db\u06d6\u06d8\u06df\u06e7\u06ec\u06d8\u06e5\u06e0\u06df\u06e0\u06d6\u06da\u06db\u06d6"

    goto :goto_16

    :sswitch_78
    const-string v0, "\u06e5\u06e2\u06da\u06e7\u06db\u06e5\u06dc\u06ec\u06e0\u06d7\u06e2\u06e6\u06d8\u06e8\u06e0\u06e1\u06d8\u06da\u06d9\u06e4\u06e0\u06d8\u06d8\u06d8\u06e7\u06e4\u06d6\u06e4\u06e1\u06e7\u06dc\u06e6\u06e1\u06d8"

    goto :goto_15

    :sswitch_79
    const-string v0, "\u06eb\u06dc\u06d8\u06d8\u06e4\u06e1\u06e8\u06d9\u06da\u06dc\u06e2\u06e1\u06df\u06d8\u06eb\u06d8\u06d8\u06e2\u06e2\u06e8\u06e8\u06e0\u06eb\u06e8\u06da\u06e0\u06e4\u06df\u06e6\u06d8\u06d8\u06db\u06d6\u06d8\u06e2\u06e0\u06d8\u06e8\u06e5\u06d6"

    goto :goto_15

    :sswitch_7a
    const-string v0, "\u06e4\u06eb\u06d8\u06eb\u06d6\u06ec\u06db\u06d6\u06d6\u06d8\u06da\u06da\u06e1\u06d8\u06da\u06e7\u06d6\u06db\u06dc\u06e8\u06d8\u06ec\u06e2\u06dc\u06d8\u06e2\u06e2\u06dc\u06d8\u06d7\u06e8\u06e8\u06db\u06e7\u06d8\u06d8\u06d9\u06d8\u06e6\u06e7\u06e0\u06df\u06df\u06dc\u06e7\u06e2\u06d9\u06d8\u06eb\u06e7\u06dc\u06d8\u06da\u06e4\u06ec\u06df\u06e2\u06e5\u06eb\u06e8\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_7b
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    const/4 v9, 0x1

    iput v9, v0, Lz2/b7;->OooO0OO:I

    const-string v0, "\u06e8\u06db\u06e0\u06df\u06d7\u06e8\u06d6\u06d7\u06d7\u06ec\u06da\u06df\u06e7\u06db\u06d9\u06e2\u06e4\u06e7\u06df\u06d6\u06df\u06ec\u06d8\u06d6\u06e4\u06df\u06e7\u06e1\u06d8\u06e4\u06db\u06e1\u06d8\u06e4\u06e7\u06eb"

    goto/16 :goto_0

    :sswitch_7c
    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/z6;->OooO0oO()V

    const-string v0, "\u06e6\u06d9\u06e4\u06e4\u06e7\u06dc\u06d8\u06db\u06e7\u06d6\u06d7\u06d8\u06dc\u06d8\u06e2\u06e6\u06e4\u06df\u06e6\u06e1\u06e7\u06d9\u06d9\u06e7\u06ec\u06db\u06eb\u06e0\u06da\u06ec\u06dc\u06e6\u06d8\u06da\u06e7\u06e5\u06e1\u06db\u06eb"

    goto/16 :goto_0

    :sswitch_7d
    invoke-direct {p0, p1}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->OooO0O0(Landroid/content/Intent;)V

    const-string v0, "\u06e7\u06d8\u06df\u06d6\u06d8\u06dc\u06d8\u06e6\u06e0\u06df\u06db\u06e1\u06e6\u06ec\u06dc\u06e5\u06d8\u06d7\u06d8\u06d7\u06d8\u06e4\u06ec\u06d7\u06e7\u06e6\u06e1\u06e8\u06d8\u06db\u06e2\u06da"

    goto/16 :goto_0

    :sswitch_7e
    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;->OooO0OO()V

    const-string v0, "\u06dc\u06e4\u06d6\u06d8\u06e5\u06dc\u06e8\u06d8\u06da\u06e6\u06e0\u06dc\u06df\u06d8\u06e0\u06e5\u06e5\u06d8\u06e6\u06e5\u06e1\u06e2\u06e7\u06e5\u06d8\u06dc\u06eb\u06d8\u06dc\u06d7\u06e1\u06d8\u06da\u06e0\u06ec\u06df\u06d8\u06dc\u06da\u06e8\u06e8\u06e5\u06d9\u06d7\u06d8\u06d6\u06df\u06ec\u06e1\u06e7\u06d8\u06e1\u06e4\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_7f
    const/4 v0, 0x2

    return v0

    :sswitch_80
    const-string v0, "\u06d9\u06e5\u06e5\u06db\u06df\u06e7\u06e6\u06d6\u06e1\u06d8\u06d7\u06da\u06d6\u06e1\u06e8\u06e5\u06eb\u06da\u06e5\u06d8\u06e6\u06d8\u06d6\u06d8\u06e5\u06d6\u06d7\u06e0\u06d8\u06db\u06e0\u06e1\u06eb\u06d9\u06da\u06d6\u06d8\u06e5\u06e0\u06e5"

    goto/16 :goto_0

    :sswitch_81
    const-string v0, "\u06e1\u06da\u06e6\u06d8\u06ec\u06da\u06e1\u06d8\u06e6\u06e2\u06e5\u06e0\u06d9\u06d8\u06d6\u06e8\u06eb\u06e0\u06d8\u06e5\u06d7\u06dc\u06e7\u06db\u06e8\u06db\u06db\u06e0\u06ec\u06e4\u06df\u06e5\u06d8\u06d7\u06e4\u06e8\u06ec\u06e8\u06e4\u06e7\u06e5\u06d8\u06d9\u06e0\u06e7"

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "\u06df\u06e1\u06da\u06e6\u06e1\u06ec\u06db\u06e8\u06e2\u06e7\u06ec\u06db\u06e2\u06da\u06e0\u06e1\u06d9\u06d7\u06da\u06e2\u06e6\u06e0\u06eb\u06db\u06e6\u06e0\u06e5\u06d8\u06eb\u06e4\u06e7\u06e2\u06df\u06e5\u06d8\u06e1\u06e2\u06e7"

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "\u06d7\u06db\u06e5\u06e7\u06dc\u06e0\u06e2\u06e1\u06e1\u06d8\u06e5\u06e8\u06dc\u06d8\u06d6\u06d9\u06e1\u06d8\u06e7\u06d6\u06e0\u06e2\u06d8\u06e6\u06d7\u06e8\u06eb\u06d7\u06e0\u06e5\u06e0\u06dc\u06dc\u06d8\u06db\u06e2\u06df\u06e8\u06d6\u06e2"

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "\u06e0\u06d7\u06ec\u06ec\u06da\u06e1\u06e0\u06e7\u06ec\u06e5\u06db\u06e8\u06e1\u06dc\u06e6\u06d8\u06ec\u06db\u06ec\u06e5\u06ec\u06db\u06eb\u06d7\u06e8\u06d8\u06e6\u06df\u06d9\u06da\u06eb\u06e6"

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "\u06d7\u06da\u06e6\u06d8\u06e7\u06d8\u06e6\u06d8\u06e5\u06dc\u06e6\u06d6\u06d9\u06d8\u06d8\u06ec\u06dc\u06e1\u06e8\u06e5\u06e1\u06e7\u06e7\u06dc\u06ec\u06e8\u06e0\u06df\u06e0\u06eb\u06e1\u06d7\u06e7"

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "\u06d8\u06e7\u06df\u06e0\u06e8\u06d7\u06e5\u06da\u06dc\u06d8\u06da\u06d6\u06d8\u06d8\u06e8\u06dc\u06dc\u06d8\u06d9\u06dc\u06d7\u06dc\u06db\u06d6\u06e5\u06e6\u06dc\u06d8\u06e2\u06d7\u06e5\u06d8\u06d9\u06da\u06db\u06dc\u06d6\u06e6\u06dc\u06da\u06eb\u06e8\u06e7\u06d9\u06d7\u06e7\u06dc\u06d9\u06da\u06d9\u06e8\u06d9\u06e1\u06e2\u06da\u06e7\u06e4\u06db\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_82
    const-string v0, "\u06df\u06e8\u06dc\u06d9\u06e6\u06e0\u06e5\u06e8\u06e6\u06d8\u06e6\u06df\u06e1\u06d8\u06df\u06db\u06e0\u06d7\u06df\u06df\u06d9\u06d7\u06e1\u06d8\u06d6\u06e0\u06d8\u06e4\u06e0\u06e2\u06e1\u06e5\u06e0\u06df\u06ec\u06e5\u06d8\u06e4"

    goto/16 :goto_0

    :sswitch_83
    const-string v0, "\u06e5\u06e4\u06e1\u06d7\u06df\u06e8\u06df\u06e7\u06e6\u06e8\u06e7\u06d9\u06ec\u06d8\u06eb\u06d8\u06d8\u06eb\u06ec\u06eb\u06dc\u06d8\u06d9\u06ec\u06db\u06da\u06e5\u06d6\u06d8\u06d6\u06d7\u06e5\u06db\u06da\u06e2\u06da\u06d7\u06ec\u06e6\u06ec\u06da\u06e6\u06eb\u06e5"

    goto/16 :goto_0

    :sswitch_84
    const-string v0, "\u06df\u06d9\u06e8\u06e7\u06e7\u06dc\u06da\u06d8\u06e8\u06e5\u06e8\u06d8\u06d7\u06d8\u06da\u06dc\u06e4\u06da\u06d6\u06ec\u06d7\u06d7\u06d6\u06e0\u06ec\u06e2\u06d6\u06e5\u06e4\u06e5\u06d8\u06da\u06eb\u06eb\u06d9\u06e1\u06eb\u06e1\u06e6\u06e0\u06e2\u06e1\u06dc\u06d8\u06d8\u06e6\u06dc\u06df\u06e1\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_85
    const-string v0, "\u06da\u06db\u06e8\u06d8\u06ec\u06d7\u06e5\u06d8\u06e2\u06dc\u06da\u06d6\u06e4\u06e4\u06ec\u06d9\u06e8\u06ec\u06e5\u06e7\u06d7\u06e5\u06ec\u06e6\u06e4\u06d7\u06e1\u06e4\u06d8\u06e8\u06e7\u06e6\u06eb\u06db\u06d8\u06dc\u06e2\u06db\u06da\u06db\u06d8\u06e0\u06da\u06d6\u06d8\u06e5\u06d8\u06db\u06e8\u06e6\u06eb\u06e7\u06d6\u06e0\u06e7\u06e1"

    goto/16 :goto_0

    :sswitch_86
    const-string v0, "\u06dc\u06e4\u06d6\u06d8\u06e5\u06dc\u06e8\u06d8\u06da\u06e6\u06e0\u06dc\u06df\u06d8\u06e0\u06e5\u06e5\u06d8\u06e6\u06e5\u06e1\u06e2\u06e7\u06e5\u06d8\u06dc\u06eb\u06d8\u06dc\u06d7\u06e1\u06d8\u06da\u06e0\u06ec\u06df\u06d8\u06dc\u06da\u06e8\u06e8\u06e5\u06d9\u06d7\u06d8\u06d6\u06df\u06ec\u06e1\u06e7\u06d8\u06e1\u06e4\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7f08ad9d -> :sswitch_86
        -0x6e20198f -> :sswitch_29
        -0x6967e34f -> :sswitch_6b
        -0x66695d33 -> :sswitch_86
        -0x61f2d1f5 -> :sswitch_18
        -0x56a614b4 -> :sswitch_6f
        -0x4d571275 -> :sswitch_e
        -0x4aaa9ff3 -> :sswitch_59
        -0x4780582c -> :sswitch_86
        -0x3ccb80ae -> :sswitch_4e
        -0x3acd2de2 -> :sswitch_71
        -0x393fae88 -> :sswitch_20
        -0x35eaa411 -> :sswitch_70
        -0x35a621b0 -> :sswitch_7c
        -0x343ba6e8 -> :sswitch_6c
        -0x2b1da5a1 -> :sswitch_4c
        -0x26aa375b -> :sswitch_10
        -0x24b4ec34 -> :sswitch_81
        -0x23b9d996 -> :sswitch_69
        -0x20030731 -> :sswitch_86
        -0x1cde053c -> :sswitch_6a
        -0x17faf6d7 -> :sswitch_86
        -0x13fef5ea -> :sswitch_d
        -0x136e0fb0 -> :sswitch_72
        -0x4896a79 -> :sswitch_86
        -0x3dc6273 -> :sswitch_50
        -0x34733fe -> :sswitch_7e
        0x419d85d -> :sswitch_7b
        0x56395c4 -> :sswitch_86
        0x998fb76 -> :sswitch_32
        0x1a4f2235 -> :sswitch_86
        0x1ce3e81d -> :sswitch_7d
        0x282d9325 -> :sswitch_68
        0x29c27481 -> :sswitch_6d
        0x2b1af2a8 -> :sswitch_3
        0x2b478165 -> :sswitch_86
        0x2b7909c9 -> :sswitch_4d
        0x346b472f -> :sswitch_4b
        0x34731711 -> :sswitch_43
        0x39b2fbdc -> :sswitch_7f
        0x39c24fe3 -> :sswitch_6e
        0x3e7722a7 -> :sswitch_62
        0x40cc2e9b -> :sswitch_63
        0x40e132c7 -> :sswitch_3a
        0x412f74d2 -> :sswitch_65
        0x4aca54cb -> :sswitch_0
        0x4ec3cabb -> :sswitch_2
        0x4fedb178 -> :sswitch_4
        0x52a81b46 -> :sswitch_4f
        0x5b050999 -> :sswitch_1
        0x5d99eb19 -> :sswitch_86
        0x607aa687 -> :sswitch_51
        0x629e63e3 -> :sswitch_66
        0x63be849b -> :sswitch_64
        0x66c45d17 -> :sswitch_61
        0x68ce9f2d -> :sswitch_86
        0x6901086a -> :sswitch_86
        0x7189c194 -> :sswitch_f
        0x793a9485 -> :sswitch_c
        0x7e81e839 -> :sswitch_67
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7500d7c1 -> :sswitch_5
        -0xa436e23 -> :sswitch_a
        0xaba9128 -> :sswitch_80
        0x484012ad -> :sswitch_b
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x3d049614 -> :sswitch_9
        0x3119cbc6 -> :sswitch_8
        0x38e4401b -> :sswitch_6
        0x5912235a -> :sswitch_7
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x6f8cd605 -> :sswitch_17
        -0x4e558e0c -> :sswitch_85
        -0x1aa75e8 -> :sswitch_13
        0x620aba4e -> :sswitch_11
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x7af7bca8 -> :sswitch_12
        -0x5e806a7a -> :sswitch_15
        -0x2336531c -> :sswitch_16
        0x17011c17 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x2d20d172 -> :sswitch_84
        -0x2d18b60b -> :sswitch_1e
        0x11641317 -> :sswitch_19
        0x6b9abce8 -> :sswitch_1f
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x12806b71 -> :sswitch_1d
        -0x8293933 -> :sswitch_1a
        0x1b983b1c -> :sswitch_1c
        0x59c25edc -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x7cff2a07 -> :sswitch_27
        -0x65489b41 -> :sswitch_23
        -0x2a901f8d -> :sswitch_28
        -0x17bcb56d -> :sswitch_21
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x278103c0 -> :sswitch_24
        0x905bed3 -> :sswitch_26
        0x125c21e5 -> :sswitch_22
        0x57793326 -> :sswitch_25
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        -0x66f67bb7 -> :sswitch_30
        -0x7283988 -> :sswitch_2a
        0x643b8bb3 -> :sswitch_31
        0x6f622380 -> :sswitch_2c
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        -0x7eb25d00 -> :sswitch_2f
        -0x4d414215 -> :sswitch_2e
        0xe5a2bd7 -> :sswitch_2d
        0x76edc910 -> :sswitch_2b
    .end sparse-switch

    :sswitch_data_b
    .sparse-switch
        -0x4ce98f80 -> :sswitch_83
        0x56a0c9eb -> :sswitch_35
        0x6b5a8a59 -> :sswitch_39
        0x776fb4c8 -> :sswitch_33
    .end sparse-switch

    :sswitch_data_c
    .sparse-switch
        -0x3f95e344 -> :sswitch_34
        0x678bfe8 -> :sswitch_38
        0x263f874d -> :sswitch_37
        0x4756fd1b -> :sswitch_36
    .end sparse-switch

    :sswitch_data_d
    .sparse-switch
        -0x557d7cf3 -> :sswitch_3b
        -0x23a33100 -> :sswitch_42
        0xe53b56f -> :sswitch_3d
        0x7d6927ef -> :sswitch_41
    .end sparse-switch

    :sswitch_data_e
    .sparse-switch
        -0x6b1c4e96 -> :sswitch_3f
        -0x5a001687 -> :sswitch_3c
        -0x3b7afbfe -> :sswitch_3e
        -0x25d4d736 -> :sswitch_40
    .end sparse-switch

    :sswitch_data_f
    .sparse-switch
        -0x61266842 -> :sswitch_4a
        -0x41c6f62f -> :sswitch_82
        0x25707ffe -> :sswitch_46
        0x5f8713ad -> :sswitch_44
    .end sparse-switch

    :sswitch_data_10
    .sparse-switch
        -0x1f71f1aa -> :sswitch_45
        0x2a7c010c -> :sswitch_49
        0x3098e03c -> :sswitch_47
        0x65d6b1b4 -> :sswitch_48
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_11
    .sparse-switch
        -0x56a5de4b -> :sswitch_58
        -0x4e7597b9 -> :sswitch_52
        -0x2ea539fb -> :sswitch_57
        0xbe91b43 -> :sswitch_86
    .end sparse-switch

    :sswitch_data_12
    .sparse-switch
        -0x3fa88303 -> :sswitch_56
        -0x948d326 -> :sswitch_55
        0x1bb9aef6 -> :sswitch_53
        0x6c9e6fc0 -> :sswitch_54
    .end sparse-switch

    :sswitch_data_13
    .sparse-switch
        -0x5f6922ec -> :sswitch_60
        -0x55f011e0 -> :sswitch_86
        -0x2b6e30e8 -> :sswitch_5a
        0x48958a1a -> :sswitch_5c
    .end sparse-switch

    :sswitch_data_14
    .sparse-switch
        -0x64d180bf -> :sswitch_5f
        -0x438ce719 -> :sswitch_5e
        -0x17a23342 -> :sswitch_5d
        -0x5c7ae3e -> :sswitch_5b
    .end sparse-switch

    :sswitch_data_15
    .sparse-switch
        -0x7c4e8a0b -> :sswitch_75
        0xfe7713a -> :sswitch_73
        0x4bd5de5e -> :sswitch_79
        0x7c8194bb -> :sswitch_7a
    .end sparse-switch

    :sswitch_data_16
    .sparse-switch
        -0x78ed8988 -> :sswitch_76
        -0x3727b0bf -> :sswitch_77
        -0x2bf917d1 -> :sswitch_78
        0x555a78c8 -> :sswitch_74
    .end sparse-switch
.end method
