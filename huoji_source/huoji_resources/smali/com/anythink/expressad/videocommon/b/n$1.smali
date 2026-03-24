.class public final Lcom/anythink/expressad/videocommon/b/n$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/videocommon/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/videocommon/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/videocommon/b/n;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/videocommon/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/videocommon/b/n$1;->a:Lcom/anythink/expressad/videocommon/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JI)V
    .locals 0

    const/4 p1, 0x5

    if-eq p3, p1, :cond_0

    const/4 p1, 0x4

    if-ne p3, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/n$1;->a:Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {p1}, Lcom/anythink/expressad/videocommon/b/n;->a(Lcom/anythink/expressad/videocommon/b/n;)Z

    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/n$1;->a:Lcom/anythink/expressad/videocommon/b/n;

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/b/n;->a()V

    :cond_1
    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/n$1;->a:Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {p1}, Lcom/anythink/expressad/videocommon/b/n;->a(Lcom/anythink/expressad/videocommon/b/n;)Z

    :cond_2
    return-void
.end method
