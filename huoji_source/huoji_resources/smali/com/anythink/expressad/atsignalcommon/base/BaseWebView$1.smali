.class public final Lcom/anythink/expressad/atsignalcommon/base/BaseWebView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView$1;->a:Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView$1;->a:Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->lastTouchTime:J

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView$1;->a:Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;

    invoke-static {v0}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->a(Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView$1;->a:Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;

    invoke-static {v0}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->a(Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
