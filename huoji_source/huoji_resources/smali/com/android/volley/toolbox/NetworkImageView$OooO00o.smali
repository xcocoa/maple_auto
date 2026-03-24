.class public Lcom/android/volley/toolbox/NetworkImageView$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o00000OO$OooOOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/NetworkImageView;->OooO0OO(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Z

.field public final synthetic OoooOoo:Lcom/android/volley/toolbox/NetworkImageView;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$OooO00o;->OoooOoo:Lcom/android/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/android/volley/toolbox/NetworkImageView$OooO00o;->OoooOoO:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/o00000OO$OooOO0O;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/android/volley/toolbox/NetworkImageView$OooO00o;->OoooOoO:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$OooO00o;->OoooOoo:Lcom/android/volley/toolbox/NetworkImageView;

    new-instance v0, Lcom/android/volley/toolbox/NetworkImageView$OooO00o$OooO00o;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$OooO00o$OooO00o;-><init>(Lcom/android/volley/toolbox/NetworkImageView$OooO00o;Lz2/o00000OO$OooOO0O;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lz2/o00000OO$OooOO0O;->OooO0Oo()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$OooO00o;->OoooOoo:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lz2/o00000OO$OooOO0O;->OooO0Oo()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$OooO00o;->OoooOoo:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->OooO0O0(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$OooO00o;->OoooOoo:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->OooO0O0(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public OooO0O0(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$OooO00o;->OoooOoo:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->OooO00o(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$OooO00o;->OoooOoo:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->OooO00o(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
