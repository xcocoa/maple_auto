.class public Lz2/s4;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO00o:Ljava/lang/String;

.field private static OooO0O0:Landroid/widget/Toast;

.field private static OooO0OO:J

.field private static OooO0Oo:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lz2/s4;->OooO0O0:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lz2/s4;->OooO0O0:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lz2/s4;->OooO0OO:J

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lz2/s4;->OooO0Oo:J

    sget-object p0, Lz2/s4;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-wide p0, Lz2/s4;->OooO0Oo:J

    sget-wide v0, Lz2/s4;->OooO0OO:J

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_2

    goto :goto_0

    :cond_1
    sput-object p1, Lz2/s4;->OooO00o:Ljava/lang/String;

    sget-object p0, Lz2/s4;->OooO0O0:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object p0, Lz2/s4;->OooO0O0:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    sget-wide p0, Lz2/s4;->OooO0Oo:J

    sput-wide p0, Lz2/s4;->OooO0OO:J

    return-void
.end method
