.class public Lz2/sf0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/sf0;->o000OOO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Landroid/util/Pair;

.field public final synthetic OoooOoo:Lz2/sf0;


# direct methods
.method public constructor <init>(Lz2/sf0;Landroid/util/Pair;)V
    .locals 0

    iput-object p1, p0, Lz2/sf0$OooO00o;->OoooOoo:Lz2/sf0;

    iput-object p2, p0, Lz2/sf0$OooO00o;->OoooOoO:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lz2/sf0$OooO00o;->OoooOoO:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lz2/rf0;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lz2/rf0;

    iget-object v2, p0, Lz2/sf0$OooO00o;->OoooOoo:Lz2/sf0;

    iput-object v2, v1, Lz2/rf0;->OoooOoO:Lz2/sf0;

    :cond_0
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lz2/sf0$OooO00o;->OoooOoo:Lz2/sf0;

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupWindow;->OooOoOO()V

    return-void
.end method
