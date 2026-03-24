.class public Lcom/octopus/ad/AdActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/AdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/AdActivity;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/AdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/AdActivity$1;->a:Lcom/octopus/ad/AdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    sget-boolean v3, Lcom/octopus/ad/AdActivity;->a:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    sput-boolean v0, Lcom/octopus/ad/AdActivity;->a:Z

    iget-object v1, p0, Lcom/octopus/ad/AdActivity$1;->a:Lcom/octopus/ad/AdActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x3

    :cond_0
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_1
    return-void
.end method
