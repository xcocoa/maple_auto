.class public Lrazerdp/basepopup/BasePopupWindow$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrazerdp/basepopup/BasePopupWindow;->o000000(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Landroid/view/View;

.field public final synthetic OoooOoo:Z

.field public final synthetic Ooooo00:Z

.field public final synthetic Ooooo0o:Lrazerdp/basepopup/BasePopupWindow;


# direct methods
.method public constructor <init>(Lrazerdp/basepopup/BasePopupWindow;Landroid/view/View;ZZ)V
    .locals 0

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupWindow$OooO0OO;->Ooooo0o:Lrazerdp/basepopup/BasePopupWindow;

    iput-object p2, p0, Lrazerdp/basepopup/BasePopupWindow$OooO0OO;->OoooOoO:Landroid/view/View;

    iput-boolean p3, p0, Lrazerdp/basepopup/BasePopupWindow$OooO0OO;->OoooOoo:Z

    iput-boolean p4, p0, Lrazerdp/basepopup/BasePopupWindow$OooO0OO;->Ooooo00:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooO0OO;->Ooooo0o:Lrazerdp/basepopup/BasePopupWindow;

    invoke-static {v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOO0o(Lrazerdp/basepopup/BasePopupWindow;)I

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupWindow$OooO0OO;->Ooooo0o:Lrazerdp/basepopup/BasePopupWindow;

    iget-object v1, p0, Lrazerdp/basepopup/BasePopupWindow$OooO0OO;->OoooOoO:Landroid/view/View;

    iget-boolean v2, p0, Lrazerdp/basepopup/BasePopupWindow$OooO0OO;->OoooOoo:Z

    iget-boolean v3, p0, Lrazerdp/basepopup/BasePopupWindow$OooO0OO;->Ooooo00:Z

    invoke-static {v0, v1, v2, v3}, Lrazerdp/basepopup/BasePopupWindow;->OooOOO0(Lrazerdp/basepopup/BasePopupWindow;Landroid/view/View;ZZ)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry to show >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lrazerdp/basepopup/BasePopupWindow$OooO0OO;->Ooooo0o:Lrazerdp/basepopup/BasePopupWindow;

    invoke-static {v2}, Lrazerdp/basepopup/BasePopupWindow;->OooO0Oo(Lrazerdp/basepopup/BasePopupWindow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "BasePopupWindow"

    invoke-static {v1, v0}, Lrazerdp/util/log/PopupLog;->OooO0OO(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
