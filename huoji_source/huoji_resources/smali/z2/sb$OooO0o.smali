.class public Lz2/sb$OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/gb$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/sb;->OooOoOO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/sb;


# direct methods
.method public constructor <init>(Lz2/sb;)V
    .locals 0

    iput-object p1, p0, Lz2/sb$OooO0o;->OooO00o:Lz2/sb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(I)V
    .locals 5

    iget-object v0, p0, Lz2/sb$OooO0o;->OooO00o:Lz2/sb;

    invoke-static {v0}, Lz2/sb;->OooOo0o(Lz2/sb;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lz2/sb$OooO0o;->OooO00o:Lz2/sb;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->image_add:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
