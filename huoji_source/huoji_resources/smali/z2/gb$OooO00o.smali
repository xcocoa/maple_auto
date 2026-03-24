.class public Lz2/gb$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/gb;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:I

.field public final synthetic OoooOoo:Lz2/gb;


# direct methods
.method public constructor <init>(Lz2/gb;I)V
    .locals 0

    iput-object p1, p0, Lz2/gb$OooO00o;->OoooOoo:Lz2/gb;

    iput p2, p0, Lz2/gb$OooO00o;->OoooOoO:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lz2/gb$OooO00o;->OoooOoo:Lz2/gb;

    invoke-static {p1}, Lz2/gb;->OooO00o(Lz2/gb;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lz2/gb$OooO00o;->OoooOoo:Lz2/gb;

    invoke-static {v0}, Lz2/gb;->OooO00o(Lz2/gb;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lz2/gb$OooO00o;->OoooOoO:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lz2/gb$OooO00o;->OoooOoo:Lz2/gb;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lz2/gb$OooO00o;->OoooOoo:Lz2/gb;

    invoke-static {p1}, Lz2/gb;->OooO0O0(Lz2/gb;)Lz2/gb$OooO0O0;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/gb$OooO00o;->OoooOoo:Lz2/gb;

    invoke-static {p1}, Lz2/gb;->OooO0O0(Lz2/gb;)Lz2/gb$OooO0O0;

    move-result-object p1

    iget-object v0, p0, Lz2/gb$OooO00o;->OoooOoo:Lz2/gb;

    invoke-static {v0}, Lz2/gb;->OooO00o(Lz2/gb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lz2/gb$OooO0O0;->OooO00o(I)V

    :cond_0
    return-void
.end method
