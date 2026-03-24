.class public Lcom/octopus/ad/internal/view/f;
.super Lcom/octopus/ad/internal/view/AdWebView;
.source ""


# instance fields
.field public c:Lcom/octopus/ad/internal/view/e;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl;Lcom/octopus/ad/internal/view/e;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/view/AdWebView;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    sget-object p1, Lcom/octopus/ad/internal/view/e;->a:[Ljava/lang/String;

    sget-object v0, Lcom/octopus/ad/internal/view/e$b;->b:Lcom/octopus/ad/internal/view/e$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/octopus/ad/internal/view/f;->c:Lcom/octopus/ad/internal/view/e;

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/octopus/ad/internal/view/AdWebView;->e()V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/f;->c:Lcom/octopus/ad/internal/view/e;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/e;->a()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
