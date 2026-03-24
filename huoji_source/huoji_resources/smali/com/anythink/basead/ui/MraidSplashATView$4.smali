.class public final Lcom/anythink/basead/ui/MraidSplashATView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/MraidSplashATView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/MraidSplashATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/MraidSplashATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/MraidSplashATView$4;->a:Lcom/anythink/basead/ui/MraidSplashATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidSplashATView$4;->a:Lcom/anythink/basead/ui/MraidSplashATView;

    iget-object v1, v0, Lcom/anythink/basead/ui/BaseSplashATView;->H:Lcom/anythink/basead/e/a;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/anythink/basead/ui/MraidSplashATView;->b(Lcom/anythink/basead/ui/MraidSplashATView;)V

    return-void
.end method
