.class public final Lcom/anythink/expressad/splash/c/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/g/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/splash/c/b;->a(Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/splash/view/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/d/c;

.field public final synthetic b:Lcom/anythink/expressad/splash/view/a;

.field public final synthetic c:Lcom/anythink/expressad/splash/view/ATSplashView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/splash/view/a;Lcom/anythink/expressad/splash/view/ATSplashView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/c/b$1;->a:Lcom/anythink/expressad/foundation/d/c;

    iput-object p2, p0, Lcom/anythink/expressad/splash/c/b$1;->b:Lcom/anythink/expressad/splash/view/a;

    iput-object p3, p0, Lcom/anythink/expressad/splash/c/b$1;->c:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/splash/c/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/expressad/splash/c/b$1;->a:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/b$1;->b:Lcom/anythink/expressad/splash/view/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/anythink/expressad/splash/view/a;->a()V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/b$1;->c:Lcom/anythink/expressad/splash/view/ATSplashView;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/splash/view/ATSplashView;->setImageReady(Z)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/splash/c/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/expressad/splash/c/b$1;->a:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/b$1;->b:Lcom/anythink/expressad/splash/view/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/anythink/expressad/splash/view/a;->b()V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/b$1;->c:Lcom/anythink/expressad/splash/view/ATSplashView;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/splash/view/ATSplashView;->setImageReady(Z)V

    :cond_1
    return-void
.end method
