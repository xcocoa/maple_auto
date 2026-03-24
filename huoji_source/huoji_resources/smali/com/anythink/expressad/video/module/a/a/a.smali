.class public final Lcom/anythink/expressad/video/module/a/a/a;
.super Lcom/anythink/expressad/video/module/a/a/f;
.source ""


# instance fields
.field private V:Lcom/anythink/expressad/foundation/d/c;

.field private a:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/a/a/f;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/video/module/a/a/a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/anythink/expressad/video/module/a/a/a;->V:Lcom/anythink/expressad/foundation/d/c;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/module/a/a/f;->a(ILjava/lang/Object;)V

    const/16 p2, 0x6a

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/a/a/a;->a:Landroid/app/Activity;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/video/module/a/a/a;->V:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
