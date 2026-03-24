.class public final Lcom/anythink/china/a/a/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/china/a/a/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/china/a/a;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/china/a/a/d;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/anythink/china/a/a/d;->b:Landroid/app/KeyguardManager;

    if-nez v1, :cond_1

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/anythink/china/a/a/d;->b:Landroid/app/KeyguardManager;

    :cond_1
    iget-object v0, p0, Lcom/anythink/china/a/a/d;->b:Landroid/app/KeyguardManager;

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "obtainOaid"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/a/a/d;->b:Landroid/app/KeyguardManager;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V

    return-void

    :cond_3
    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
