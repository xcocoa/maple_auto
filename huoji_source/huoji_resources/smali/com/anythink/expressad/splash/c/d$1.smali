.class public final Lcom/anythink/expressad/splash/c/d$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/splash/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/splash/c/d;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/splash/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/c/d$1;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$1;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {p1}, Lcom/anythink/expressad/splash/c/d;->a(Lcom/anythink/expressad/splash/c/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$1;->a:Lcom/anythink/expressad/splash/c/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/anythink/expressad/splash/c/d;->a(Lcom/anythink/expressad/splash/c/d;I)V

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$1;->a:Lcom/anythink/expressad/splash/c/d;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/anythink/expressad/splash/c/d;->b(Lcom/anythink/expressad/splash/c/d;I)V

    :cond_0
    return-void
.end method
