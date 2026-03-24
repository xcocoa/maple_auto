.class public Lz2/t6$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/t6;->OooOO0o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/t6;


# direct methods
.method public constructor <init>(Lz2/t6;)V
    .locals 0

    iput-object p1, p0, Lz2/t6$OooO00o;->OoooOoO:Lz2/t6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lz2/t6$OooO00o;->OoooOoO:Lz2/t6;

    invoke-static {p1}, Lz2/t6;->OooO0o0(Lz2/t6;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lz2/t6$OooO00o;->OoooOoO:Lz2/t6;

    invoke-static {p1}, Lz2/t6;->OooO0oO(Lz2/t6;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/t6$OooO00o;->OoooOoO:Lz2/t6;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lz2/t6;->OooO0o(Lz2/t6;Z)Z

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "sp_key_switch_setting_auto_run_script"

    invoke-virtual {p1, v1, v0}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    invoke-static {p1}, Lz2/y8;->OooOO0o(I)V

    :cond_1
    :goto_0
    invoke-static {}, Lz2/t6;->OooO0oo()Ljava/lang/String;

    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/i7;->Oooo0o()V

    return-void
.end method
