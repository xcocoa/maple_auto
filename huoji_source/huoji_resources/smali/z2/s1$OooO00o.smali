.class public final Lz2/s1$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/x1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/x1<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/x1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/x1<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0O0:Lz2/s1;


# direct methods
.method public constructor <init>(Lz2/s1;Lz2/x1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/x1<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/s1$OooO00o;->OooO0O0:Lz2/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/s1$OooO00o;->OooO00o:Lz2/x1;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;Lz2/x1$OooO00o;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lz2/x1$OooO00o;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lz2/x1$OooO00o;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lz2/s1$OooO00o;->OooO0O0:Lz2/s1;

    invoke-virtual {v2, p1}, Lz2/s1;->OooO0O0(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lz2/s1$OooO00o;->OooO00o:Lz2/x1;

    invoke-interface {p1, v1, p2}, Lz2/x1;->OooO00o(Ljava/lang/Object;Lz2/x1$OooO00o;)Z

    move-result p1

    return p1
.end method
