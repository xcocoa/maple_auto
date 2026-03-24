.class public abstract Lz2/ka;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private OoooOoO:Landroid/app/AlertDialog;

.field private OoooOoo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract OooO00o()V
.end method

.method public abstract OooO0O0()V
.end method

.method public OooO0OO(Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lz2/ka;->OoooOoO:Landroid/app/AlertDialog;

    return-void
.end method

.method public OooO0Oo(I)V
    .locals 0

    iput p1, p0, Lz2/ka;->OoooOoo:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lz2/ka;->OoooOoo:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lz2/ka;->OooO00o()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lz2/ka;->OooO0O0()V

    :goto_0
    iget-object p1, p0, Lz2/ka;->OoooOoO:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
