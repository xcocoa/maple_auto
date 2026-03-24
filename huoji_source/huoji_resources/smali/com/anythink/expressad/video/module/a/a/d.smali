.class public Lcom/anythink/expressad/video/module/a/a/d;
.super Lcom/anythink/expressad/video/module/a/a/k;
.source ""


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/b/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/anythink/expressad/video/module/a/a/k;-><init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/videocommon/b/c;Lcom/anythink/expressad/videocommon/c/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/video/module/a/a;IZ)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/module/a/a/k;->a(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/a/a/k;->W:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/a/a/k;->a(I)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/a/a/k;->X:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/a/a/k;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/a/a/k;->b(I)V

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/a/a/k;->a(I)V

    return-void

    :pswitch_2
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/a/a/k;->b(I)V

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/a/a/k;->a(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/a/a/k;->a()V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
