.class public Lz2/kd0$OooO00o;
.super Lz2/kd0$OooO0O0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/kd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation


# instance fields
.field public final OooO0OO:I

.field public final OooO0Oo:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz2/kd0$OooO0O0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz2/kd0$OooO00o;->OooO0OO:I

    iput v0, p0, Lz2/kd0$OooO00o;->OooO0Oo:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lz2/kd0$OooO0O0;-><init>(Landroid/view/View;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lz2/kd0$OooO00o;->OooO00o(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I

    move-result p3

    iput p3, p0, Lz2/kd0$OooO00o;->OooO0OO:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lz2/kd0$OooO00o;->OooO00o(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I

    move-result p1

    iput p1, p0, Lz2/kd0$OooO00o;->OooO0Oo:I

    return-void
.end method

.method private static OooO00o(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "src"

    goto :goto_0

    :cond_0
    const-string v0, "background"

    :goto_0
    const-string v1, "http://schemas.android.com/apk/res/android"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lz2/kd0;->OooO0O0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p2, p1}, Lz2/kd0;->OooO0o0(Landroid/widget/ImageView;ZI)Z

    move-result p0

    if-nez p0, :cond_1

    return p1

    :cond_1
    return v2
.end method
