.class public Lz2/sb$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/kb$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/sb;->OooOooO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/sb;


# direct methods
.method public constructor <init>(Lz2/sb;)V
    .locals 0

    iput-object p1, p0, Lz2/sb$OooO00o;->OooO00o:Lz2/sb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(I)V
    .locals 1

    iget-object v0, p0, Lz2/sb$OooO00o;->OooO00o:Lz2/sb;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/sb$OooO00o;->OooO00o:Lz2/sb;

    invoke-static {v0}, Lz2/sb;->OooOo0(Lz2/sb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lz2/sb$OooO00o;->OooO00o:Lz2/sb;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/sb$OooO00o;->OooO00o:Lz2/sb;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object p1, p0, Lz2/sb$OooO00o;->OooO00o:Lz2/sb;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
