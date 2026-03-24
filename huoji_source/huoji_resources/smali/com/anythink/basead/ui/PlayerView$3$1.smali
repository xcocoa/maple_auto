.class public final Lcom/anythink/basead/ui/PlayerView$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/PlayerView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/PlayerView$3;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/PlayerView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView$3$1;->a:Lcom/anythink/basead/ui/PlayerView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView$3$1;->a:Lcom/anythink/basead/ui/PlayerView$3;

    iget-object v0, v0, Lcom/anythink/basead/ui/PlayerView$3;->a:Lcom/anythink/basead/ui/PlayerView;

    const-string v1, "40002"

    const-string v2, "Video player error!Buffer timeout"

    invoke-static {v1, v2}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;Lcom/anythink/basead/c/e;)V

    return-void
.end method
