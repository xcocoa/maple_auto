.class public final Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$1;->b:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$1;->b:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->a(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$1;->b:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->a(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)V

    return-void
.end method
