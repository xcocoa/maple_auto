.class public Lz2/z9$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/z9;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/z9;


# direct methods
.method public constructor <init>(Lz2/z9;)V
    .locals 0

    iput-object p1, p0, Lz2/z9$OooO00o;->OoooOoO:Lz2/z9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lz2/z9$OooO00o;->OoooOoO:Lz2/z9;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
