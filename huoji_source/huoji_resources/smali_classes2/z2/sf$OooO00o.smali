.class public final Lz2/sf$OooO00o;
.super Lz2/nf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/sf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lz2/nf;-><init>()V

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "void"

    invoke-virtual {p0, v2, v0, v1}, Lz2/nf;->OooO0OO(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "boolean"

    invoke-virtual {p0, v2, v0, v1}, Lz2/nf;->OooO0OO(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "byte"

    invoke-virtual {p0, v2, v0, v1}, Lz2/nf;->OooO0OO(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "char"

    invoke-virtual {p0, v2, v0, v1}, Lz2/nf;->OooO0OO(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "int"

    invoke-virtual {p0, v2, v0, v1}, Lz2/nf;->OooO0OO(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "long"

    invoke-virtual {p0, v2, v0, v1}, Lz2/nf;->OooO0OO(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "float"

    invoke-virtual {p0, v2, v0, v1}, Lz2/nf;->OooO0OO(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "double"

    invoke-virtual {p0, v2, v0, v1}, Lz2/nf;->OooO0OO(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    const-class v0, Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "String"

    invoke-virtual {p0, v2, v0, v1}, Lz2/nf;->OooO0OO(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    return-void
.end method
