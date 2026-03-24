.class public final synthetic Lz2/j9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic OoooOoO:Lcom/cyjh/elfin/ui/activity/SplashActivity;

.field public final synthetic OoooOoo:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/j9;->OoooOoO:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    iput-object p2, p0, Lz2/j9;->OoooOoo:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lz2/j9;->OoooOoO:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    iget-object v1, p0, Lz2/j9;->OoooOoo:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooo000(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
