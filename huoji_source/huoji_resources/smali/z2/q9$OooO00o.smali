.class public Lz2/q9$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/q9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO00o"
.end annotation


# instance fields
.field private OoooOoO:I

.field public final synthetic OoooOoo:Lz2/q9;


# direct methods
.method public constructor <init>(Lz2/q9;I)V
    .locals 0

    iput-object p1, p0, Lz2/q9$OooO00o;->OoooOoo:Lz2/q9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lz2/q9$OooO00o;->OoooOoO:I

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lz2/q9$OooO00o;->OoooOoo:Lz2/q9;

    invoke-static {p1}, Lz2/q9;->OooO00o(Lz2/q9;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lz2/q9$OooO00o;->OoooOoO:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-virtual {p1, p2}, Lcom/cyjh/elfin/entity/ScriptLog;->setSelect(Z)V

    return-void
.end method
