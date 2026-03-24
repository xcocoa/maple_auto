.class public Lcom/anythink/expressad/atsignalcommon/webEnvCheck/MBWebViewChecker$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/atsignalcommon/webEnvCheck/MBWebViewChecker;->isWebViewAvailable(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/atsignalcommon/webEnvCheck/MBWebViewChecker$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/webEnvCheck/MBWebViewChecker;->a()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/webEnvCheck/MBWebViewChecker$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/expressad/atsignalcommon/webEnvCheck/MBWebViewChecker;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/atsignalcommon/webEnvCheck/MBWebViewChecker;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/anythink/expressad/atsignalcommon/webEnvCheck/MBWebViewChecker;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
