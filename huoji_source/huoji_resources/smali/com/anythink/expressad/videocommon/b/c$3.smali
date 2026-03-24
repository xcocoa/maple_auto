.class public final Lcom/anythink/expressad/videocommon/b/c$3;
.super Lcom/anythink/core/common/res/a/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/videocommon/b/c;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/videocommon/b/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/videocommon/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/videocommon/b/c$3;->a:Lcom/anythink/expressad/videocommon/b/c;

    invoke-direct {p0}, Lcom/anythink/core/common/res/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/c$3;->a:Lcom/anythink/expressad/videocommon/b/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",errorMsg:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/anythink/expressad/videocommon/b/c;->a(Lcom/anythink/expressad/videocommon/b/c;Ljava/lang/String;)V

    return-void
.end method

.method public final a(IJJ)Z
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/c$3;->a:Lcom/anythink/expressad/videocommon/b/c;

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/b/c;->e(Lcom/anythink/expressad/videocommon/b/c;)J

    move-result-wide v0

    cmp-long v2, v0, p4

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/c$3;->a:Lcom/anythink/expressad/videocommon/b/c;

    invoke-static {v0, p4, p5}, Lcom/anythink/expressad/videocommon/b/c;->a(Lcom/anythink/expressad/videocommon/b/c;J)J

    :cond_0
    iget-object p4, p0, Lcom/anythink/expressad/videocommon/b/c$3;->a:Lcom/anythink/expressad/videocommon/b/c;

    invoke-static {p4}, Lcom/anythink/expressad/videocommon/b/c;->c(Lcom/anythink/expressad/videocommon/b/c;)I

    move-result p5

    invoke-static {p4, p2, p3, p5}, Lcom/anythink/expressad/videocommon/b/c;->a(Lcom/anythink/expressad/videocommon/b/c;JI)V

    iget-object p2, p0, Lcom/anythink/expressad/videocommon/b/c$3;->a:Lcom/anythink/expressad/videocommon/b/c;

    invoke-static {p2}, Lcom/anythink/expressad/videocommon/b/c;->f(Lcom/anythink/expressad/videocommon/b/c;)I

    move-result p2

    const/4 p3, 0x1

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/c$3;->a:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/b/c;->g()V

    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/c$3;->a:Lcom/anythink/expressad/videocommon/b/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/b/c;->q()V

    return p3

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/c$3;->a:Lcom/anythink/expressad/videocommon/b/c;

    invoke-static {p1}, Lcom/anythink/expressad/videocommon/b/c;->c(Lcom/anythink/expressad/videocommon/b/c;)I

    move-result p1

    const/4 p2, 0x4

    const/4 p4, 0x2

    if-eq p1, p4, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/c$3;->a:Lcom/anythink/expressad/videocommon/b/c;

    invoke-static {p1}, Lcom/anythink/expressad/videocommon/b/c;->c(Lcom/anythink/expressad/videocommon/b/c;)I

    move-result p1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/anythink/expressad/videocommon/b/c$3;->a:Lcom/anythink/expressad/videocommon/b/c;

    invoke-static {p1}, Lcom/anythink/expressad/videocommon/b/c;->c(Lcom/anythink/expressad/videocommon/b/c;)I

    move-result p1

    if-ne p1, p2, :cond_4

    const/4 p4, 0x3

    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput p4, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lcom/anythink/expressad/videocommon/b/c$3;->a:Lcom/anythink/expressad/videocommon/b/c;

    invoke-static {p2}, Lcom/anythink/expressad/videocommon/b/c;->g(Lcom/anythink/expressad/videocommon/b/c;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return p3
.end method
