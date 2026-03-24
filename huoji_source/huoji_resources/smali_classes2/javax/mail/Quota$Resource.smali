.class public Ljavax/mail/Quota$Resource;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/Quota;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resource"
.end annotation


# instance fields
.field public limit:J

.field public name:Ljava/lang/String;

.field public usage:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/mail/Quota$Resource;->name:Ljava/lang/String;

    iput-wide p2, p0, Ljavax/mail/Quota$Resource;->usage:J

    iput-wide p4, p0, Ljavax/mail/Quota$Resource;->limit:J

    return-void
.end method
