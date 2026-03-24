.class public Lcom/octopus/ad/internal/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/c;


# direct methods
.method private constructor <init>(Lcom/octopus/ad/internal/c;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/c$a;->a:Lcom/octopus/ad/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/internal/c;Lcom/octopus/ad/internal/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/c$a;-><init>(Lcom/octopus/ad/internal/c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->handler_message_pass:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/c$a;->a:Lcom/octopus/ad/internal/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/c;->a(Lcom/octopus/ad/internal/c;)Lcom/octopus/ad/internal/c$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
