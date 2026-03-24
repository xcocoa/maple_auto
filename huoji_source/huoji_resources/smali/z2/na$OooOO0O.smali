.class public Lz2/na$OooOO0O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/gh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/na;->Oooo0o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/na;


# direct methods
.method public constructor <init>(Lz2/na;)V
    .locals 0

    iput-object p1, p0, Lz2/na$OooOO0O;->OooO00o:Lz2/na;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO0O0()V
    .locals 4

    invoke-static {}, Lz2/dh;->OooOO0O()V

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lz2/fh;

    const/16 v2, 0x2713

    const-string v3, "\u5de5\u4f5c\u5ba4\u89e3\u7ed1\uff01"

    invoke-direct {v1, v2, v3}, Lz2/fh;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/eh;)V
    .locals 5

    invoke-static {}, Lz2/na;->OooOo0O()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setElfStudioCallback --> messageEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lz2/eh;->OooO0oO()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lz2/eh;->OooO0oO()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    const/16 v2, 0x2712

    if-eq v0, v2, :cond_9

    const/16 v2, 0x2714

    if-eq v0, v2, :cond_8

    const/16 v3, 0x2775

    if-eq v0, v3, :cond_7

    const/16 v3, 0x2777

    if-eq v0, v3, :cond_6

    const/16 v3, 0x2779

    if-eq v0, v3, :cond_5

    const/16 v3, 0x277b

    if-eq v0, v3, :cond_4

    const/16 v3, 0x277d

    if-eq v0, v3, :cond_3

    const/16 v3, 0x277f

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2781

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lz2/eh;->OooO0O0()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0, p1}, Lz2/a4;->Oooo00o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u4fee\u6539\u6210\u529f\uff01"

    invoke-static {v4, v0}, Lz2/dh;->OooO00o(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "\u4fee\u6539\u5931\u8d25\uff01"

    invoke-static {v1, v0}, Lz2/dh;->OooO00o(ILjava/lang/String;)V

    :goto_0
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lz2/fh;

    invoke-direct {v1, v2, p1}, Lz2/fh;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lz2/na;->OooOo0O()Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/cyjh/elfin/base/AppContext;->OoooOoO:Ljava/lang/String;

    const-string p1, "\u89e3\u7ed1\u5de5\u4f5c\u5ba4\u9879\u76ee\u6210\u529f\uff01"

    invoke-static {v4, p1}, Lz2/dh;->OooO0oo(ILjava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    sget-object v0, Lz2/la;->OoooOoO:Lz2/la;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    :cond_3
    invoke-static {}, Lz2/r7;->OooO0o()Lz2/r7;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lz2/r7;->OooO0oO(I)V

    goto/16 :goto_3

    :cond_4
    invoke-static {}, Lz2/na;->OooOo0O()Ljava/lang/String;

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lz2/eh;

    invoke-virtual {p1}, Lz2/eh;->OooO0o0()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lz2/eh;-><init>(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Lz2/na;->OooOo0O()Ljava/lang/String;

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v0

    invoke-static {}, Lz2/c7;->OooO0oo()Lz2/c7;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v0

    sget v3, Lz2/c7;->OooO0o:I

    invoke-virtual {v1, v2, v0, v3}, Lz2/c7;->OooO(Landroid/content/Context;Ljava/lang/String;I)Lz2/c7;

    move-result-object v0

    invoke-virtual {p1}, Lz2/eh;->OooO0Oo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz2/c7;->OooO0oO(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lz2/na;->OooOo0O()Ljava/lang/String;

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object p1

    new-instance v0, Lz2/eh;

    invoke-direct {v0, v3}, Lz2/eh;-><init>(I)V

    goto :goto_2

    :cond_7
    invoke-static {}, Lz2/na;->OooOo0O()Ljava/lang/String;

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object p1

    new-instance v0, Lz2/eh;

    invoke-direct {v0, v3}, Lz2/eh;-><init>(I)V

    :goto_2
    invoke-virtual {p1, v0}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    invoke-static {}, Lz2/na;->OooOo0O()Ljava/lang/String;

    invoke-virtual {p1}, Lz2/eh;->OooO0oo()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lz2/dh;->OooOO0O()V

    goto :goto_3

    :cond_9
    invoke-static {}, Lz2/na;->OooOo0O()Ljava/lang/String;

    invoke-virtual {p1}, Lz2/eh;->OooO00o()I

    move-result p1

    if-nez p1, :cond_b

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {p1}, Lz2/dh;->OooOOOo(Landroid/content/Context;)V

    goto :goto_3

    :cond_a
    invoke-static {}, Lz2/na;->OooOo0O()Ljava/lang/String;

    iget-object p1, p0, Lz2/na$OooOO0O;->OooO00o:Lz2/na;

    invoke-static {p1}, Lz2/na;->OooOo0o(Lz2/na;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/16 v0, 0x3ef

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_b
    :goto_3
    return-void
.end method
