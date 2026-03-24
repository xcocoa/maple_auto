.class public abstract Lz2/t5$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/t5$OooO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/t5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OooO0OO"
.end annotation


# instance fields
.field public OooO00o:Landroid/widget/Toast;

.field public OooO0O0:Lz2/t5;

.field public OooO0OO:Landroid/view/View;


# direct methods
.method public constructor <init>(Lz2/t5;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/Toast;

    invoke-static {}, Lz2/u5;->OooO00o()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz2/t5$OooO0OO;->OooO00o:Landroid/widget/Toast;

    iput-object p1, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {p1}, Lz2/t5;->OooO0o(Lz2/t5;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {p1}, Lz2/t5;->OooO0oO(Lz2/t5;)I

    move-result p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {p1}, Lz2/t5;->OooO0oo(Lz2/t5;)I

    move-result p1

    if-eq p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lz2/t5$OooO0OO;->OooO00o:Landroid/widget/Toast;

    iget-object v0, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {v0}, Lz2/t5;->OooO0o(Lz2/t5;)I

    move-result v0

    iget-object v1, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {v1}, Lz2/t5;->OooO0oO(Lz2/t5;)I

    move-result v1

    iget-object v2, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {v2}, Lz2/t5;->OooO0oo(Lz2/t5;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    :cond_1
    return-void
.end method

.method private OooO0o(Landroid/widget/TextView;)V
    .locals 5

    iget-object v0, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {v0}, Lz2/t5;->OooO0Oo(Lz2/t5;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lz2/t5$OooO0OO;->OooO0OO:Landroid/view/View;

    iget-object v2, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {v2}, Lz2/t5;->OooO0Oo(Lz2/t5;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {v0}, Lz2/t5;->OooO0o0(Lz2/t5;)I

    move-result v0

    const v2, -0x1000001

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lz2/t5$OooO0OO;->OooO0OO:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {v3}, Lz2/t5;->OooO0o0(Lz2/t5;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {v1}, Lz2/t5;->OooO0o0(Lz2/t5;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {v1}, Lz2/t5;->OooO0o0(Lz2/t5;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lz2/t5$OooO0OO;->OooO0OO:Landroid/view/View;

    iget-object v0, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {v0}, Lz2/t5;->OooO0o0(Lz2/t5;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private OooO0o0()V
    .locals 1

    invoke-static {}, Lz2/w5;->OooOoo0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lz2/t5$OooO0OO;->OooO0Oo(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/t5$OooO0OO;->OooO0OO(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO0O0(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {v0, p1}, Lz2/t5;->OooO(Lz2/t5;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lz2/t5$OooO0OO;->OooO0OO(Landroid/view/View;)V

    :goto_0
    invoke-direct {p0}, Lz2/t5$OooO0OO;->OooO0o0()V

    return-void

    :cond_0
    iget-object v0, p0, Lz2/t5$OooO0OO;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lz2/t5$OooO0OO;->OooO0OO:Landroid/view/View;

    const v1, 0x102000b

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    sget v0, Lcom/cyjh/common/R$layout;->utils_toast_view:I

    invoke-static {v0}, Lz2/w5;->OooOooO(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/t5$OooO0OO;->OooO0OO(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lz2/t5$OooO0OO;->OooO0OO:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {p1}, Lz2/t5;->OooOO0(Lz2/t5;)I

    move-result p1

    const v1, -0x1000001

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {p1}, Lz2/t5;->OooOO0(Lz2/t5;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object p1, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {p1}, Lz2/t5;->OooOO0O(Lz2/t5;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    iget-object p1, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-static {p1}, Lz2/t5;->OooOO0O(Lz2/t5;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_4
    invoke-direct {p0, v0}, Lz2/t5$OooO0OO;->OooO0o(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public OooO0OO(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lz2/t5$OooO0OO;->OooO0OO:Landroid/view/View;

    iget-object v0, p0, Lz2/t5$OooO0OO;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method

.method public OooO0Oo(I)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lz2/t5$OooO0OO;->OooO0OO:Landroid/view/View;

    invoke-static {v0}, Lz2/w5;->Oooo0oO(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-static {}, Lz2/u5;->OooO00o()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TAG_TOAST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public cancel()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lz2/t5$OooO0OO;->OooO00o:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lz2/t5$OooO0OO;->OooO00o:Landroid/widget/Toast;

    iput-object v0, p0, Lz2/t5$OooO0OO;->OooO0OO:Landroid/view/View;

    return-void
.end method
