.class public Lz2/pe0$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oe0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/pe0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# static fields
.field private static final OooO0OO:Ljava/lang/String; = "razerdp.basepopup.BasePopupSupporterSupport"

.field private static final OooO0Oo:Ljava/lang/String; = "razerdp.basepopup.BasePopupSupporterLifeCycle"

.field private static final OooO0o0:Ljava/lang/String; = "razerdp.basepopup.BasePopupSupporterX"


# instance fields
.field private OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/oe0;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0O0:Lz2/pe0;


# direct methods
.method public constructor <init>(Lz2/pe0;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lz2/pe0$OooO0O0;->OooO0O0:Lz2/pe0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz2/pe0$OooO0O0;->OooO00o:Ljava/util/List;

    :try_start_0
    const-string p2, "razerdp.basepopup.BasePopupSupporterSupport"

    invoke-static {p1, p2}, Lz2/pe0;->OooO00o(Lz2/pe0;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lz2/pe0$OooO0O0;->OooO00o:Ljava/util/List;

    const-string v0, "razerdp.basepopup.BasePopupSupporterSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/oe0;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p2, "razerdp.basepopup.BasePopupSupporterLifeCycle"

    invoke-static {p1, p2}, Lz2/pe0;->OooO00o(Lz2/pe0;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lz2/pe0$OooO0O0;->OooO00o:Ljava/util/List;

    const-string v0, "razerdp.basepopup.BasePopupSupporterLifeCycle"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/oe0;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p2, "razerdp.basepopup.BasePopupSupporterX"

    invoke-static {p1, p2}, Lz2/pe0;->OooO00o(Lz2/pe0;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lz2/pe0$OooO0O0;->OooO00o:Ljava/util/List;

    const-string p2, "razerdp.basepopup.BasePopupSupporterX"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz2/oe0;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lz2/pe0$OooO0O0;->OooO00o:Ljava/util/List;

    invoke-static {p1}, Lrazerdp/util/log/PopupLog;->OooO0oo(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public OooO00o(Lrazerdp/basepopup/BasePopupWindow;Ljava/lang/Object;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 3

    iget-object v0, p0, Lz2/pe0$OooO0O0;->OooO00o:Ljava/util/List;

    invoke-static {v0}, Lz2/nf0;->OooO0OO(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lz2/pe0$OooO0O0;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/oe0;

    iget-object v2, p1, Lrazerdp/basepopup/BasePopupWindow;->o00O0O:Ljava/lang/Object;

    if-nez v2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v1, p1, p2}, Lz2/oe0;->OooO00o(Lrazerdp/basepopup/BasePopupWindow;Ljava/lang/Object;)Lrazerdp/basepopup/BasePopupWindow;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public OooO0O0(Lrazerdp/basepopup/BasePopupWindow;Ljava/lang/Object;)Lrazerdp/basepopup/BasePopupWindow;
    .locals 3

    iget-object v0, p0, Lz2/pe0$OooO0O0;->OooO00o:Ljava/util/List;

    invoke-static {v0}, Lz2/nf0;->OooO0OO(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lz2/pe0$OooO0O0;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/oe0;

    iget-object v2, p1, Lrazerdp/basepopup/BasePopupWindow;->o00O0O:Ljava/lang/Object;

    if-eqz v2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v1, p1, p2}, Lz2/oe0;->OooO0O0(Lrazerdp/basepopup/BasePopupWindow;Ljava/lang/Object;)Lrazerdp/basepopup/BasePopupWindow;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public OooO0OO(Lrazerdp/basepopup/BasePopupWindow;Landroid/app/Activity;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lz2/pe0$OooO0O0;->OooO00o:Ljava/util/List;

    invoke-static {v0}, Lz2/nf0;->OooO0OO(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lz2/pe0$OooO0O0;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/oe0;

    invoke-interface {v2, p1, p2}, Lz2/oe0;->OooO0OO(Lrazerdp/basepopup/BasePopupWindow;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method
