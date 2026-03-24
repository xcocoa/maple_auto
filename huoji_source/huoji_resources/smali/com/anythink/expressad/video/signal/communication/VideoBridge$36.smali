.class public Lcom/anythink/expressad/video/signal/communication/VideoBridge$36;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/signal/communication/VideoBridge;->setViewRect(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/anythink/expressad/video/signal/communication/VideoBridge;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/signal/communication/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/communication/VideoBridge$36;->c:Lcom/anythink/expressad/video/signal/communication/VideoBridge;

    iput-object p2, p0, Lcom/anythink/expressad/video/signal/communication/VideoBridge$36;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/anythink/expressad/video/signal/communication/VideoBridge$36;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/communication/VideoBridge$36;->c:Lcom/anythink/expressad/video/signal/communication/VideoBridge;

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/communication/VideoBridge$36;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/anythink/expressad/video/signal/communication/VideoBridge$36;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/video/signal/communication/VideoBridge;->J(Lcom/anythink/expressad/video/signal/communication/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
