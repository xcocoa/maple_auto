.class public final Lcom/anythink/expressad/out/LoadingActivity$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/out/LoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/out/LoadingActivity;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/out/LoadingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/out/LoadingActivity$2;->a:Lcom/anythink/expressad/out/LoadingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/out/LoadingActivity$2;->a:Lcom/anythink/expressad/out/LoadingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
