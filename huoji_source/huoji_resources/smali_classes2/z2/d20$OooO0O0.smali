.class public Lz2/d20$OooO0O0;
.super Lz2/d20;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/d20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/d20<",
        "Landroidx/fragment/app/Fragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lz2/c20;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/d20;-><init>(Lz2/c20;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Lz2/g20;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz2/d20$OooO0O0;->OooO0o0(Lz2/g20;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o0(Lz2/g20;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 0

    new-instance p1, Lorg/greenrobot/eventbus/util/ErrorDialogFragments$OooO00o;

    invoke-direct {p1}, Lorg/greenrobot/eventbus/util/ErrorDialogFragments$OooO00o;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method
