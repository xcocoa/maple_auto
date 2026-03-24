.class public final Lcom/anythink/splashad/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/j/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/anythink/core/common/b/a;)V
    .locals 1

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/anythink/splashad/a/b;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/anythink/splashad/a/b;

    invoke-virtual {p2, p1}, Lcom/anythink/splashad/a/b;->setRequestId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
