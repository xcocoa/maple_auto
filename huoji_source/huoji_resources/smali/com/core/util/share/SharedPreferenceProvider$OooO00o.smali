.class public Lcom/core/util/share/SharedPreferenceProvider$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/core/util/share/SharedPreferenceProvider$OooO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/core/util/share/SharedPreferenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/core/util/share/SharedPreferenceProvider;


# direct methods
.method public constructor <init>(Lcom/core/util/share/SharedPreferenceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/core/util/share/SharedPreferenceProvider$OooO00o;->OooO00o:Lcom/core/util/share/SharedPreferenceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    const-string v0, "key_result"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method
