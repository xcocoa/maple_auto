.class public Lcom/octopus/ad/internal/nativead/a$a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/utilities/ImageService$ImageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/nativead/a$a;->a(Lcom/octopus/ad/internal/network/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/NativeAdResponse;

.field public final synthetic b:Lcom/octopus/ad/internal/nativead/a$a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/nativead/a$a;Lcom/octopus/ad/NativeAdResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/a$a$1;->b:Lcom/octopus/ad/internal/nativead/a$a;

    iput-object p2, p0, Lcom/octopus/ad/internal/nativead/a$a$1;->a:Lcom/octopus/ad/NativeAdResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 3

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpRespLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image downloading logFailed for url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/octopus/ad/internal/nativead/a$a$1;->a:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v2}, Lcom/octopus/ad/NativeAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveImage(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/a$a$1;->a:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0, p1}, Lcom/octopus/ad/NativeAdResponse;->setImage(Landroid/graphics/Bitmap;)V

    return-void
.end method
