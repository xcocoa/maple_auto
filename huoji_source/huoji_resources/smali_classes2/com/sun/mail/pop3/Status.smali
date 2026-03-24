.class public Lcom/sun/mail/pop3/Status;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public size:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/pop3/Status;->total:I

    iput v0, p0, Lcom/sun/mail/pop3/Status;->size:I

    return-void
.end method
