.class public Lz2/s90$OooO00o;
.super Lz2/w70;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/s90;->OooOOOO(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/Object;

.field public final synthetic OooO0O0:[Ljava/lang/Object;

.field public final synthetic OooO0OO:Lz2/s90;


# direct methods
.method public constructor <init>(Lz2/s90;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iput-object p1, p0, Lz2/s90$OooO00o;->OooO0OO:Lz2/s90;

    iput-object p2, p0, Lz2/s90$OooO00o;->OooO00o:Ljava/lang/Object;

    iput-object p3, p0, Lz2/s90$OooO00o;->OooO0O0:[Ljava/lang/Object;

    invoke-direct {p0}, Lz2/w70;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0O0()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lz2/s90$OooO00o;->OooO0OO:Lz2/s90;

    invoke-static {v0}, Lz2/s90;->OooOO0O(Lz2/s90;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lz2/s90$OooO00o;->OooO00o:Ljava/lang/Object;

    iget-object v2, p0, Lz2/s90$OooO00o;->OooO0O0:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
