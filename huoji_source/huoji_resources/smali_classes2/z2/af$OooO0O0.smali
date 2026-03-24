.class public final Lz2/af$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/af;->OooO0Oo(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/af;


# direct methods
.method public constructor <init>(Lz2/af;)V
    .locals 0

    iput-object p1, p0, Lz2/af$OooO0O0;->OoooOoO:Lz2/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lz2/af$OooO0O0;->OoooOoO:Lz2/af;

    invoke-static {v0}, Lz2/af;->OooOO0o(Lz2/af;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/af$OooO0O0;->OoooOoO:Lz2/af;

    invoke-static {v0}, Lz2/af;->OooOO0o(Lz2/af;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
