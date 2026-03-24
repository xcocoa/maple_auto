.class public final Lz2/o00000OO$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o00000OO$OooOOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/o00000OO;->OooOO0(Landroid/widget/ImageView;II)Lz2/o00000OO$OooOOO0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:I

.field public final synthetic OoooOoo:Landroid/widget/ImageView;

.field public final synthetic Ooooo00:I


# direct methods
.method public constructor <init>(ILandroid/widget/ImageView;I)V
    .locals 0

    iput p1, p0, Lz2/o00000OO$OooO00o;->OoooOoO:I

    iput-object p2, p0, Lz2/o00000OO$OooO00o;->OoooOoo:Landroid/widget/ImageView;

    iput p3, p0, Lz2/o00000OO$OooO00o;->Ooooo00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/o00000OO$OooOO0O;Z)V
    .locals 0

    invoke-virtual {p1}, Lz2/o00000OO$OooOO0O;->OooO0Oo()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lz2/o00000OO$OooO00o;->OoooOoo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lz2/o00000OO$OooOO0O;->OooO0Oo()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lz2/o00000OO$OooO00o;->Ooooo00:I

    if-eqz p1, :cond_1

    iget-object p2, p0, Lz2/o00000OO$OooO00o;->OoooOoo:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public OooO0O0(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget p1, p0, Lz2/o00000OO$OooO00o;->OoooOoO:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/o00000OO$OooO00o;->OoooOoo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
