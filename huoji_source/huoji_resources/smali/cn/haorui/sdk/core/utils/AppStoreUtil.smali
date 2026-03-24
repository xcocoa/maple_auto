.class public Lcn/haorui/sdk/core/utils/AppStoreUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/utils/AppStoreUtil$InstallReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppStoreUtil"

.field private static context:Landroid/content/Context; = null

.field private static downloadSucc:[Ljava/lang/String; = null

.field private static installStart:[Ljava/lang/String; = null

.field private static installSuccess:[Ljava/lang/String; = null

.field private static packageName:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/AppStoreUtil;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/haorui/sdk/core/utils/AppStoreUtil;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/AppStoreUtil;->downloadSucc:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$102([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/haorui/sdk/core/utils/AppStoreUtil;->downloadSucc:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/AppStoreUtil;->installStart:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$202([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/haorui/sdk/core/utils/AppStoreUtil;->installStart:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/AppStoreUtil;->installSuccess:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$302([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/haorui/sdk/core/utils/AppStoreUtil;->installSuccess:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/AppStoreUtil;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static registerBroadCast(Landroid/content/Context;)V
    .locals 2

    sput-object p0, Lcn/haorui/sdk/core/utils/AppStoreUtil;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcn/haorui/sdk/core/utils/AppStoreUtil$InstallReceiver;

    invoke-direct {v1}, Lcn/haorui/sdk/core/utils/AppStoreUtil$InstallReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static setInfo(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcn/haorui/sdk/core/utils/AppStoreUtil;->packageName:Ljava/lang/String;

    sput-object p1, Lcn/haorui/sdk/core/utils/AppStoreUtil;->downloadSucc:[Ljava/lang/String;

    sput-object p2, Lcn/haorui/sdk/core/utils/AppStoreUtil;->installStart:[Ljava/lang/String;

    sput-object p3, Lcn/haorui/sdk/core/utils/AppStoreUtil;->installSuccess:[Ljava/lang/String;

    return-void
.end method
