.class public Lz2/v5$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/v5;->OooO0Oo(Landroid/app/Activity;Lz2/u5$OooO00o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Landroid/app/Activity;

.field public final synthetic OoooOoo:Lz2/u5$OooO00o;

.field public final synthetic Ooooo00:Lz2/v5;


# direct methods
.method public constructor <init>(Lz2/v5;Landroid/app/Activity;Lz2/u5$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lz2/v5$OooO00o;->Ooooo00:Lz2/v5;

    iput-object p2, p0, Lz2/v5$OooO00o;->OoooOoO:Landroid/app/Activity;

    iput-object p3, p0, Lz2/v5$OooO00o;->OoooOoo:Lz2/u5$OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lz2/v5$OooO00o;->Ooooo00:Lz2/v5;

    iget-object v1, p0, Lz2/v5$OooO00o;->OoooOoO:Landroid/app/Activity;

    iget-object v2, p0, Lz2/v5$OooO00o;->OoooOoo:Lz2/u5$OooO00o;

    invoke-static {v0, v1, v2}, Lz2/v5;->OooO00o(Lz2/v5;Landroid/app/Activity;Lz2/u5$OooO00o;)V

    return-void
.end method
