.class public final synthetic Lz2/v9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic OoooOoO:Lz2/ca;

.field public final synthetic OoooOoo:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lz2/ca;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/v9;->OoooOoO:Lz2/ca;

    iput-object p2, p0, Lz2/v9;->OoooOoo:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lz2/v9;->OoooOoO:Lz2/ca;

    iget-object v1, p0, Lz2/v9;->OoooOoo:Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lz2/ca;->OooOo0(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method
