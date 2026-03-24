.class public Lz2/ia$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/OooOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/ia;


# direct methods
.method public constructor <init>(Lz2/ia;)V
    .locals 0

    iput-object p1, p0, Lz2/ia$OooO00o;->OooO00o:Lz2/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2

    iget-object p1, p0, Lz2/ia$OooO00o;->OooO00o:Lz2/ia;

    invoke-static {p1}, Lz2/ia;->OooOo0o(Lz2/ia;)Lz2/OooOOO0;

    move-result-object p1

    invoke-virtual {p1, p3}, Lz2/OooOOO0;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/NotifyMsgBean;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lz2/ia$OooO00o;->OooO00o:Lz2/ia;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/cyjh/elfin/ui/activity/MessageDetailActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class p3, Lcom/cyjh/elfin/ui/activity/MessageDetailActivity;

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Lcom/cyjh/http/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p1, p0, Lz2/ia$OooO00o;->OooO00o:Lz2/ia;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
