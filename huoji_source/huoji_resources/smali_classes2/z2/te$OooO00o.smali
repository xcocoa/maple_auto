.class public final Lz2/te$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/te;-><init>(Landroid/content/Context;Ljava/lang/String;Lz2/te$OooO0O0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/te;


# direct methods
.method public constructor <init>(Lz2/te;)V
    .locals 0

    iput-object p1, p0, Lz2/te$OooO00o;->OoooOoO:Lz2/te;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lz2/te$OooO00o;->OoooOoO:Lz2/te;

    iget-object v0, p1, Lz2/te;->OooO0OO:Lz2/te$OooO0O0;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lz2/te;->OooO0O0:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lz2/te$OooO0O0;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lz2/te$OooO00o;->OoooOoO:Lz2/te;

    iget-object v0, p1, Lz2/te;->OooO0Oo:Landroid/view/WindowManager;

    iget-object p1, p1, Lz2/te;->OooO00o:Landroid/view/View;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method
