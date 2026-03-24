.class public Ljavax/mail/internet/ParameterList$Value;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/ParameterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


# instance fields
.field public charset:Ljava/lang/String;

.field public encodedValue:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/mail/internet/ParameterList$1;)V
    .locals 0

    invoke-direct {p0}, Ljavax/mail/internet/ParameterList$Value;-><init>()V

    return-void
.end method
