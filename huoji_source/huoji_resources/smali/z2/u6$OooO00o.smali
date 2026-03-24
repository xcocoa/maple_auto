.class public Lz2/u6$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/u6;->OooO0oO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/u6;


# direct methods
.method public constructor <init>(Lz2/u6;)V
    .locals 0

    iput-object p1, p0, Lz2/u6$OooO00o;->OoooOoO:Lz2/u6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p1

    iget-object p2, p0, Lz2/u6$OooO00o;->OoooOoO:Lz2/u6;

    invoke-static {p2}, Lz2/u6;->OooO0o0(Lz2/u6;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p3

    const-string p3, "\u79d2"

    const-string p4, ""

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string p3, "sp_key_setting_auto_run_script_countdown"

    invoke-virtual {p1, p3, p2}, Lz2/x4;->OooO0oO(Ljava/lang/String;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
