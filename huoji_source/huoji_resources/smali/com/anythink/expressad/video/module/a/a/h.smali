.class public final Lcom/anythink/expressad/video/module/a/a/h;
.super Lcom/anythink/expressad/video/module/a/a/k;
.source ""


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/b/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/anythink/expressad/video/module/a/a/k;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/b/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x2

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_6

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_5

    const/16 v0, 0x81

    if-eq p1, v0, :cond_4

    const/16 v0, 0x76

    const-string v1, ""

    if-eq p1, v0, :cond_2

    const/16 v0, 0x77

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :cond_3
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/anythink/expressad/video/module/a/a/k;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result v0

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->e()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->d()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->c()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/a/a/k;->a(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->a()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/a/a/k;->b(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->e()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->d()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->c()V

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/a/a/k;->a(I)V

    :cond_8
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/module/a/a/k;->a(ILjava/lang/Object;)V

    return-void
.end method
