.class public final Lz2/tt;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO00o:Z

.field public static final OooO0O0:Ljava/lang/String; = "com.googlecode.tesseract.android"

.field public static final OooO0OO:Ljava/lang/String; = "debug"

.field public static final OooO0Oo:Ljava/lang/String; = ""

.field public static final OooO0o:Ljava/lang/String; = "1.0"

.field public static final OooO0o0:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lz2/tt;->OooO00o:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
