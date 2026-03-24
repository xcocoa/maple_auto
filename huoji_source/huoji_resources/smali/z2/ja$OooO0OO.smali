.class public Lz2/ja$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ja;->OoooO0O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/ja;


# direct methods
.method public constructor <init>(Lz2/ja;)V
    .locals 0

    iput-object p1, p0, Lz2/ja$OooO0OO;->OooO00o:Lz2/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lz2/ja$OooO0OO;->OooO00o:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->Oooo0OO(Lz2/ja;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lz2/ja$OooO0OO;->OooO00o:Lz2/ja;

    invoke-static {p1}, Lz2/ja;->Oooo0o0(Lz2/ja;)Lz2/vi;

    move-result-object p1

    invoke-interface {p1}, Lz2/vi;->OooO0o0()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lz2/ja$OooO0OO;->OooO00o(Ljava/lang/Integer;)V

    return-void
.end method
