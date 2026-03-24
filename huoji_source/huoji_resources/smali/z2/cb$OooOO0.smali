.class public final Lz2/cb$OooOO0;
.super Lz2/cb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooOO0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/cb<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lz2/cb;-><init>(Ljava/lang/Object;ZB)V

    return-void
.end method


# virtual methods
.method public final OooO0oO(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0xe
    .end annotation

    sget-object v0, Lz2/cb;->OooO0OO:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lz2/cb;->OooO0O0:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    sget-object v0, Lz2/cb;->OooO0OO:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method
