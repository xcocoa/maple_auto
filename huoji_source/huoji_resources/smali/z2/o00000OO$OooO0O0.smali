.class public Lz2/o00000OO$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oo000o$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/o00000OO;->OooOOO(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;Lz2/o0000Ooo$OooO00o;)Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/oo000o$OooO0O0<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OoooOoO:Ljava/lang/String;

.field public final synthetic OoooOoo:Lz2/o00000OO;


# direct methods
.method public constructor <init>(Lz2/o00000OO;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/o00000OO$OooO0O0;->OoooOoo:Lz2/o00000OO;

    iput-object p2, p0, Lz2/o00000OO$OooO0O0;->OoooOoO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lz2/o00000OO$OooO0O0;->OoooOoo:Lz2/o00000OO;

    iget-object v1, p0, Lz2/o00000OO$OooO0O0;->OoooOoO:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lz2/o00000OO;->OooOOOo(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lz2/o00000OO$OooO0O0;->OooO00o(Landroid/graphics/Bitmap;)V

    return-void
.end method
