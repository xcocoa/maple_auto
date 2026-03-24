.class public abstract Lz2/rf0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public OoooOoO:Lz2/sf0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract OooO00o(Lz2/sf0;Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lz2/rf0;->OoooOoO:Lz2/sf0;

    invoke-virtual {p0, v0, p1}, Lz2/rf0;->OooO00o(Lz2/sf0;Landroid/view/View;)V

    return-void
.end method
