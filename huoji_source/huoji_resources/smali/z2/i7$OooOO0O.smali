.class public Lz2/i7$OooOO0O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/i7;->OooOoo0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/ba;

.field public final synthetic OoooOoo:Lz2/i7;


# direct methods
.method public constructor <init>(Lz2/i7;Lz2/ba;)V
    .locals 0

    iput-object p1, p0, Lz2/i7$OooOO0O;->OoooOoo:Lz2/i7;

    iput-object p2, p0, Lz2/i7$OooOO0O;->OoooOoO:Lz2/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lz2/i7$OooOO0O;->OoooOoO:Lz2/ba;

    invoke-virtual {p1}, Lz2/ba;->dismiss()V

    return-void
.end method
