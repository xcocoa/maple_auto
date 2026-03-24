.class public Lz2/ja$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ja;->Oooo0oO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/ja;


# direct methods
.method public constructor <init>(Lz2/ja;)V
    .locals 0

    iput-object p1, p0, Lz2/ja$OooO0O0;->OoooOoO:Lz2/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lz2/ih;->OooO0Oo()Lz2/ih;

    move-result-object v0

    iget-object v1, p0, Lz2/ja$OooO0O0;->OoooOoO:Lz2/ja;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lz2/ja$OooO0O0;->OoooOoO:Lz2/ja;

    invoke-static {v2}, Lz2/ja;->OooOooo(Lz2/ja;)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Lz2/ja$OooO0O0$OooO00o;

    invoke-direct {v3, p0}, Lz2/ja$OooO0O0$OooO00o;-><init>(Lz2/ja$OooO0O0;)V

    invoke-virtual {v0, v1, v2, v3}, Lz2/ih;->OooO00o(Landroid/app/Activity;Landroid/view/ViewGroup;Lz2/di;)V

    return-void
.end method
