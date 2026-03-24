.class public Lz2/t6$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/t6;->OooOO0(FFIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:F

.field public final synthetic OoooOoo:F

.field public final synthetic Ooooo00:I

.field public final synthetic Ooooo0o:Z

.field public final synthetic OooooO0:Lz2/t6;


# direct methods
.method public constructor <init>(Lz2/t6;FFIZ)V
    .locals 0

    iput-object p1, p0, Lz2/t6$OooO0O0;->OooooO0:Lz2/t6;

    iput p2, p0, Lz2/t6$OooO0O0;->OoooOoO:F

    iput p3, p0, Lz2/t6$OooO0O0;->OoooOoo:F

    iput p4, p0, Lz2/t6$OooO0O0;->Ooooo00:I

    iput-boolean p5, p0, Lz2/t6$OooO0O0;->Ooooo0o:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lz2/t6$OooO0O0;->OooooO0:Lz2/t6;

    iget v1, p0, Lz2/t6$OooO0O0;->OoooOoO:F

    iget v2, p0, Lz2/t6$OooO0O0;->OoooOoo:F

    invoke-static {v0, v1, v2}, Lz2/t6;->OooO(Lz2/t6;FF)V

    iget-object v0, p0, Lz2/t6$OooO0O0;->OooooO0:Lz2/t6;

    iget v1, p0, Lz2/t6$OooO0O0;->Ooooo00:I

    iget-boolean v2, p0, Lz2/t6$OooO0O0;->Ooooo0o:Z

    invoke-virtual {v0, v1, v2}, Lz2/t6;->OooOOO0(IZ)V

    iget-object v0, p0, Lz2/t6$OooO0O0;->OooooO0:Lz2/t6;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
