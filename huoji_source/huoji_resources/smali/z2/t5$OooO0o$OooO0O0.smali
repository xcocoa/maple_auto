.class public Lz2/t5$OooO0o$OooO0O0;
.super Lz2/u5$OooO00o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/t5$OooO0o;->OooOO0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:I

.field public final synthetic OooO0O0:Lz2/t5$OooO0o;


# direct methods
.method public constructor <init>(Lz2/t5$OooO0o;I)V
    .locals 0

    iput-object p1, p0, Lz2/t5$OooO0o$OooO0O0;->OooO0O0:Lz2/t5$OooO0o;

    iput p2, p0, Lz2/t5$OooO0o$OooO0O0;->OooO00o:I

    invoke-direct {p0}, Lz2/u5$OooO00o;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/t5$OooO0o$OooO0O0;->OooO0O0:Lz2/t5$OooO0o;

    invoke-static {v0}, Lz2/t5$OooO0o;->OooO0oO(Lz2/t5$OooO0o;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/t5$OooO0o$OooO0O0;->OooO0O0:Lz2/t5$OooO0o;

    iget v1, p0, Lz2/t5$OooO0o$OooO0O0;->OooO00o:I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lz2/t5$OooO0o;->OooO0oo(Lz2/t5$OooO0o;Landroid/app/Activity;IZ)V

    :cond_0
    return-void
.end method
