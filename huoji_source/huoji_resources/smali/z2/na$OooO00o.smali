.class public Lz2/na$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/na;->Oooo0o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/na;


# direct methods
.method public constructor <init>(Lz2/na;)V
    .locals 0

    iput-object p1, p0, Lz2/na$OooO00o;->OoooOoO:Lz2/na;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lz2/na$OooO00o;->OoooOoO:Lz2/na;

    invoke-virtual {v0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "appDayStatisFree"

    invoke-static {v1, v0}, Lz2/ae;->OooOoo(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string v6, "yyyy-MM-dd"

    invoke-static {v2, v3, v6}, Lz2/ae;->Oooo0(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object v6

    iget-object v0, p0, Lz2/na$OooO00o;->OoooOoO:Lz2/na;

    invoke-virtual {v0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v7

    const/4 v8, 0x5

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Lz2/mc;->OooO(Landroid/content/Context;IIJ)V

    iget-object v0, p0, Lz2/na$OooO00o;->OoooOoO:Lz2/na;

    invoke-virtual {v0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lz2/ae;->Oooo0OO(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {v2}, Lz2/ae;->Oooo0O0(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    iget-object v2, p0, Lz2/na$OooO00o;->OoooOoO:Lz2/na;

    invoke-static {v2, v0, v1}, Lz2/na;->OooOo00(Lz2/na;J)V

    return-void
.end method
