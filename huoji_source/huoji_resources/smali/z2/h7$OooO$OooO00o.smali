.class public Lz2/h7$OooO$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/h7$OooO;->OooO00o(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/ba;

.field public final synthetic OoooOoo:Lz2/h7$OooO;


# direct methods
.method public constructor <init>(Lz2/h7$OooO;Lz2/ba;)V
    .locals 0

    iput-object p1, p0, Lz2/h7$OooO$OooO00o;->OoooOoo:Lz2/h7$OooO;

    iput-object p2, p0, Lz2/h7$OooO$OooO00o;->OoooOoO:Lz2/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lz2/h7$OooO$OooO00o;->OoooOoO:Lz2/ba;

    invoke-virtual {p1}, Lz2/ba;->dismiss()V

    return-void
.end method
