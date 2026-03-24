.class public Lz2/f8$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/f8;->OooO00o([Ljava/lang/Void;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Lz2/f8;


# direct methods
.method public constructor <init>(Lz2/f8;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/f8$OooO00o;->OooO0O0:Lz2/f8;

    iput-object p2, p0, Lz2/f8$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0xffff

    and-int/2addr v0, p1

    shr-int/lit8 p1, p1, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenShotDone -->\u3000width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lz2/c9;->OooOO0O(IILcom/google/protobuf/ByteString;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 p2, 0x3eb

    const/4 v0, 0x6

    if-eqz p1, :cond_0

    iget-object v1, p0, Lz2/f8$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {p1, v1}, Lz2/j4;->OooOo00(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lz2/j7;->OooO0O0()Lz2/j7;

    move-result-object p1

    iget-object v1, p0, Lz2/f8$OooO00o;->OooO00o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lz2/j7;->OooO0O0()Lz2/j7;

    move-result-object p1

    const-string v1, ""

    :goto_0
    invoke-virtual {p1, v0, p2, v1}, Lz2/j7;->OooO0oO(IILjava/lang/String;)V

    return-void
.end method

.method public onScreenShotFailed(I)V
    .locals 3

    invoke-static {}, Lz2/j7;->OooO0O0()Lz2/j7;

    move-result-object p1

    const/4 v0, 0x6

    const/16 v1, 0x3eb

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lz2/j7;->OooO0oO(IILjava/lang/String;)V

    return-void
.end method
