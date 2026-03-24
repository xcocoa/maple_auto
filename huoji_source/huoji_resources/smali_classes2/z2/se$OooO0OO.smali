.class public final Lz2/se$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/se;-><init>(Landroid/content/Context;Ljava/lang/String;ILz2/se$OooO0o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/se;


# direct methods
.method public constructor <init>(Lz2/se;)V
    .locals 0

    iput-object p1, p0, Lz2/se$OooO0OO;->OoooOoO:Lz2/se;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lz2/se$OooO0OO;->OoooOoO:Lz2/se;

    iget-object p1, p1, Lz2/se;->OooO0Oo:Lz2/se$OooO0o;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lz2/se$OooO0o;->a(I)V

    :cond_0
    iget-object p1, p0, Lz2/se$OooO0OO;->OoooOoO:Lz2/se;

    invoke-static {p1}, Lz2/se;->OooO0O0(Lz2/se;)V

    return-void
.end method
