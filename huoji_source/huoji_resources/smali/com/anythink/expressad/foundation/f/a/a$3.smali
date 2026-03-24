.class public final Lcom/anythink/expressad/foundation/f/a/a$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/foundation/f/a/a;->a(Landroid/widget/RadioButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/f/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/f/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/f/a/a$3;->a:Lcom/anythink/expressad/foundation/f/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/f/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/foundation/f/a/a$3;->a:Lcom/anythink/expressad/foundation/f/a/a;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/f/a/a;->d(Lcom/anythink/expressad/foundation/f/a/a;)Lcom/anythink/expressad/widget/a/c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/foundation/f/a/a$3;->a:Lcom/anythink/expressad/foundation/f/a/a;

    invoke-static {p1}, Lcom/anythink/expressad/foundation/f/a/a;->d(Lcom/anythink/expressad/foundation/f/a/a;)Lcom/anythink/expressad/widget/a/c;

    move-result-object p1

    invoke-static {}, Lcom/anythink/expressad/foundation/f/a/a;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/widget/a/c;->a(Z)V

    :cond_1
    return-void
.end method
