.class public final Lz2/se$OooO0O0;
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
.field public final synthetic OoooOoO:I

.field public final synthetic OoooOoo:Lz2/se;


# direct methods
.method public constructor <init>(Lz2/se;I)V
    .locals 0

    iput-object p1, p0, Lz2/se$OooO0O0;->OoooOoo:Lz2/se;

    iput p2, p0, Lz2/se$OooO0O0;->OoooOoO:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lz2/se$OooO0O0;->OoooOoo:Lz2/se;

    iget-object p1, p1, Lz2/se;->OooO0Oo:Lz2/se$OooO0o;

    if-eqz p1, :cond_1

    iget v0, p0, Lz2/se$OooO0O0;->OoooOoO:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-interface {p1, v1}, Lz2/se$OooO0o;->a(I)V

    :cond_1
    iget-object p1, p0, Lz2/se$OooO0O0;->OoooOoo:Lz2/se;

    invoke-static {p1}, Lz2/se;->OooO0O0(Lz2/se;)V

    return-void
.end method
