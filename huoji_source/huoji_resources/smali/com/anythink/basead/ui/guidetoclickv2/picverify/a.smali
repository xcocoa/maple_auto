.class public abstract Lcom/anythink/basead/ui/guidetoclickv2/picverify/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/a;->a:Landroid/content/Context;

    return-void
.end method

.method private c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/picverify/a;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public abstract a()Landroid/graphics/Paint;
.end method

.method public abstract a(I)Landroid/graphics/Path;
.end method

.method public abstract a(III)Lcom/anythink/basead/ui/guidetoclickv2/picverify/c;
.end method

.method public a(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 0

    return-void
.end method

.method public abstract b()Landroid/graphics/Paint;
.end method

.method public b(III)Lcom/anythink/basead/ui/guidetoclickv2/picverify/c;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/a;->a(III)Lcom/anythink/basead/ui/guidetoclickv2/picverify/c;

    move-result-object p1

    return-object p1
.end method
