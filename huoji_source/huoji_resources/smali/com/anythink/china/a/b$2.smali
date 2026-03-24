.class public final Lcom/anythink/china/a/b$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/a/b;->c(Landroid/content/Context;Lcom/anythink/china/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/anythink/china/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/china/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/a/b$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/china/a/b$2;->b:Lcom/anythink/china/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/a/b$2;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/anythink/china/a/b$2$1;

    invoke-direct {v1, p0}, Lcom/anythink/china/a/b$2$1;-><init>(Lcom/anythink/china/a/b$2;)V

    invoke-static {v0, v1}, Lcom/anythink/china/api/ATChinaSDKHandler;->handleInitOaidSDK(Landroid/content/Context;Lcom/anythink/china/api/OaidSDKCallbackListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
