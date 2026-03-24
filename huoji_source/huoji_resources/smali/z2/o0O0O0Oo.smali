.class public interface abstract Lz2/o0O0O0Oo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO00o:Ljava/lang/String; = "UTF-8"

.field public static final OooO0O0:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lz2/o0O0O0Oo;->OooO0O0:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public abstract OooO00o(Ljava/security/MessageDigest;)V
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method
