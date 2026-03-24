.class public Lz2/p6$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/p6;->OooO0o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Landroid/widget/EditText;

.field public final synthetic OoooOoo:Lz2/p6;


# direct methods
.method public constructor <init>(Lz2/p6;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lz2/p6$OooO00o;->OoooOoo:Lz2/p6;

    iput-object p2, p0, Lz2/p6$OooO00o;->OoooOoO:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lz2/p6$OooO00o;->OoooOoO:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u8f93\u5165\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {p1}, Lz2/t5;->o000oOoO(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object p1

    iget-object v0, p0, Lz2/p6$OooO00o;->OoooOoO:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sp_key_adb_command"

    invoke-virtual {p1, v1, v0}, Lz2/x4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u5df2\u4fdd\u5b58\uff01"

    invoke-static {p1}, Lz2/t5;->o000oOoO(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lz2/p6$OooO00o;->OoooOoo:Lz2/p6;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method
